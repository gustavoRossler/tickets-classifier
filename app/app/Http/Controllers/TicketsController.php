<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;

use \App\Library\TextAnalysis;
use Exception;

class TicketsController extends Controller
{
    public function getList(Request $request)
    {
        $orderColumn = $request->orderColumn ?? 'id';
        $orderDirection = $request->orderDirection ?? 'asc';
        $pageNumber = $request->pageNumber ?? 1;
        $pageSize = $request->pageSize ?? 10;

        if ($orderColumn != 'id') {
            if ($orderColumn != 'date_create' && $orderColumn != 'date_update' && $orderColumn != 'priority') {
                return response()->json([
                    "success" => false,
                    "message" => 'Invalid order column, supported values: date_create | date_update | priority',
                ], 400);
            }
        }

        if ($orderDirection != 'asc' && $orderDirection != 'desc') {
            return response()->json([
                "success" => false,
                "message" => 'Invalid order direction, supported values: asc | desc',
            ], 400);
        }

        $filterInitialDate = $request->filterInitialDate ?? '';
        $filterFinalDate = $request->filterFinalDate ?? '';
        $filterPriority = $request->filterPriority ?? '';

        if ($filterPriority) {
            if ($filterPriority != 1 && $filterPriority != 2) {
                return response()->json([
                    "success" => false,
                    "message" => 'Invalid priority filter value, supported values: 1 = high priority | 2 = normal priority',
                ], 400);
            }
        }

        if ($filterInitialDate) {
            if (!\DateTime::createFromFormat('Y-m-d H:i:s', $filterInitialDate)) {
                return response()->json([
                    "success" => false,
                    "message" => 'Invalid initial date filter value, date must be valid, and in the format Y-m-d H:i:s',
                ], 400);
            }
        }

        if ($filterFinalDate) {
            if (!\DateTime::createFromFormat('Y-m-d H:i:s', $filterFinalDate)) {
                return response()->json([
                    "success" => false,
                    "message" => 'Invalid final date filter value, date must be valid, and in the format Y-m-d H:i:s',
                ], 400);
            }
        }

        try {
            $totalRows = $tickets = \App\Models\Ticket::where(function ($query) use ($filterInitialDate, $filterFinalDate, $filterPriority) {
                if ($filterInitialDate) {
                    $query->where('date_create', '>=', $filterInitialDate);
                }
                if ($filterFinalDate) {
                    $query->where('date_create', '<=', $filterFinalDate);
                }
                if ($filterPriority) {
                    $query->where('priority', $filterPriority);
                }
            })
                ->count();

            $tickets = \App\Models\Ticket::with('interactions')
                ->with('interactions.textAnalysis')
                ->where(function ($query) use ($filterInitialDate, $filterFinalDate, $filterPriority) {
                    if ($filterInitialDate) {
                        $query->where('date_create', '>=', $filterInitialDate);
                    }
                    if ($filterFinalDate) {
                        $query->where('date_create', '<=', $filterFinalDate);
                    }
                    if ($filterPriority) {
                        $query->where('priority', $filterPriority);
                    }
                })
                ->orderBy($orderColumn, $orderDirection)
                ->offset($pageSize * ($pageNumber - 1))
                ->limit($pageSize)
                ->get();

            return response()->json([
                'success' => true,
                'totalRows' => $totalRows,
                'pageNumber' => $pageNumber,
                'pageSize' => $pageSize,
                'totalPages' => ceil($totalRows / $pageSize),
                'tickets' => $tickets
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                "success" => false,
                "message" => $e->getMessage(),
            ], 400);
        }
    }

    public function uploadFile(Request $request)
    {
        try {
            if (!Storage::exists('public/uploads/')) {
                Storage::makeDirectory('public/uploads/');
            }

            $validator = Validator::make(
                $request->all(),
                [
                    'file' => 'required|max:2048',
                ]
            );

            if ($validator->fails()) {
                return response()->json(['error' => $validator->errors()], 401);
            }

            if ($files = $request->file('file')) {

                //store file into document folder
                $file = $request->file->store('public/uploads');

                $importedData = $this->importJsonData(Storage::get($file));

                return response()->json([
                    "success" => true,
                    "message" => "File successfully uploaded",
                    "importedData" => $importedData
                ], 201);
            }
        } catch (\Exception $e) {
            return response()->json([
                "success" => false,
                "message" => $e->getMessage(),
            ], 400);
        }
    }

    public function importJsonData($jsonData)
    {
        if (!$this->isValidJson($jsonData)) {
            throw new \Exception('Invalid json data in the file');
        }

        $data = json_decode($jsonData);

        $importedData = [];

        foreach ($data as $obj) {
            $ticket = \App\Models\Ticket::create([
                'ticket_id' => $obj->TicketID,
                'category_id' => $obj->CategoryID,
                'customer_id' => $obj->CustomerID,
                'customer_name' => $obj->CustomerName,
                'customer_email' => $obj->CustomerEmail,
                'date_create' => $obj->DateCreate,
                'date_update' => $obj->DateUpdate
            ]);

            foreach ($obj->Interactions as $objInteraction) {
                $interaction = $ticket->interactions()->create([
                    'ticket_id' => $ticket->id,
                    'subject' => $objInteraction->Subject,
                    'message' => $objInteraction->Message,
                    'sender' => $objInteraction->Sender,
                    'date_create' => $obj->DateCreate
                ]);

                if (strtolower($objInteraction->Sender) == 'customer') {
                    $textAnalysis = TextAnalysis::getResults($objInteraction->Subject . ' - ' . $objInteraction->Message);
                    \App\Models\TextAnalysis::create([
                        'ticket_interaction_id' => $interaction->id,
                        'text' => $objInteraction->Subject . ' - ' . $objInteraction->Message,
                        'sadness' => $textAnalysis->emotions->sadness,
                        'joy' => $textAnalysis->emotions->joy,
                        'fear' => $textAnalysis->emotions->fear,
                        'disgust' => $textAnalysis->emotions->disgust,
                        'anger' => $textAnalysis->emotions->anger,
                        'feelings_score' => $textAnalysis->sentiment->score,
                        'feelings_label' => $textAnalysis->sentiment->label
                    ]);

                    if ($textAnalysis->sentiment->score < 0) {
                        $ticket->priority = 1;
                        $ticket->save();
                    }
                }
            }

            $ticket->interactions;
            $importedData[] = $ticket;
        }

        return $importedData;
    }

    public function isValidJson($json)
    {
        json_decode($json);
        return (json_last_error() == JSON_ERROR_NONE);
    }
}
