<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::table('ordini', function (Blueprint $table) {
            $table->integer('totale_prezzo')->after('nr_coperti')->default(0); // prezzo in centesimi
            $table->json('totale_items')->nullable()->after('totale_prezzo'); // array di piatti o ID
        });
    }

    public function down(): void
    {
        Schema::table('ordini', function (Blueprint $table) {
            $table->dropColumn(['totale_prezzo', 'totale_items']);
        });
    }
};
