<?php

namespace Database\Seeders;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Tavolo;

class TavoloSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Tavolo::insert([
            ['numero_tavolo' => 1, 'numero_coperti' => 0],
            ['numero_tavolo' => 2, 'numero_coperti' => 0],
            ['numero_tavolo' => 3, 'numero_coperti' => 0],
            ['numero_tavolo' => 4, 'numero_coperti' => 8],
        ]);
    }
}
