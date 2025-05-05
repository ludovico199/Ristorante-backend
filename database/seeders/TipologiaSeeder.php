<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Tipologia;

class TipologiaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $tipologie = [
            'Antipasti', 'Primi', 'Secondi', 'Dolci', 'Bevande', 'Vini', 'Caffè'
        ];

        foreach ($tipologie as $tipologia) {
            Tipologia::create(['descrittivo' => $tipologia]);
        }
    }
}
