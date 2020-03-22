<?php

use Illuminate\Database\Seeder;

class ContentsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('contents')->delete();
        
        \DB::table('contents')->insert(array (
            0 => 
            array (
                'id' => 1,
                'service_id' => 1,
                'title' => 'رسائل العفاسي',
                'created_at' => '2018-12-18 13:45:30',
                'updated_at' => '2018-12-18 13:45:30',
                'video' => 'uploads/videos/5c18f9fa802f5.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'service_id' => 2,
                'title' => 'تفسير القران بالعربية',
                'created_at' => '2018-12-19 13:50:45',
                'updated_at' => '2018-12-18 13:50:45',
                'video' => 'uploads/videos/5c18fb35286a8.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'service_id' => 3,
                'title' => 'ابتهالات',
                'created_at' => '2018-12-18 13:53:38',
                'updated_at' => '2018-12-18 13:53:38',
                'video' => 'uploads/videos/5c18fbe2acb63.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            3 => 
            array (
                'id' => 4,
                'service_id' => 1,
                'title' => 'ابتهالات',
                'created_at' => '2018-12-18 13:53:55',
                'updated_at' => '2018-12-18 13:53:55',
                'video' => 'uploads/videos/5c18fbf33a5ff.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            4 => 
            array (
                'id' => 5,
                'service_id' => 11,
                'title' => 'دليل الحاج والمعتمر 1',
                'created_at' => '2018-12-18 14:07:43',
                'updated_at' => '2018-12-18 14:07:43',
                'video' => 'uploads/videos/5c18ff2fe95fc.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            5 => 
            array (
                'id' => 6,
                'service_id' => 11,
                'title' => 'دليل الحاج والمعتمر 2',
                'created_at' => '2018-12-18 14:08:06',
                'updated_at' => '2018-12-18 14:08:06',
                'video' => 'uploads/videos/5c18ff46d988c.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            6 => 
            array (
                'id' => 7,
                'service_id' => 11,
                'title' => 'دليل الحاج والمعتمر 3',
                'created_at' => '2018-12-18 14:08:21',
                'updated_at' => '2018-12-18 14:08:21',
                'video' => 'uploads/videos/5c18ff552fcf5.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            7 => 
            array (
                'id' => 8,
                'service_id' => 11,
                'title' => 'دليل الحاج والمعتمر 4',
                'created_at' => '2018-12-18 14:08:34',
                'updated_at' => '2018-12-18 14:08:34',
                'video' => 'uploads/videos/5c18ff62c4f2c.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            8 => 
            array (
                'id' => 9,
                'service_id' => 1,
                'title' => 'تفسير القران بالعربية',
                'created_at' => '2018-12-19 14:51:02',
                'updated_at' => '2018-12-19 14:51:02',
                'video' => 'uploads/videos/5c1a5ad65312f.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            9 => 
            array (
                'id' => 10,
                'service_id' => 1,
                'title' => 'تفسير القران بالانجليزية',
                'created_at' => '2018-12-19 14:51:54',
                'updated_at' => '2018-12-19 14:51:54',
                'video' => 'uploads/videos/5c1a5b0acc0b5.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            10 => 
            array (
                'id' => 11,
                'service_id' => 1,
                'title' => 'الرقية الشرعية',
                'created_at' => '2018-12-19 14:52:15',
                'updated_at' => '2018-12-19 14:52:15',
                'video' => 'uploads/videos/5c1a5b1fcd786.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            11 => 
            array (
                'id' => 12,
                'service_id' => 1,
                'title' => 'القران يجيب',
                'created_at' => '2018-12-19 14:52:46',
                'updated_at' => '2018-12-19 14:52:46',
                'video' => 'uploads/videos/5c1a5b3e79e89.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            12 => 
            array (
                'id' => 13,
                'service_id' => 2,
                'title' => 'تفسير القران بالانجليزية',
                'created_at' => '2018-12-19 14:53:41',
                'updated_at' => '2018-12-19 14:57:13',
                'video' => 'uploads/videos/5c1a5b75cc377.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            13 => 
            array (
                'id' => 14,
                'service_id' => 3,
                'title' => 'ابتهالات',
                'created_at' => '2018-12-19 14:53:59',
                'updated_at' => '2018-12-19 14:53:59',
                'video' => 'uploads/videos/5c1a5b87d647c.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            14 => 
            array (
                'id' => 15,
                'service_id' => 14,
                'title' => 'القران يجيب',
                'created_at' => '2018-12-19 14:55:31',
                'updated_at' => '2018-12-19 14:55:31',
                'video' => 'uploads/videos/5c1a5be31d2cd.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            15 => 
            array (
                'id' => 16,
                'service_id' => 13,
                'title' => 'الرقية الشرعية',
                'created_at' => '2018-12-19 14:55:49',
                'updated_at' => '2018-12-19 14:55:49',
                'video' => 'uploads/videos/5c1a5bf51714b.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            16 => 
            array (
                'id' => 17,
                'service_id' => 12,
                'title' => 'تفسير القران بالانجليزية',
                'created_at' => '2018-12-19 14:56:23',
                'updated_at' => '2018-12-19 14:56:23',
                'video' => 'uploads/videos/5c1a5c17c324a.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            17 => 
            array (
                'id' => 18,
                'service_id' => 11,
                'title' => 'دليل الحاج والمعتمر 5',
                'created_at' => '2018-12-23 10:18:07',
                'updated_at' => '2018-12-23 10:18:07',
                'video' => 'uploads/videos/5c1f60df94563.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            18 => 
            array (
                'id' => 19,
                'service_id' => 11,
                'title' => 'دليل الحاج والمعتمر 6',
                'created_at' => '2018-12-23 10:19:08',
                'updated_at' => '2018-12-23 10:19:08',
                'video' => 'uploads/videos/5c1f611c677f2.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            19 => 
            array (
                'id' => 20,
                'service_id' => 10,
                'title' => 'دليل الصائم 1',
                'created_at' => '2018-12-23 13:37:11',
                'updated_at' => '2018-12-23 13:37:11',
                'video' => 'uploads/videos/5c1f8f87607ec.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            20 => 
            array (
                'id' => 21,
                'service_id' => 10,
                'title' => 'دليل الصائم 2',
                'created_at' => '2018-12-23 13:37:38',
                'updated_at' => '2018-12-23 13:37:38',
                'video' => 'uploads/videos/5c1f8fa2581fd.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            21 => 
            array (
                'id' => 22,
                'service_id' => 10,
                'title' => 'دليل الصائم 3',
                'created_at' => '2018-12-23 13:37:53',
                'updated_at' => '2018-12-23 13:37:53',
                'video' => 'uploads/videos/5c1f8fb16508a.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            22 => 
            array (
                'id' => 23,
                'service_id' => 10,
                'title' => 'دليل الصائم 4',
                'created_at' => '2018-12-23 13:38:20',
                'updated_at' => '2018-12-23 13:39:14',
                'video' => 'uploads/videos/5c1f9002d9d2c.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            23 => 
            array (
                'id' => 24,
                'service_id' => 10,
                'title' => 'دليل الصائم 5',
                'created_at' => '2018-12-23 13:38:39',
                'updated_at' => '2018-12-23 13:39:26',
                'video' => 'uploads/videos/5c1f8fdf0c536.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            24 => 
            array (
                'id' => 25,
                'service_id' => 10,
                'title' => 'دليل الصائم 6',
                'created_at' => '2018-12-23 13:39:39',
                'updated_at' => '2018-12-23 13:39:39',
                'video' => 'uploads/videos/5c1f901ba0ce9.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            25 => 
            array (
                'id' => 26,
                'service_id' => 4,
                'title' => 'الرقية الشرعية	',
                'created_at' => '2018-12-23 13:41:39',
                'updated_at' => '2018-12-23 13:41:39',
                'video' => 'uploads/videos/5c1f9093a6aec.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            26 => 
            array (
                'id' => 27,
                'service_id' => 5,
                'title' => 'تفسير القران بالانجليزية	',
                'created_at' => '2018-12-23 13:42:03',
                'updated_at' => '2018-12-23 13:42:03',
                'video' => 'uploads/videos/5c1f90abcd183.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            27 => 
            array (
                'id' => 28,
                'service_id' => 6,
                'title' => 'دعاء',
                'created_at' => '2018-12-23 13:42:28',
                'updated_at' => '2018-12-23 13:42:28',
                'video' => 'uploads/videos/5c1f90c4b2d5d.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            28 => 
            array (
                'id' => 29,
                'service_id' => 7,
                'title' => 'خطوات اسلامية	',
                'created_at' => '2018-12-23 13:42:41',
                'updated_at' => '2018-12-23 13:46:13',
                'video' => 'uploads/videos/5c1f90d167beb.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            29 => 
            array (
                'id' => 30,
                'service_id' => 7,
                'title' => 'خطوات اسلامية	',
                'created_at' => '2018-12-23 13:42:54',
                'updated_at' => '2018-12-23 13:46:28',
                'video' => 'uploads/videos/5c1f90de8705c.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            30 => 
            array (
                'id' => 31,
                'service_id' => 8,
                'title' => 'خواطر اسلامية',
                'created_at' => '2018-12-23 13:43:23',
                'updated_at' => '2018-12-23 13:46:46',
                'video' => 'uploads/videos/5c1f90fb3c8c1.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            31 => 
            array (
                'id' => 32,
                'service_id' => 9,
                'title' => 'اسالة واجابات	',
                'created_at' => '2018-12-23 13:43:40',
                'updated_at' => '2018-12-23 13:43:40',
                'video' => 'uploads/videos/5c1f910cc73db.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            32 => 
            array (
                'id' => 33,
                'service_id' => 1,
                'title' => 'test 1',
                'created_at' => '2018-12-27 12:53:40',
                'updated_at' => '2018-12-27 12:53:40',
                'video' => 'uploads/videos/5c24cb54102e9.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            33 => 
            array (
                'id' => 36,
                'service_id' => 16,
                'title' => 'تفسير القران بالعربية',
                'created_at' => '2018-12-27 14:43:23',
                'updated_at' => '2018-12-27 14:45:04',
                'video' => 'uploads/videos/5c24e50b72fc8.gif',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 3,
            ),
            34 => 
            array (
                'id' => 38,
                'service_id' => 16,
                'title' => 'image1',
                'created_at' => '2019-01-01 08:25:11',
                'updated_at' => '2019-01-01 08:25:11',
                'video' => 'uploads/videos/5c2b23e7a8da7.jpeg',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 3,
            ),
            35 => 
            array (
                'id' => 39,
                'service_id' => 14,
                'title' => 'test_video',
                'created_at' => '2019-01-01 08:25:36',
                'updated_at' => '2019-01-01 08:25:36',
                'video' => 'uploads/videos/5c2b24008b459.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            36 => 
            array (
                'id' => 40,
                'service_id' => 17,
                'title' => 'test_audio',
                'created_at' => '2019-01-01 08:26:47',
                'updated_at' => '2019-01-01 08:26:47',
                'video' => 'uploads/videos/5c2b2447a0a67.mp3',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 2,
            ),
            37 => 
            array (
                'id' => 41,
                'service_id' => 2,
                'title' => 'new',
                'created_at' => '2020-03-21 23:58:09',
                'updated_at' => '2020-03-21 23:58:09',
                'video' => 'uploads/videos/5e76aa117856c.mp4',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 1,
            ),
            38 => 
            array (
                'id' => 42,
                'service_id' => 22,
                'title' => 'new',
                'created_at' => '2020-03-22 14:56:02',
                'updated_at' => '2020-03-22 14:56:02',
                'video' => NULL,
                'content_text' => 'gsdgsdgs',
                'image_preview' => NULL,
                'type' => 4,
            ),
            39 => 
            array (
                'id' => 43,
                'service_id' => 6,
                'title' => 'new',
                'created_at' => '2020-03-22 15:09:41',
                'updated_at' => '2020-03-22 15:09:41',
                'video' => 'uploads/videos/5e777fb40b816.mp4',
                'content_text' => NULL,
                'image_preview' => '5e777fb40d1ab',
                'type' => 1,
            ),
            40 => 
            array (
                'id' => 44,
                'service_id' => 6,
                'title' => 'new',
                'created_at' => '2020-03-22 15:11:16',
                'updated_at' => '2020-03-22 15:11:16',
                'video' => 'uploads/videos/5e778014678f9.mp4',
                'content_text' => NULL,
                'image_preview' => '5e778014687e2',
                'type' => 1,
            ),
            41 => 
            array (
                'id' => 45,
                'service_id' => 3,
                'title' => 'new',
                'created_at' => '2020-03-22 15:11:45',
                'updated_at' => '2020-03-22 15:11:45',
                'video' => 'uploads/videos/5e77803138eba.mp4',
                'content_text' => NULL,
                'image_preview' => '5e7780313acb9',
                'type' => 1,
            ),
            42 => 
            array (
                'id' => 46,
                'service_id' => 3,
                'title' => 'new',
                'created_at' => '2020-03-22 15:13:16',
                'updated_at' => '2020-03-22 15:13:16',
                'video' => 'uploads/videos/5e77808badddb.mp4',
                'content_text' => NULL,
                'image_preview' => '5e77808bafbdd',
                'type' => 1,
            ),
            43 => 
            array (
                'id' => 47,
                'service_id' => 3,
                'title' => 'new',
                'created_at' => '2020-03-22 15:18:31',
                'updated_at' => '2020-03-22 15:18:31',
                'video' => 'uploads/videos/5e7781c690eff.mp4',
                'content_text' => NULL,
                'image_preview' => '5e7781c692e90.png',
                'type' => 1,
            ),
            44 => 
            array (
                'id' => 48,
                'service_id' => 3,
                'title' => 'value',
                'created_at' => '2020-03-22 15:22:13',
                'updated_at' => '2020-03-22 15:22:13',
                'video' => 'uploads/videos/5e7782a4d35ad.mp4',
                'content_text' => NULL,
                'image_preview' => '5e7782a4d4aaf.png',
                'type' => 1,
            ),
            45 => 
            array (
                'id' => 49,
                'service_id' => 2,
                'title' => 'new',
                'created_at' => '2020-03-22 15:25:59',
                'updated_at' => '2020-03-22 15:38:42',
                'video' => 'uploads/videos/5e7786816f8f1.mp4',
                'content_text' => NULL,
                'image_preview' => '5e77868172551.png',
                'type' => 1,
            ),
            46 => 
            array (
                'id' => 50,
                'service_id' => 4,
                'title' => 'new',
                'created_at' => '2020-03-22 15:39:22',
                'updated_at' => '2020-03-22 15:41:21',
                'video' => 'uploads/videos/5e778720cac11.mp4',
                'content_text' => NULL,
                'image_preview' => '5e778720cd61e.png',
                'type' => 1,
            ),
            47 => 
            array (
                'id' => 51,
                'service_id' => 4,
                'title' => 'new',
                'created_at' => '2020-03-22 15:40:29',
                'updated_at' => '2020-03-22 15:40:29',
                'video' => 'uploads/videos/5e7786ed7600f.mp4',
                'content_text' => NULL,
                'image_preview' => '5e7786ed77932.png',
                'type' => 1,
            ),
        ));
        
        
    }
}