<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TicketInteraction extends Model
{
    use HasFactory;

    protected $table = 'tickets_interactions';

    protected $fillable = [
        'ticket_id',
        'subject',
        'message',
        'sender',
        'date_create'
    ];

    public function textAnalysis()
    {
        return $this->hasOne('\App\Models\TextAnalysis', 'ticket_interaction_id', 'id');
    }
}
