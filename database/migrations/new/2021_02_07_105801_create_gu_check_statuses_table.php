<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGuCheckStatusesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gu_check_statuses', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('msisdn');
            $table->string('url');
            $table->text('response');
            $table->string('status');
            $table->integer('day');
            $table->string('country');
            $table->string('operator');
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
        Schema::dropIfExists('gu_check_statuses');
    }
}
