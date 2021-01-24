<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddOoredooKw extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

      \DB::statement("INSERT INTO `operators` (`id`, `name`, `operator_image`, `created_at`, `updated_at`, `code`, `country_id`, `operator_name`, `name_ar`, `name_en`, `cost_ar`, `cost_en`) VALUES (NULL, 'ooredoo', '', '2021-01-18 08:23:12', '2021-01-18 08:23:12', NULL, '3', 'ooredoo_kw', 'ooredoo_kw', 'ooredoo_kw', NULL, NULL)");
      \DB::statement("INSERT INTO `operators` (`id`, `name`, `operator_image`, `created_at`, `updated_at`, `code`, `country_id`, `operator_name`, `name_ar`, `name_en`, `cost_ar`, `cost_en`) VALUES (NULL, 'viva', '', '2021-01-18 08:23:12', '2021-01-18 08:23:12', NULL, '3', 'viva', 'viva_Kw', 'viva_Kw', NULL, NULL)");
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
