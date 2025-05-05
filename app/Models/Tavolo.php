<?php

// app/Models/Tavolo.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tavolo extends Model
{
    use HasFactory;

    protected $table = 'tavoli';

    // Aggiungi 'numero_coperti' alla lista dei campi fillable
    protected $fillable = ['numero_tavolo', 'numero_coperti'];

    public function ordini()
    {
        return $this->hasMany(Ordine::class, 'tavolo_id');
    }
}
