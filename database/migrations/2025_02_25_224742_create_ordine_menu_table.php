<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdineMenuTable extends Migration
{
    public function up()
    {
        Schema::create('ordine_menu', function (Blueprint $table) {
            $table->foreignId('ordine_id')->constrained('ordini');
            $table->foreignId('menu_id')->constrained('menu');
            $table->integer('quantita');
            $table->foreignId('comanda_id')->constrained('comande');
            $table->primary(['ordine_id', 'menu_id']);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('ordine_menu');
    }
}
