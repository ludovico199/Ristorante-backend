<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        Schema::table('tavoli', function (Blueprint $table) {
            $table->dropColumn('numero_coperti');
        });
    }

    public function down()
    {
        Schema::table('tavoli', function (Blueprint $table) {
            $table->integer('numero_coperti')->after('numero_tavolo');
        });
    }
};
