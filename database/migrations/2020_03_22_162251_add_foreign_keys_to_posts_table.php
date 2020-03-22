<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToPostsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('posts', function(Blueprint $table)
		{
			$table->foreign('video_id', 'posts_ibfk_1')->references('id')->on('contents')->onUpdate('RESTRICT')->onDelete('CASCADE');
			$table->foreign('operator_id', 'posts_ibfk_2')->references('id')->on('operators')->onUpdate('RESTRICT')->onDelete('CASCADE');
			$table->foreign('operator_id', 'posts_operator_id_foreign1')->references('id')->on('operators')->onUpdate('CASCADE')->onDelete('CASCADE');
			$table->foreign('video_id', 'posts_video_id_foreign1')->references('id')->on('contents')->onUpdate('CASCADE')->onDelete('CASCADE');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('posts', function(Blueprint $table)
		{
			$table->dropForeign('posts_ibfk_1');
			$table->dropForeign('posts_ibfk_2');
			$table->dropForeign('posts_operator_id_foreign1');
			$table->dropForeign('posts_video_id_foreign1');
		});
	}

}
