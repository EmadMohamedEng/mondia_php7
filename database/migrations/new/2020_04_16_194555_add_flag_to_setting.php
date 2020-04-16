<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFlagToSetting extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      \DB::statement("INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`, `type_id`, `order`) VALUES
      (83, 'content_exact_name', '0', '2020-04-16 17:27:06', '2020-04-16 17:43:32', 7, 0);");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
     
    }
}
