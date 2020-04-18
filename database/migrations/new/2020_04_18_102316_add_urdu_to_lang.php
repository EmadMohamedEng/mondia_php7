<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddUrduToLang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        \DB::statement("INSERT INTO `languages` (`id`, `title`, `created_at`, `updated_at`, `short_code`, `rtl`) VALUES
        (3, 'Urdu', '2020-04-18 07:50:07', '2020-04-18 07:50:07', 'ur', 1);");
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
