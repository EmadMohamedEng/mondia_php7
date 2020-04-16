<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddSettingValue extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        \DB::statement("INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`, `type_id`, `order`) VALUES
        (80, 'service_delete_flag', '0', '2020-04-16 12:54:33', '2020-04-16 12:55:24', 7, 0),
        (81, 'provider_delete_flag', '1', '2020-04-16 12:54:53', '2020-04-16 12:54:53', 7, 0);");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
