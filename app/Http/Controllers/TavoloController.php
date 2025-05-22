<?php

namespace App\Http\Controllers;

use App\Models\Tavolo;
use Illuminate\Http\Request;

class TavoloController extends Controller
{
    // Metodo per ottenere tutti i tavoli con i loro ordini
    public function index()
    {
        // Eager load della relazione "ordini"
        $tavoli = Tavolo::with('ordini')->get();

        return response()->json($tavoli);
    }

    // Metodo per ottenere un tavolo specifico con i suoi ordini
    public function show($id)
    {
        // Eager load della relazione "ordini"
        $tavolo = Tavolo::with('ordini')->find($id);

        if (!$tavolo) {
            return response()->json(['message' => 'Tavolo non trovato'], 404);
        }

        return response()->json($tavolo);
    }

    // Metodo per creare un nuovo tavolo
    public function store(Request $request)
    {
        $request->validate([
            'numero_tavolo'   => 'required|integer|unique:tavoli,numero_tavolo',
        ]);
        
        $tavolo = Tavolo::create([
            'numero_tavolo'  => $request->numero_tavolo,
            'numero_coperti' => 0, // inizializza a 0
        ]);

        return response()->json($tavolo, 201);
    }

    // Metodo per aggiornare un tavolo esistente
    public function update(Request $request, $id)
    {
        $tavolo = Tavolo::find($id);

        if (!$tavolo) {
            return response()->json(['message' => 'Tavolo non trovato'], 404);
        }

        $request->validate([
            'numero_tavolo'   => 'required|integer',
            'numero_coperti'  => 'required|integer|min:0',
        ]);

        $tavolo->update([
            'numero_tavolo'   => $request->numero_tavolo,
            'numero_coperti'  => $request->numero_coperti,
        ]);

        return response()->json($tavolo);
    }

    // Metodo per eliminare un tavolo
    public function destroy($id)
    {
        $tavolo = Tavolo::find($id);

        if (!$tavolo) {
            return response()->json(['message' => 'Tavolo non trovato'], 404);
        }

        $tavolo->delete();
        return response()->json(['message' => 'Tavolo eliminato con successo']);
    }

    // Metodo per aggiornare il numero di coperti di un tavolo
    public function updateCoperti(Request $request, $id)
    {
        $tavolo = Tavolo::find($id);

        if (!$tavolo) {
            return response()->json(['message' => 'Tavolo non trovato'], 404);
        }

        $request->validate([
            'coperti' => 'required|integer|min:0',
        ]);

        $tavolo->update([
            'numero_coperti' => $request->coperti,
        ]);

        return response()->json([
            'message' => 'Numero di coperti aggiornato con successo',
            'tavolo'  => $tavolo,
        ]);
    }
}
