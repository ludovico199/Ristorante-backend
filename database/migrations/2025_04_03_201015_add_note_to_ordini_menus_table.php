<?php

// database/migrations/xxxx_xx_xx_xxxxxx_add_note_to_ordini_menus_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNoteToOrdiniMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ordine_menu', function (Blueprint $table) {
            $table->text('note')->nullable(); // Aggiunge la colonna 'note' di tipo text
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('ordine_menu', function (Blueprint $table) {
            $table->dropColumn('note'); // Rimuove la colonna 'note' se la migrazione viene annullata
        });
    }
}
