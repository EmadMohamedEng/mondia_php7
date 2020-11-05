<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePincodeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pincodes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('msisdn',20);
            $table->integer('pincode');
            $table->timestamp('expire_date_time');
            $table->timestamps();
        });
        \DB::statement("ALTER TABLE `pincodes` ADD `operator_id` INT(10) NOT NULL AFTER `expire_date_time`;");
        \DB::statement("ALTER TABLE `pincodes` ADD `verified` INT(10) NULL DEFAULT NULL AFTER `operator_id`;");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('pincodes');
    }
}
