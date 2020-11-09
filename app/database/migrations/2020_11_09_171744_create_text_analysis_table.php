<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTextAnalysisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('text_analysis', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('ticket_interaction_id');
            $table->foreign('ticket_interaction_id')->references('id')->on('tickets_interactions');
            $table->text('text');
            $table->double('sadness', 1, 5);
            $table->double('joy', 1, 5);
            $table->double('fear', 1, 5);
            $table->double('disgust', 1, 5);
            $table->double('anger', 1, 5);
            $table->double('feelings_score', 1, 5);
            $table->string('feelings_label');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('text_analysis');
    }
}
