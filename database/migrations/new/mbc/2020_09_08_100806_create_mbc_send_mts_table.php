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
            $table->string('SmsID', 20);
            $table->string('MobileNo', 50);
            $table->string('Country', 300);
            $table->string('Operator', 20);
            $table->string('Shortcode', 50);
            $table->string('Msgtxt', 300);
            $table->string('Lang', 20);
            $table->string('ServiceID', 50);
            $table->string('Request', 300);
            $table->string('Response', 300);
            $table->string('ResponseCode', 300);
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
