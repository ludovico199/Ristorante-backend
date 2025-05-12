<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tipologia;
use Illuminate\Http\Response;

class Tipologie_Controller extends Controller
{
    public function index()
    {
        return response()->json(Tipologia::all(), 200);
    }



    public function store(Request $request)
    {
        $validated = $request->validate([
            'descrittivo' => 'required|string|max:255',
            'colore' => 'nullable|string|max:7',
            'cucina' => 'required|boolean',
        ]);

        $tipologia = Tipologia::create($validated);
        return response()->json($tipologia, Response::HTTP_CREATED);
    }

    public function update(Request $request, $id)
    {
        $tipologia = Tipologia::findOrFail($id);

        $validated = $request->validate([
            'descrittivo' => 'required|string|max:255',
            'colore' => 'nullable|string|max:7',
            'cucina' => 'required|boolean',
        ]);

        $tipologia->update($validated);
        return response()->json($tipologia);
    }

    public function destroy($id)
    {
        Tipologia::destroy($id);
        return response()->json(null, 204);
    }

}
