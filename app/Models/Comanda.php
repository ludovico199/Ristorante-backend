<?php

// app/Models/Comanda.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comanda extends Model
{
    use HasFactory;

    protected $fillable = ['descrittivo'];

    public function ordineMenu()
    {
        return $this->hasMany(OrdineMenu::class, 'comanda_id');
    }
}
