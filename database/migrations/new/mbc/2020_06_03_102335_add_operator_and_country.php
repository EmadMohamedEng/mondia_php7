<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddOperatorAndCountry extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        \DB::table('countries')->insert(
            array(
                'id' => 9,
                'title' => 'Ksa'
            )
        );
        \DB::table('operators')->insert(
            array(
                'id' => 14,
                'name' => 'mbc',
                'country_id' => 9
            )
        );
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
