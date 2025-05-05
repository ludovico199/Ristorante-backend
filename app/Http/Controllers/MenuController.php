<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    // Metodo per ottenere tutti gli elementi del menu
    public function index()
    {
        $menu = Menu::all();
        return response()->json($menu);
    }

    // Metodo per ottenere un elemento specifico del menu
    public function show($id)
    {
        $menu = Menu::find($id);

        if (!$menu) {
            return response()->json(['message' => 'Elemento non trovato'], 404);
        }

        return response()->json($menu);
    }

    // Metodo per creare un nuovo elemento del menu
    public function store(Request $request)
    {
        $request->validate([
            'nome' => 'required|string|max:255',
            'tipologia_id' => 'required|exists:tipologie,id',
        ]);

        $menu = Menu::create([
            'nome' => $request->nome,
            'tipologia_id' => $request->tipologia_id,
        ]);

        return response()->json($menu, 201);
    }

    // Metodo per aggiornare un elemento del menu esistente
    public function update(Request $request, $id)
    {
        $menu = Menu::find($id);

        if (!$menu) {
            return response()->json(['message' => 'Elemento non trovato'], 404);
        }

        $request->validate([
            'nome' => 'sometimes|string|max:255',
            'prezzo' => 'sometimes|numeric|min:0',
            'tipologia_id' => 'sometimes|exists:tipologie,id',
        ]);
        
        $menu->update($request->only(['nome', 'prezzo', 'tipologia_id']));


        return response()->json($menu);
    }

    // Metodo per eliminare un elemento del menu
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
