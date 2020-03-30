<?php

use Illuminate\Database\Seeder;

class ServicesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('services')->delete();
        
        \DB::table('services')->insert(array (
            0 => 
            array (
                'id' => 23,
                'provider_id' => 13,
                'title' => 'tfsyr el quran',
                'image' => 'uploads/services/5e81afb9d1870.jpg',
                'created_at' => '2020-03-30 08:37:13',
                'updated_at' => '2020-03-30 08:37:13',
                'type' => 1,
            ),
            1 => 
            array (
                'id' => 24,
                'provider_id' => 13,
                'title' => 'Rsal Elafacy',
                'image' => 'uploads/services/5e81b003e03cc.png',
                'created_at' => '2020-03-30 08:38:27',
                'updated_at' => '2020-03-30 08:38:40',
                'type' => 4,
            ),
            2 => 
            array (
                'id' => 25,
                'provider_id' => 14,
                'title' => 'quran',
                'image' => 'uploads/services/5e81b04446335.jpg',
                'created_at' => '2020-03-30 08:39:32',
                'updated_at' => '2020-03-30 08:39:32',
                'type' => 2,
            ),
            3 => 
            array (
                'id' => 26,
                'provider_id' => 15,
                'title' => 'toshih',
                'image' => 'uploads/services/5e81b57fdaaaa.jpg',
                'created_at' => '2020-03-30 09:01:51',
                'updated_at' => '2020-03-30 09:01:51',
                'type' => 2,
            ),
            4 => 
            array (
                'id' => 27,
                'provider_id' => 16,
                'title' => 'ghoatr aymenya',
                'image' => 'uploads/services/5e81b5eb75cd5.jpg',
                'created_at' => '2020-03-30 09:03:39',
                'updated_at' => '2020-03-30 09:03:39',
                'type' => 1,
            ),
        ));
        
        
    }
}