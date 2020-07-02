<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalonsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salons', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('busisness_type')->nullable();
            $table->string('owner_name')->nullable();
            $table->string('email')->nullable();
            $table->string('phone')->nullable();
            $table->string('password')->nullable();
            $table->string('salon_name')->nullable();
            $table->string('salon_id')->nullable();
            $table->string('emirates_id')->nullable();
            $table->string('passport_number')->nullable();
            $table->string('member_license')->nullable();
            $table->string('salon_commission')->nullable();
            $table->string('trade_license')->nullable();
            $table->string('status')->default('0');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('salons');
    }
}
