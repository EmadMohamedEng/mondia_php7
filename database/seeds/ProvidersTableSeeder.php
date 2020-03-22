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
                'id' => 1,
                'title' => 'مشاري راشد',
                'image' => 'uploads/providers/5c18caa255ca9.jpg',
                'created_at' => '2018-12-18 10:06:00',
                'updated_at' => '2018-12-18 10:23:30',
            ),
            1 => 
            array (
                'id' => 2,
                'title' => 'الهلباوي',
                'image' => 'uploads/providers/5c18c83c7fbb0.jpg',
                'created_at' => '2018-12-18 10:09:43',
                'updated_at' => '2018-12-18 10:13:16',
            ),
            2 => 
            array (
                'id' => 3,
                'title' => 'الطبلاوي',
                'image' => 'uploads/providers/5c18c85fa6362.jpg',
                'created_at' => '2018-12-18 10:13:51',
                'updated_at' => '2018-12-18 10:13:51',
            ),
            3 => 
            array (
                'id' => 4,
                'title' => 'عامر المهلهل',
                'image' => 'uploads/providers/5c18c8786fae3.jpg',
                'created_at' => '2018-12-18 10:14:16',
                'updated_at' => '2018-12-18 10:14:16',
            ),
            4 => 
            array (
                'id' => 5,
                'title' => 'طلال فاخر',
                'image' => 'uploads/providers/5c18c897cf672.jpg',
                'created_at' => '2018-12-18 10:14:47',
                'updated_at' => '2018-12-18 10:14:47',
            ),
            5 => 
            array (
                'id' => 7,
                'title' => 'احمد عيسى',
                'image' => 'uploads/providers/5c18c8ac1dde2.jpg',
                'created_at' => '2018-12-18 10:15:08',
                'updated_at' => '2018-12-18 10:15:08',
            ),
            6 => 
            array (
                'id' => 8,
                'title' => 'عطية صقر',
                'image' => 'uploads/providers/5c18c8efdd90a.jpg',
                'created_at' => '2018-12-18 10:16:15',
                'updated_at' => '2018-12-18 10:16:15',
            ),
            7 => 
            array (
                'id' => 10,
                'title' => 'دليل المسلم',
                'image' => 'uploads/providers/5c18fe6d24fe5.png',
                'created_at' => '2018-12-18 14:04:29',
                'updated_at' => '2018-12-18 14:04:29',
            ),
            8 => 
            array (
                'id' => 11,
                'title' => 'valuef',
                'image' => 'uploads/providers/5e76a7f7e3e37.png',
                'created_at' => '2020-03-21 22:23:41',
                'updated_at' => '2020-03-21 23:49:11',
            ),
            9 => 
            array (
                'id' => 12,
                'title' => 'new',
                'image' => NULL,
                'created_at' => '2020-03-22 11:57:34',
                'updated_at' => '2020-03-22 11:57:34',
            ),
        ));
        
        
    }
}