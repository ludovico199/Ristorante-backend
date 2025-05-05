<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tipologia;

class Tipologie_Controller extends Controller
{
    public function index()
    {
        return response()->json(Tipologia::all(), 200);
    }
}
