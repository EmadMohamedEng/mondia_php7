<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MakeNullForMbContent extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        \DB::statement("ALTER TABLE `mbc_contents` CHANGE `operator` `operator` VARCHAR(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL;");
        \DB::statement("ALTER TABLE `mbc_contents` CHANGE `subscription_day` `subscription_day` INT(10) NULL;");
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
