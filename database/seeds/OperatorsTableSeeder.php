<?php

use Illuminate\Database\Seeder;

class OperatorsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('operators')->delete();
        
        \DB::table('operators')->insert(array (
            0 => 
            array (
                'id' => 7,
                'name' => 'etislat',
                'operator_image' => 'uploads/operators/5c2b237670d66.jpg',
                'created_at' => '2018-12-27 13:23:45',
                'updated_at' => '2019-01-01 08:23:25',
                'code' => 1500,
                'country_id' => 2,
            ),
            1 => 
            array (
                'id' => 8,
                'name' => 'orange',
                'operator_image' => 'uploads/operators/5c2b236e9e890.jpg',
                'created_at' => '2019-01-01 08:23:10',
                'updated_at' => '2019-01-01 08:23:10',
                'code' => 9999,
                'country_id' => 2,
            ),
            2 => 
            array (
                'id' => 9,
                'name' => 'omantel',
                'operator_image' => 'uploads/operators/5e7caa88d6f8d.png',
                'created_at' => '2020-03-26 13:13:44',
                'updated_at' => '2020-03-26 13:13:44',
                'code' => 1234,
                'country_id' => 4,
            ),
            3 => 
            array (
                'id' => 10,
                'name' => 'du',
                'operator_image' => 'uploads/operators/5e7f2d823b601.png',
                'created_at' => '2020-03-28 10:57:06',
                'updated_at' => '2020-03-28 13:57:05',
                'code' => 1243,
                'country_id' => 5,
            ),
        ));
        
        
    }
}