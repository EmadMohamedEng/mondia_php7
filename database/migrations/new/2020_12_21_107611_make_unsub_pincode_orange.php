<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MakeUnsubPincodeOrange extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('unsub_pincode_oranges', function (Blueprint $table) {
        $table->increments('id');
        $table->string('msisdn',20);
        $table->integer('pincode');
        $table->timestamp('expire_date_time');
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

    }
}
