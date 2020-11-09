<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TextAnalysis extends Model
{
    use HasFactory;

    protected $table = 'text_analysis';

    protected $fillable = [
        'ticket_interaction_id',
        'text',
        'sadness',
        'joy',
        'fear',
        'disgust',
        'anger',
        'feelings_score',
        'feelings_label'
    ];
}
