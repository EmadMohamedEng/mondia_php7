<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateContentsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('contents', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('service_id')->index('service_id');
			$table->string('title');
			$table->timestamps();
			$table->string('video', 191)->nullable();
			$table->text('content_text')->nullable();
			$table->string('image_preview', 191)->nullable();
			$table->boolean('type')->default(1)->comment('1 = video /2 = audio /3 = image');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('contents');
	}

}
