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

      \DB::statement("INSERT INTO `operators` (`id`, `name`, `operator_image`, `created_at`, `updated_at`, `code`, `country_id`, `operator_name`, `name_ar`, `name_en`, `cost_ar`, `cost_en`) VALUES (NULL, 'Ooredoo_kw', '', '2021-01-18 08:23:12', '2021-01-18 08:23:12', NULL, '3', 'Ooredoo_kw', 'Ooredoo_kw', 'Ooredoo_kw', NULL, NULL)");
      \DB::statement("INSERT INTO `operators` (`id`, `name`, `operator_image`, `created_at`, `updated_at`, `code`, `country_id`, `operator_name`, `name_ar`, `name_en`, `cost_ar`, `cost_en`) VALUES (NULL, 'Viva_Kw', '', '2021-01-18 08:23:12', '2021-01-18 08:23:12', NULL, '3', 'Viva_Kw', 'Viva_Kw', 'Viva_Kw', NULL, NULL)");
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
