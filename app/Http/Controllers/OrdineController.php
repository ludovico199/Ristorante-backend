<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ordine;
use App\Models\OrdineMenu;

class OrdineController extends Controller
{
    // Metodo per chiudere un ordine
    public function chiudiOrdine($id)
    {
        $ordine = Ordine::findOrFail($id);
        $ordine->stato_ordine_id = 2; // Stato chiuso
        $ordine->save();

        return response()->json(['success' => true]);
    }

    public function getTuttiGliOrdini()
    {
        $ordini = Ordine::with(['menu', 'statoOrdine', 'ordineMenu'])
            ->where('stato_ordine_id', '!=', 2)
            ->get()
            ->map(function ($ordine) {
                // ✅ Filtra i piatti del menu dove la tipologia ha cucina = true
                $ordine->menu = $ordine->menu->filter(function ($menuItem) {
                    return optional($menuItem->tipologia)->cucina === 1;
                })->values();

                return $ordine;
            });

        return response()->json($ordini);
    }

    public function getOrdiniByTavolo(Request $request)
    {
        $tavoloId = $request->query('tavolo_id');

        if (!$tavoloId) {
            return response()->json(['error' => 'Parametro tavolo_id mancante'], 400);
        }

        $ordini = Ordine::with(['menu', 'statoOrdine'])
            ->where('tavolo_id', $tavoloId)
            ->get();

        return response()->json($ordini);
    }
}
