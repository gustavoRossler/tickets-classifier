<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDateCreateToTicketsInteractions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $driver = Schema::connection($this->getConnection())->getConnection()->getDriverName();
        Schema::table('tickets_interactions', function (Blueprint $table) use ($driver) {
            $column = $table->dateTime('date_create');
            if ($driver == 'sqlite') {
                $column->nullable();
            }
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tickets_interactions', function (Blueprint $table) {
            //
        });
    }
}
