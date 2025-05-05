<?php

use App\Http\Controllers\TavoloController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\Tipologie_Controller;
use App\Http\Controllers\Ordine_Menu_Controller;
use App\Http\Controllers\OrdineController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::get('tavoli', [TavoloController::class, 'index']);
Route::apiResource('menu', MenuController::class);
Route::get('/tipologie', [Tipologie_Controller::class, 'index']);
Route::post('/crea-ordine', [Ordine_Menu_Controller::class, 'store']);
Route::put('/coperti/{id}', [TavoloController::class, 'updateCoperti']);
Route::get('/ordini', [Ordine_Menu_Controller::class, 'index']);
Route::put('/ordini/{id}/chiudi', [OrdineController::class, 'chiudiOrdine']);
Route::get('/ordini-per-tavolo', [OrdineController::class, 'getOrdiniByTavolo']);
Route::get('/tutti-gli-ordini', [OrdineController::class, 'getTuttiGliOrdini']);
