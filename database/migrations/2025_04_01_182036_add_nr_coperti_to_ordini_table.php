<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        Schema::table('ordini', function (Blueprint $table) {
            $table->integer('nr_coperti')->after('stato_ordine_id'); // Aggiunge la colonna dopo `stato_ordine_id`
        });
    }

    public function down()
    {
        Schema::table('ordini', function (Blueprint $table) {
            $table->dropColumn('nr_coperti');
        });
    }
};
