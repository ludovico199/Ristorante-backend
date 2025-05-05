<?php

// app/Models/Tipologia.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tipologia extends Model
{
    use HasFactory;

    protected $fillable = ['descrittivo'];

    protected $table = 'tipologie';

    public function menus()
    {
        return $this->hasMany(Menu::class, 'tipologia_id');
    }
}
