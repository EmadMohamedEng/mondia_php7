<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGuTodayLinksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gu_today_links', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('gu_request');
            $table->text('gu_response');
            $table->integer('gu_day');
            $table->text('mbc_request');
            $table->text('mbc_response');
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
        Schema::dropIfExists('gu_today_links');
    }
}
