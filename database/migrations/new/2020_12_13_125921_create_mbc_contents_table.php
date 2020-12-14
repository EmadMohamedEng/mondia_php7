<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMbcContentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mbc_contents', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('content_id')->unsigned();
            $table->integer('subscription_day')->unsigned();
            $table->string('operator', 90);
            $table->string('type', 90);
            $table->date('occasion_date')->nullable();
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
        Schema::dropIfExists('mbc_contents');
    }
}
