<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;

    // Aggiungo 'quantita' al campo $fillable
    protected $fillable = [
        'nome',
        'tipologia_id',
        'prezzo',
        'quantita',    // ← nuovo
    ];

    protected $table = 'Menu';

    public function tipologia()
    {
        return $this->belongsTo(Tipologia::class, 'tipologia_id');
    }

    public function ordini()
    {
        return $this->belongsToMany(Ordine::class, 'ordine_menu')
                    ->withPivot('quantita', 'comanda_id')
                    ->withTimestamps();
    }
}
