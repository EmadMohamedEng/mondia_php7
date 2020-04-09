<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MyisamToInnodb extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $res = \DB::select("SELECT  CONCAT('ALTER TABLE `', table_name, '` ENGINE=InnoDB;') AS sql_statements FROM  information_schema.tables AS tb WHERE  table_schema = "."'".env('DB_DATABASE')."'"." AND  `ENGINE` = 'MyISAM' AND  `TABLE_TYPE` = 'BASE TABLE' ORDER BY table_name DESC");
        foreach ($res as $re) {
          \DB::statement($re->sql_statements);
        }
    }


    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('innodb', function (Blueprint $table) {
            //
        });
    }
}
