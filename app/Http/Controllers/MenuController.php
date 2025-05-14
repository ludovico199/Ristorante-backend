<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    // GET /api/menu
    public function index()
    {
        $menu = Menu::all();
        return response()->json($menu);
    }

    // GET /api/menu/{id}
    public function show($id)
    {
        $menu = Menu::find($id);

        if (!$menu) {
            return response()->json(['message' => 'Elemento non trovato'], 404);
        }

        return response()->json($menu);
    }

    // POST /api/menu
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nome'         => 'required|string|max:255',
            'prezzo'       => 'required|numeric|min:0',
            'quantita'     => 'required|integer|min:0',       // ← validazione
            'tipologia_id' => 'required|exists:tipologie,id',
        ]);

        $menu = Menu::create($validated);

        return response()->json($menu, 201);
    }

    // PUT /api/menu/{id}
    public function update(Request $request, $id)
    {
        $menu = Menu::find($id);

        if (!$menu) {
            return response()->json(['message' => 'Elemento non trovato'], 404);
        }

        $validated = $request->validate([
            'nome'         => 'sometimes|string|max:255',
            'prezzo'       => 'sometimes|numeric|min:0',
            'quantita'     => 'sometimes|integer|min:0',       // ← validazione
            'tipologia_id' => 'sometimes|exists:tipologie,id',
        ]);

        $menu->update($validated);

        return response()->json($menu);
    }

    // DELETE /api/menu/{id}
    public function destroy($id)
    {
        $menu = Menu::find($id);

        if (!$menu) {
            return response()->json(['message' => 'Elemento non trovato'], 404);
        }

        $menu->delete();
        return response()->json(['message' => 'Elemento eliminato con successo']);
    }
}
