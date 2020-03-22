<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToAudiosTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('audios', function(Blueprint $table)
		{
			$table->foreign('provider_id', 'audios_ibfk_1')->references('id')->on('providers')->onUpdate('RESTRICT')->onDelete('CASCADE');
			$table->foreign('operator_id', 'audios_ibfk_2')->references('id')->on('operators')->onUpdate('RESTRICT')->onDelete('CASCADE');
			$table->foreign('operator_id', 'audios_operator_id_foreign1')->references('id')->on('operators')->onUpdate('CASCADE')->onDelete('CASCADE');
			$table->foreign('provider_id', 'audios_provider_id_foreign1')->references('id')->on('providers')->onUpdate('CASCADE')->onDelete('CASCADE');
			$table->foreign('video_id')->references('id')->on('contents')->onUpdate('RESTRICT')->onDelete('CASCADE');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('audios', function(Blueprint $table)
		{
			$table->dropForeign('audios_ibfk_1');
			$table->dropForeign('audios_ibfk_2');
			$table->dropForeign('audios_operator_id_foreign1');
			$table->dropForeign('audios_provider_id_foreign1');
			$table->dropForeign('audios_video_id_foreign');
		});
	}

}
