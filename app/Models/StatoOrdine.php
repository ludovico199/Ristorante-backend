<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StatoOrdine extends Model
{
    use HasFactory;
    protected $table = 'stato_ordini';
    protected $fillable = ['descrittivo'];

    public function ordini()
    {
        return $this->hasMany(Ordine::class, 'stato_ordine_id');
    }
}
