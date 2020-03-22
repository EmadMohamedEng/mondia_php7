<?php

use Illuminate\Database\Seeder;

class LanguagesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('languages')->delete();
        
        \DB::table('languages')->insert(array (
            0 => 
            array (
                'id' => 1,
                'title' => 'English',
                'created_at' => '2020-03-21 22:23:01',
                'updated_at' => '2020-03-21 22:23:01',
                'short_code' => 'en',
                'rtl' => 0,
            ),
            1 => 
            array (
                'id' => 2,
                'title' => 'Arabic',
                'created_at' => '2020-03-21 22:23:12',
                'updated_at' => '2020-03-21 22:23:12',
                'short_code' => 'ar',
                'rtl' => 1,
            ),
        ));
        
        
    }
}