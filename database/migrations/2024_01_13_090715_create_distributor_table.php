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
        Schema::create('distributor', function (Blueprint $table) {
            $table->id();
            $table->string('distributor_name');
            $table->unsignedBigInteger('storage_id')->nullable();
            $table->unsignedBigInteger('upazila_id')->nullable();
            $table->unsignedBigInteger('erp_id')->nullable();
            $table->string('proprietor_name');
            $table->string('proprietor_dob');
            $table->string('address');
            $table->string('mobile_number');
            $table->boolean('has_printer');
            $table->boolean('has_pc');
            $table->boolean('has_live_app');
            $table->boolean('has_direct_sale');
            $table->string('opening_date');
            $table->string('emergency_contact_name');
            $table->string('emergency_contact_number');
            $table->string('emergency_contact_relation');
            $table->string('union');
            $table->string('ward');
            $table->string('village');
            $table->string('status')->default(false);
            $table->string('created_by')->nullable();
            $table->string('updated_by')->nullable();
            $table->string('ip')->nullable();
            $table->string('browser')->nullable();
            $table->timestamps();
            $table->foreign('storage_id')->references('id')->on('storage')->onDelete('cascade');
            $table->foreign('upazila_id')->references('id')->on('upazila')->onDelete('cascade');
            $table->foreign('erp_id')->references('id')->on('distributionassignedarea')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('distributor');
    }
};
