<?php

// app/Models/OrdineMenu.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrdineMenu extends Model
{
    protected $table = 'ordine_menu';

    use HasFactory;

    protected $fillable = ['ordine_id', 'menu_id', 'quantita', 'comanda_id', 'note'];

    public function ordine()
    {
        return $this->belongsTo(Ordine::class, 'ordine_id');
    }

    public function menu()
    {
        return $this->belongsTo(Menu::class, 'menu_id');
    }

    public function comanda()
    {
        return $this->belongsTo(Comanda::class, 'comanda_id');
    }
}
