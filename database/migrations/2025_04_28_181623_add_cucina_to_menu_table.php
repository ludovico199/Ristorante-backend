<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCucinaToMenuTable extends Migration
{
    public function up()
    {
        Schema::table('menu', function (Blueprint $table) {
            // Aggiungi la colonna 'cucina', che può essere 0 o 1
            $table->boolean('cucina')->default(0); // 0 = non cucina, 1 = cucina
        });
    }

    public function down()
    {
        Schema::table('menu', function (Blueprint $table) {
            // Rimuovi la colonna 'cucina' se la migrazione viene annullata
            $table->dropColumn('cucina');
        });
    }
}
