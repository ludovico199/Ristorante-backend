<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('cache', function (Blueprint $table) {
            $table->string('key')->primary();
            $table->mediumText('value');
            $table->integer('expiration');
        });

        Schema::create('cache_locks', function (Blueprint $table) {
            $table->string('key')->primary();
            $table->string('owner');
            $table->integer('expiration');
        });

        Schema::create('comande', function (Blueprint $table) {
            $table->id();
            $table->string('descrittivo');
            $table->timestamps();
        });

        DB::table('comande')->insert([
            ['id' => 1, 'descrittivo' => 'Turno 1', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 2, 'descrittivo' => 'Turno 2', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'descrittivo' => 'Turno 3', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'descrittivo' => 'Turno 4', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'descrittivo' => 'Turno 5', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 6, 'descrittivo' => 'NO',       'created_at' => now(), 'updated_at' => now()],
        ]);

        Schema::create('failed_jobs', function (Blueprint $table) {
            $table->id();
            $table->uuid('uuid')->unique();
            $table->text('connection');
            $table->text('queue');
            $table->longText('payload');
            $table->longText('exception');
            $table->timestamp('failed_at')->useCurrent();
        });

        Schema::create('jobs', function (Blueprint $table) {
            $table->id();
            $table->string('queue');
            $table->longText('payload');
            $table->unsignedTinyInteger('attempts');
            $table->unsignedInteger('reserved_at')->nullable();
            $table->unsignedInteger('available_at');
            $table->unsignedInteger('created_at');
        });

        Schema::create('job_batches', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->string('name');
            $table->integer('total_jobs');
            $table->integer('pending_jobs');
            $table->integer('failed_jobs');
            $table->longText('failed_job_ids');
            $table->mediumText('options')->nullable();
            $table->integer('cancelled_at')->nullable();
            $table->integer('created_at');
            $table->integer('finished_at')->nullable();
        });

        Schema::create('tipologie', function (Blueprint $table) {
            $table->id();
            $table->string('descrittivo');
            $table->timestamps();
            $table->string('colore')->nullable();
            $table->boolean('cucina')->default(false);
        });

        Schema::create('menu', function (Blueprint $table) {
            $table->id();
            $table->string('nome');
            $table->foreignId('tipologia_id')->constrained('tipologie');
            $table->decimal('prezzo', 8, 2);
            $table->integer('quantita')->default(0);
            $table->timestamps();
            $table->boolean('cucina')->default(false);
        });

        Schema::create('tavoli', function (Blueprint $table) {
            $table->id();
            $table->integer('numero_tavolo');
            $table->timestamps();
            $table->integer('numero_coperti')->default(0);
        });

        Schema::create('stato_ordini', function (Blueprint $table) {
            $table->id();
            $table->string('descrittivo');
            $table->timestamps();
        });

        DB::table('stato_ordini')->insert([
            ['id' => 1, 'descrittivo' => 'In Corso', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 2, 'descrittivo' => 'Concluso', 'created_at' => now(), 'updated_at' => now()],
        ]);

        Schema::create('ordini', function (Blueprint $table) {
            $table->id();
            $table->string('nr_ordine');
            $table->foreignId('tavolo_id')->constrained('tavoli');
            $table->foreignId('stato_ordine_id')->constrained('stato_ordini');
            $table->integer('nr_coperti');
            $table->decimal('totale_prezzo', 8, 2);
            $table->json('totale_items')->nullable();
            $table->timestamps();
        });

        Schema::create('ordine_menu', function (Blueprint $table) {
            $table->id();
            $table->foreignId('ordine_id')->constrained('ordini');
            $table->foreignId('menu_id')->constrained('menu');
            $table->integer('quantita');
            $table->foreignId('comanda_id')->constrained('comande');
            $table->timestamps();
            $table->text('note')->nullable();
            $table->unique(['ordine_id', 'menu_id', 'comanda_id']);
        });

        Schema::create('password_reset_tokens', function (Blueprint $table) {
            $table->string('email')->primary();
            $table->string('token');
            $table->timestamp('created_at')->nullable();
        });

        Schema::create('personal_access_tokens', function (Blueprint $table) {
            $table->id();
            $table->string('tokenable_type');
            $table->unsignedBigInteger('tokenable_id');
            $table->string('name');
            $table->string('token', 64)->unique();
            $table->text('abilities')->nullable();
            $table->timestamp('last_used_at')->nullable();
            $table->timestamp('expires_at')->nullable();
            $table->timestamps();
            $table->index(['tokenable_type', 'tokenable_id']);
        });

        Schema::create('sessions', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('ip_address', 45)->nullable();
            $table->text('user_agent')->nullable();
            $table->longText('payload');
            $table->integer('last_activity');
            $table->index('user_id');
            $table->index('last_activity');
        });



        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->enum('role', ['cucina', 'sala'])->default('sala');
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('users');
        Schema::dropIfExists('tipologie');
        Schema::dropIfExists('tavoli');
        Schema::dropIfExists('stato_ordini');
        Schema::dropIfExists('sessions');
        Schema::dropIfExists('personal_access_tokens');
        Schema::dropIfExists('password_reset_tokens');
        Schema::dropIfExists('ordini');
        Schema::dropIfExists('ordine_menu');
        Schema::dropIfExists('migrations');
        Schema::dropIfExists('menu');
        Schema::dropIfExists('job_batches');
        Schema::dropIfExists('jobs');
        Schema::dropIfExists('failed_jobs');
        Schema::dropIfExists('comande');
        Schema::dropIfExists('cache_locks');
        Schema::dropIfExists('cache');
    }
};
