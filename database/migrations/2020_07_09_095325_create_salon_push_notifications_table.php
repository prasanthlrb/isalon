<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalonPushNotificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salon_push_notifications', function (Blueprint $table) {
            $table->id();
            $table->string('date')->nullable();
            $table->string('salon_id')->nullable();
            $table->string('title')->nullable();
            $table->string('description')->nullable();
            $table->string('send_to')->nullable();
            $table->string('customer_ids')->nullable();
            $table->string('area')->nullable();
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
        Schema::dropIfExists('salon_push_notifications');
    }
}
