<?php

namespace App\Http\Controllers;

use App\Models\Tavolo;
use Illuminate\Http\Request;

class TavoloController extends Controller
{
    // Ritorna tutti i tavoli
    public function index()
    {
        return response()->json(Tavolo::all());
    }

    // Crea un nuovo tavolo
    public function store(Request $request)
    {
        $request->validate([
            'numero_tavolo' => 'required|integer|unique:tavoli,numero_tavolo',
        ]);

        $tavolo = Tavolo::create([
            'numero_tavolo' => $request->numero_tavolo,
        ]);

        return response()->json($tavolo, 201);
    }

    // Aggiorna un tavolo esistente
    public function update(Request $request, $id)
    {
        $tavolo = Tavolo::find($id);

        if (!$tavolo) {
            return response()->json(['message' => 'Tavolo non trovato'], 404);
        }

        $request->validate([
            'numero_tavolo' => 'required|integer|unique:tavoli,numero_tavolo,' . $id,
        ]);

        $tavolo->update([
            'numero_tavolo' => $request->numero_tavolo,
        ]);

        return response()->json($tavolo);
    }

    // Elimina un tavolo
    public function destroy($id)
    {
        $tavolo = Tavolo::find($id);

        if (!$tavolo) {
            return response()->json(['message' => 'Tavolo non trovato'], 404);
        }

        $tavolo->delete();

        return response()->json(['message' => 'Tavolo eliminato con successo']);
    }
}
