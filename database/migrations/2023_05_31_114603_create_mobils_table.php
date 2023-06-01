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
        Schema::create('mobils', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->string('brand');
            $table->string('harga');
            // $table->string('status');
            $table->foreignId('mesin')->references('id')->on('speks')->onDelete('cascade');
            $table->foreignId('bahan_bakar')->references('id')->on('speks')->onDelete('cascade');
            $table->foreignId('transmisi')->references('id')->on('speks')->onDelete('cascade');
            $table->foreignId('seat')->references('id')->on('speks')->onDelete('cascade');
            $table->date('tanggal_tersedia');
            $table->string('gambar')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mobils');
    }
};
