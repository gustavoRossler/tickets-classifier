<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use Tests\TestCase;

class TicketsTest extends TestCase
{
    use DatabaseMigrations;
    use RefreshDatabase;

    public function test_can_get_list()
    {
        $response = $this->get('/api/tickets');

        $response->assertStatus(200);

        $response->assertJsonFragment([
            'success' => true
        ]);

        $response->assertJsonStructure([
            'tickets' => [],
        ]);
    }

    public function test_can_upload_file()
    {
        $uploadedFile = new UploadedFile(storage_path('test/tickets.json'), 'test-file.json', 'application/json', null, TRUE);

        $response = $this->json('POST', '/api/upload-file', [
            'file' => $uploadedFile,
        ]);

        Storage::assertExists('public/uploads/' . $uploadedFile->hashName());

        Storage::delete('public/uploads/' . $uploadedFile->hashName());

        $response->assertStatus(201);

        $response->assertJsonFragment([
            'success' => true
        ]);

        $response->assertJsonStructure([
            'importedData' => [
                [
                    'id',
                    'ticket_id',
                    'category_id',
                    'customer_id',
                    'customer_name',
                    'customer_email',
                    'date_create',
                    'date_update',
                    'updated_at',
                    'created_at',
                    'interactions' => []
                ]
            ],
        ]);
    }
}
