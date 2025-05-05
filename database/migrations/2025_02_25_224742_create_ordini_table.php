<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdiniTable extends Migration
{
    public function up()
    {
        Schema::create('ordini', function (Blueprint $table) {
            $table->id();
            $table->integer('nr_ordine');
            $table->foreignId('tavolo_id')->constrained('tavoli');
            $table->foreignId('stato_ordine_id')->constrained('stato_ordini');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('ordini');
    }
}
