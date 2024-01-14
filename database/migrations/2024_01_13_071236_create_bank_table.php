<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('bank', function (Blueprint $table) {
            $table->id();
            $table->string('bank_name');
            $table->string('description');
            $table->string('contact_person');
            $table->string('contact_person_mobile');
            $table->string('status')->default(false);
            $table->string('create_by')->nullable();
            $table->string('modified_by')->nullable();
            $table->string('modified_at')->nullable();
            $table->string('ip')->nullable();
            $table->string('browser')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bank');
    }
};
