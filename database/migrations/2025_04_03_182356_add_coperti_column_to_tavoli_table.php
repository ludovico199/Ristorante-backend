<?php

// Migrazione generata per aggiungere la colonna "coperti"

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCopertiColumnToTavoliTable extends Migration
{
    public function up()
    {
        // Aggiungi la colonna "coperti" alla tabella "tavoli"
        Schema::table('tavoli', function (Blueprint $table) {
            $table->integer('coperti')->default(0); // Aggiungi la colonna coperti
        });
    }

    public function down()
    {
        // Rimuovi la colonna "coperti" nel caso si voglia fare un rollback
        Schema::table('tavoli', function (Blueprint $table) {
            $table->dropColumn('coperti');
        });
    }
}
