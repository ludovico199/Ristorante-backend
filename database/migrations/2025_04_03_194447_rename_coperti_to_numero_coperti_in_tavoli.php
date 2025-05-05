<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RenameCopertiToNumeroCopertiInTavoli extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tavoli', function (Blueprint $table) {
            $table->renameColumn('coperti', 'numero_coperti');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tavoli', function (Blueprint $table) {
            $table->renameColumn('numero_coperti', 'coperti');
        });
    }
}
