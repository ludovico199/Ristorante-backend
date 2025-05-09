<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Models\OrdineMenu;
use App\Models\Ordine;

class Ordine_Menu_Controller extends Controller
{
    public function store(Request $request)
    {

        Log::info('Richiesta ricevuta:', $request->all());

        $validatedData = $request->validate([
            'numero_coperti' => 'required|integer',
            'stato_ordine' => 'required|integer|exists:stato_ordini,id',
            'tavolo_id' => 'required|integer',
            'menu_items' => 'required|array',
            'menu_items.*.menu_id' => 'required|integer|exists:menu,id',
            'menu_items.*.quantita' => 'required|integer|min:1',
            'menu_items.*.note' => 'nullable|string',
            'menu_items.*.comanda_id' => 'sometimes|nullable|integer',
        ]);

        $ordine = Ordine::create([
            'nr_ordine' => uniqid(),
            'tavolo_id' => $validatedData['tavolo_id'],
            'stato_ordine_id' => $validatedData['stato_ordine'],
            'nr_coperti' => $validatedData['numero_coperti'],
        ]);

        foreach ($validatedData['menu_items'] as $item) {
            // 1. controlla anche comanda_id
            $exists = OrdineMenu::where('ordine_id', $ordine->id)
                                ->where('menu_id',  $item['menu_id'])
                                ->where('comanda_id', $item['comanda_id'] ?? null)
                                ->exists();

            if (! $exists) {
                OrdineMenu::create([
                    'ordine_id'  => $ordine->id,
                    'menu_id'    => $item['menu_id'],
                    'quantita'   => $item['quantita'],
                    'comanda_id' => $item['comanda_id'] ?? null,
                    'note'       => $item['note'] ?? null,
                ]);
            } else {
  
                OrdineMenu::where('ordine_id',  $ordine->id)
                          ->where('menu_id',    $item['menu_id'])
                          ->where('comanda_id', $item['comanda_id'] ?? null)
                          ->increment('quantita', $item['quantita']);
            }
        }





        return response()->json([
            'message' => 'Ordine creato con successo',
            'ordine' => $ordine,
        ], 201);
    }

    public function index(Request $request)
{
    $tavoloId = $request->query('tavolo_id');

    $ordini = OrdineMenu::with('menu', 'ordine')
        ->whereHas('ordine', function ($query) use ($tavoloId) {
            $query->where('tavolo_id', $tavoloId)
                  ->where('stato_ordine_id', '!=', 2);
        })
        ->get();

    return response()->json($ordini);
}

}
