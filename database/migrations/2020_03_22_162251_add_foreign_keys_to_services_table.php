<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToServicesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('services', function(Blueprint $table)
		{
			$table->foreign('provider_id', 'services_ibfk_1')->references('id')->on('providers')->onUpdate('RESTRICT')->onDelete('CASCADE');
			$table->foreign('provider_id', 'services_provider_id_foreign1')->references('id')->on('providers')->onUpdate('CASCADE')->onDelete('CASCADE');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('services', function(Blueprint $table)
		{
			$table->dropForeign('services_ibfk_1');
			$table->dropForeign('services_provider_id_foreign1');
		});
	}

}
