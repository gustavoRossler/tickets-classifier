<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    use HasFactory;

    protected $table = 'tickets';

    protected $fillable = [
        'category_id',
        'customer_id',
        'customer_name',
        'customer_email',
        'ticket_id',
        'date_create',
        'date_update',
        'priority'
    ];

    public function interactions()
    {
        return $this->hasMany('\App\Models\TicketInteraction', 'ticket_id', 'id');
    }
}
