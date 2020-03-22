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
                'id' => 1,
                'provider_id' => 1,
                'title' => 'رسائل العفاسي',
                'image' => 'uploads/services/5c18d33fe8bcb.jpg',
                'created_at' => '2018-12-18 11:00:15',
                'updated_at' => '2018-12-18 11:00:15',
                'type' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'provider_id' => 1,
                'title' => 'تفسير القران بالعربية',
                'image' => 'uploads/services/5c18d446822f4.jpg',
                'created_at' => '2018-12-18 11:04:38',
                'updated_at' => '2018-12-18 11:04:38',
                'type' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'provider_id' => 2,
                'title' => 'ابتهالات',
                'image' => 'uploads/services/5c18d64e405ce.jpg',
                'created_at' => '2018-12-18 11:13:18',
                'updated_at' => '2018-12-18 11:13:18',
                'type' => 1,
            ),
            3 => 
            array (
                'id' => 4,
                'provider_id' => 3,
                'title' => 'الرقية الشرعية',
                'image' => 'uploads/services/5c18d6f2547be.jpg',
                'created_at' => '2018-12-18 11:16:02',
                'updated_at' => '2018-12-18 11:16:02',
                'type' => 1,
            ),
            4 => 
            array (
                'id' => 5,
                'provider_id' => 3,
                'title' => 'تفسير القران بالانجليزية',
                'image' => 'uploads/services/5c18d74d93b99.jpg',
                'created_at' => '2018-12-18 11:17:33',
                'updated_at' => '2018-12-18 11:17:33',
                'type' => 1,
            ),
            5 => 
            array (
                'id' => 6,
                'provider_id' => 4,
                'title' => 'دعاء',
                'image' => 'uploads/services/5c1a5a5335df7.jpg',
                'created_at' => '2018-12-18 11:18:27',
                'updated_at' => '2018-12-19 14:48:51',
                'type' => 1,
            ),
            6 => 
            array (
                'id' => 7,
                'provider_id' => 5,
                'title' => 'خطوات اسلامية',
                'image' => 'uploads/services/5c18d7bf2acb1.jpg',
                'created_at' => '2018-12-18 11:19:27',
                'updated_at' => '2018-12-23 13:45:39',
                'type' => 1,
            ),
            7 => 
            array (
                'id' => 8,
                'provider_id' => 7,
                'title' => 'خواطر اسلامية',
                'image' => 'uploads/services/5c18d7f14f4ee.jpg',
                'created_at' => '2018-12-18 11:20:17',
                'updated_at' => '2018-12-23 13:45:25',
                'type' => 1,
            ),
            8 => 
            array (
                'id' => 9,
                'provider_id' => 8,
                'title' => 'اسالة واجابات',
                'image' => 'uploads/services/5c18d81a2512d.jpg',
                'created_at' => '2018-12-18 11:20:58',
                'updated_at' => '2018-12-18 11:20:58',
                'type' => 1,
            ),
            9 => 
            array (
                'id' => 10,
                'provider_id' => 10,
                'title' => 'دليل الصائم',
                'image' => 'uploads/services/5c18feba9e7cb.png',
                'created_at' => '2018-12-18 14:05:46',
                'updated_at' => '2018-12-18 14:05:46',
                'type' => 1,
            ),
            10 => 
            array (
                'id' => 11,
                'provider_id' => 10,
                'title' => 'دليل الحاج والمعتمر',
                'image' => 'uploads/services/5c18fee3775b8.png',
                'created_at' => '2018-12-18 14:06:27',
                'updated_at' => '2018-12-18 14:06:27',
                'type' => 1,
            ),
            11 => 
            array (
                'id' => 12,
                'provider_id' => 1,
                'title' => 'تفسير القران بالانجليزية',
                'image' => 'uploads/services/5c1a596c51506.jpg',
                'created_at' => '2018-12-19 14:45:00',
                'updated_at' => '2018-12-19 14:45:00',
                'type' => 1,
            ),
            12 => 
            array (
                'id' => 13,
                'provider_id' => 1,
                'title' => 'الرقية الشرعية',
                'image' => 'uploads/services/5c1a59989fc5f.jpg',
                'created_at' => '2018-12-19 14:45:44',
                'updated_at' => '2018-12-19 14:45:44',
                'type' => 1,
            ),
            13 => 
            array (
                'id' => 14,
                'provider_id' => 1,
                'title' => 'القران يجيب',
                'image' => 'uploads/services/5c1a59aa2aa4c.jpg',
                'created_at' => '2018-12-19 14:46:02',
                'updated_at' => '2018-12-19 14:46:02',
                'type' => 1,
            ),
            14 => 
            array (
                'id' => 16,
                'provider_id' => 1,
                'title' => 'test 1',
                'image' => 'uploads/services/5c24cbbf83da9.png',
                'created_at' => '2018-12-27 12:55:27',
                'updated_at' => '2018-12-27 12:55:27',
                'type' => 3,
            ),
            15 => 
            array (
                'id' => 17,
                'provider_id' => 1,
                'title' => 'audio_service',
                'image' => 'uploads/services/5c2b2438b515f.png',
                'created_at' => '2019-01-01 08:26:32',
                'updated_at' => '2019-01-01 08:26:32',
                'type' => 2,
            ),
            16 => 
            array (
                'id' => 18,
                'provider_id' => 4,
                'title' => 'new',
                'image' => 'uploads/services/5e76940826065.png',
                'created_at' => '2020-03-21 22:24:08',
                'updated_at' => '2020-03-21 23:48:40',
                'type' => 2,
            ),
            17 => 
            array (
                'id' => 21,
                'provider_id' => 10,
                'title' => 'dxxc',
                'image' => 'uploads/services/5e76a79f085c2.png',
                'created_at' => '2020-03-21 23:47:43',
                'updated_at' => '2020-03-21 23:47:43',
                'type' => 2,
            ),
            18 => 
            array (
                'id' => 22,
                'provider_id' => 3,
                'title' => 'text',
                'image' => 'uploads/services/5e776aa8a8abd.png',
                'created_at' => '2020-03-22 13:39:52',
                'updated_at' => '2020-03-22 13:39:52',
                'type' => 4,
            ),
        ));
        
        
    }
}