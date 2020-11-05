<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class InsertCountryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      \DB::statement("ALTER TABLE `countries` ADD `code` VARCHAR(10) NULL DEFAULT NULL AFTER `title`;");
      // \DB::statement("INSERT INTO `countries` (`id`, `title`, `code`, `created_at`, `updated_at`) VALUES (NULL, 'Egypt', '+02', '2018-05-07 16:21:24', '2018-05-07 16:21:24')");
      // \DB::statement("INSERT INTO `countries` (`id`, `title`, `code`, `created_at`, `updated_at`) VALUES (NULL, 'Ksa', '+966', NULL, NULL)");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('countries');
    }
}
