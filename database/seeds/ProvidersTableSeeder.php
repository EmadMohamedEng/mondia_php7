<?php

use Illuminate\Database\Seeder;

class ProvidersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('providers')->delete();
        
        \DB::table('providers')->insert(array (
            0 => 
            array (
                'id' => 13,
                'title' => 'mishria rashed',
                'image' => NULL,
                'created_at' => '2020-03-30 08:34:36',
                'updated_at' => '2020-03-30 08:34:36',
            ),
            1 => 
            array (
                'id' => 14,
                'title' => 'el tabloye',
                'image' => NULL,
                'created_at' => '2020-03-30 08:35:01',
                'updated_at' => '2020-03-30 08:35:01',
            ),
            2 => 
            array (
                'id' => 15,
                'title' => 'el halboye',
                'image' => NULL,
                'created_at' => '2020-03-30 08:35:39',
                'updated_at' => '2020-03-30 08:35:39',
            ),
            3 => 
            array (
                'id' => 16,
                'title' => 'tala phaghr',
                'image' => NULL,
                'created_at' => '2020-03-30 08:36:06',
                'updated_at' => '2020-03-30 08:36:06',
            ),
        ));
        
        
    }
}