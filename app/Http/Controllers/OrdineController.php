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
    $ordini = Ordine::with([
        'menu' => function ($query) {
            $query->whereHas('tipologia', function ($q) {
                $q->where('cucina', true);
            })->with('tipologia'); // 👈 carica solo i menu con tipologia.cucina = true
        },
        'statoOrdine',
        'ordineMenu'
    ])
    ->where('stato_ordine_id', '!=', 2)
    ->get();

    \Log::info('Ordini restituiti:', $ordini->toArray());

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

    public function cronologiaOrdini()
{
    // qui ritorni proprio tutti gli Ordine, incluso stato = 2
    $ordini = Ordine::with('ordineMenu.menu', 'statoOrdine')
                    ->orderBy('created_at', 'desc')
                    ->get();

    return response()->json($ordini);
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
