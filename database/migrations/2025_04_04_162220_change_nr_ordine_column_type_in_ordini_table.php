<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('ordini', function (Blueprint $table) {
            $table->string('nr_ordine', 255)->change(); // Cambia da int a string
        });
    }

    public function down()
    {
        Schema::table('ordini', function (Blueprint $table) {
            $table->integer('nr_ordine')->change(); // Torna a int se necessario
        });
    }

};
