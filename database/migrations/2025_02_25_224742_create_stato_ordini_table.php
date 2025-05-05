<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStatoOrdiniTable extends Migration
{
    public function up()
    {
        Schema::create('stato_ordini', function (Blueprint $table) {
            $table->id();
            $table->string('descrittivo');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('stato_ordini');
    }
}
