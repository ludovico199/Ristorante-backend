<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTavoliTable extends Migration
{
    public function up()
    {
        Schema::create('tavoli', function (Blueprint $table) {
            $table->id();
            $table->integer('numero_tavolo');
            $table->integer('numero_coperti');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('tavoli');
    }
}
