<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class FixPincodeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

      \DB::statement("ALTER TABLE `pincodes` ADD `message` TEXT NULL DEFAULT NULL AFTER `verified`;");

      \DB::statement("ALTER TABLE `pincodes` CHANGE `verified` `verified` INT(10) NULL DEFAULT NULL COMMENT '2=login from pc ';");





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
