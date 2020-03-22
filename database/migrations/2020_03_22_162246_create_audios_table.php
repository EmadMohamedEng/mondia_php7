<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAudiosTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('audios', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('provider_id')->index('service_id');
			$table->integer('operator_id')->index('operator_id');
			$table->string('title');
			$table->string('source');
			$table->integer('code');
			$table->timestamps();
			$table->integer('video_id')->nullable()->index('video_id');
			$table->boolean('azan_flage')->default(0);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('audios');
	}

}
