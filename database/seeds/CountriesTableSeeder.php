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
        ));
        
        
    }
}