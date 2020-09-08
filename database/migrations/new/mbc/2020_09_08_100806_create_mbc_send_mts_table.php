<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMbcSendMtsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mbc_send_mts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('SmsID', 50);
            $table->string('MobileNo', 50);
            $table->string('Country', 50);
            $table->string('Operator', 50);
            $table->string('Shortcode', 50);
            $table->string('Msgtxt', 300);
            $table->string('Lang', 10);
            $table->string('ServiceID', 50);
            $table->string('Request', 500);
            $table->string('Response', 500);
            $table->string('ResponseCode', 50);
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
        Schema::dropIfExists('mbc_send_mts');
    }
}
