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
        Schema::create('storage', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('owner_id')->nullable();
            $table->unsignedBigInteger('type_id')->nullable();
            $table->string('name');
            $table->string('address');
            $table->string('person_in_charge');
            $table->string('email');
            $table->string('telephone');
            $table->string('mobile');
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
        Schema::dropIfExists('storage');
    }
};
