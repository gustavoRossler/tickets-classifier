<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        $ticketsSql = base_path('database/tickets.sql');
        DB::unprepared(file_get_contents($ticketsSql));

        $ticketsInteractionsSql = base_path('database/tickets_interactions.sql');
        DB::unprepared(file_get_contents($ticketsInteractionsSql));

        $textAnalysisSql = base_path('database/text_analysis.sql');
        DB::unprepared(file_get_contents($textAnalysisSql));
    }
}
