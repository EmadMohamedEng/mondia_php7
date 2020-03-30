<?php

use Illuminate\Database\Seeder;

class CountriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('countries')->delete();
        
        \DB::table('countries')->insert(array (
            0 => 
            array (
                'id' => 2,
                'title' => 'egypt',
                'created_at' => '2018-05-07 10:21:24',
                'updated_at' => '2018-05-07 10:21:24',
            ),
            1 => 
            array (
                'id' => 3,
                'title' => 'sa',
                'created_at' => '2018-05-07 10:24:39',
                'updated_at' => '2018-05-07 10:24:39',
            ),
            2 => 
            array (
                'id' => 4,
                'title' => 'oman',
                'created_at' => '2020-03-26 13:12:49',
                'updated_at' => '2020-03-26 13:12:49',
            ),
            3 => 
            array (
                'id' => 5,
                'title' => 'emirate',
                'created_at' => '2020-03-28 13:56:46',
                'updated_at' => '2020-03-28 13:56:46',
            ),
        ));
        
        
    }
}