<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Menu;
use App\Models\Tipologia;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $tipologie = Tipologia::all();

        $menuItems = [
            'Bruschette' => 5.00, 'Caprese' => 7.00, 'Prosciutto e Melone' => 8.50,
            'Lasagna' => 10.00, 'Risotto ai Funghi' => 11.00, 'Tagliatelle al Ragù' => 9.00,
            'Bistecca alla Fiorentina' => 15.00, 'Pollo al Curry' => 12.00,
            'Pesce Spada alla Griglia' => 13.00, 'Tiramisù' => 5.50, 'Panna Cotta' => 4.00,
            'Cheesecake' => 6.00, 'Acqua Naturale' => 2.00, 'Acqua Frizzante' => 2.00,
            'Coca-Cola' => 2.50, 'Sprite' => 2.50, 'Fanta' => 2.50, 'Vino Rosso' => 15.00,
            'Vino Bianco' => 15.00, 'Espresso' => 1.50, 'Cappuccino' => 2.00,
            'Latte Macchiato' => 3.00, 'Mojito' => 7.50, 'Negroni' => 8.00, 'Spritz' => 6.50,
            'Tagliere di Salumi' => 12.00, 'Insalata di Mare' => 14.00, 'Filetto al Pepe Verde' => 18.00,
            'Carpaccio di Manzo' => 10.00, 'Gnocchi al Pesto' => 9.00
        ];

        foreach ($menuItems as $item => $price) {
            Menu::create([
                'nome' => $item,
                'tipologia_id' => $tipologie->random()->id,
                'prezzo' => $price,
            ]);
        }
    }
}
