<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateTotalePrezzoInOrdiniTable extends Migration
{
    public function up()
    {
        Schema::table('ordini', function (Blueprint $table) {
            $table->decimal('totale_prezzo', 8, 2)->change();
        });
    }

    public function down()
    {
        Schema::table('ordini', function (Blueprint $table) {
            $table->integer('totale_prezzo')->change(); // ripristino
        });
    }
}
