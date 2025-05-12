<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ordine extends Model
{
    use HasFactory;

    protected $table = 'ordini';

    protected $fillable = ['nr_ordine', 'tavolo_id', 'stato_ordine_id', 'nr_coperti'];

    public function tavolo()
    {
        return $this->belongsTo(Tavolo::class, 'tavolo_id');
    }

    public function statoOrdine()
    {
        return $this->belongsTo(StatoOrdine::class, 'stato_ordine_id');
    }

    public function menu()
    {
        return $this->belongsToMany(Menu::class, 'ordine_menu')
                    ->withPivot('quantita', 'comanda_id', 'note')
                    ->withTimestamps()
                    ->with('tipologia'); // 👈 carica la tipologia di ogni piatto
    }

    public function ordineMenu()
    {
        return $this->hasMany(OrdineMenu::class, 'ordine_id');
    }
}
