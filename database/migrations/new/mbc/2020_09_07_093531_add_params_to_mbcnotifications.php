<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddParamsToMbcnotifications extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('mbc_notifications', function (Blueprint $table) {
          $table->string('country', 90);
          $table->string('operator', 90);
          $table->string('shortcode', 90);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('mbcnotifications', function (Blueprint $table) {
            //
        });
    }
}
