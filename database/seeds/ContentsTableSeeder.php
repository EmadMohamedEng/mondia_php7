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
                'id' => 53,
                'service_id' => 23,
                'title' => 'tfsyr 1',
                'created_at' => '2020-03-30 08:41:08',
                'updated_at' => '2020-03-30 08:41:08',
                'video' => 'uploads/videos/5e81b0a2cbf87.mp4',
                'content_text' => NULL,
                'image_preview' => '5e81b0a2cd063.png',
                'type' => 1,
            ),
            1 => 
            array (
                'id' => 54,
                'service_id' => 23,
                'title' => 'tsyr 2',
                'created_at' => '2020-03-30 08:41:50',
                'updated_at' => '2020-03-30 08:41:50',
                'video' => 'uploads/videos/5e81b0cda2edd.mp4',
                'content_text' => NULL,
                'image_preview' => '5e81b0cda3f09.png',
                'type' => 1,
            ),
            2 => 
            array (
                'id' => 55,
                'service_id' => 23,
                'title' => 'tfsyr3',
                'created_at' => '2020-03-30 08:42:15',
                'updated_at' => '2020-03-30 08:42:15',
                'video' => 'uploads/videos/5e81b0e6d948d.mp4',
                'content_text' => NULL,
                'image_preview' => '5e81b0e6da3c6.png',
                'type' => 1,
            ),
            3 => 
            array (
                'id' => 56,
                'service_id' => 23,
                'title' => 'tfsyr 4',
                'created_at' => '2020-03-30 08:42:59',
                'updated_at' => '2020-03-30 08:43:17',
                'video' => 'uploads/videos/5e81b1134c370.mp4',
                'content_text' => NULL,
                'image_preview' => '5e81b1134d65d.png',
                'type' => 1,
            ),
            4 => 
            array (
                'id' => 57,
                'service_id' => 24,
                'title' => 'rsal 1',
                'created_at' => '2020-03-30 08:44:48',
                'updated_at' => '2020-03-30 08:44:48',
                'video' => NULL,
                'content_text' => 'we are love god without anything just we love him',
                'image_preview' => NULL,
                'type' => 4,
            ),
            5 => 
            array (
                'id' => 58,
                'service_id' => 24,
                'title' => 'resal 2',
                'created_at' => '2020-03-30 08:46:26',
                'updated_at' => '2020-03-30 08:46:26',
                'video' => NULL,
                'content_text' => 'help people that need to eat and wateri mean help who need you',
                'image_preview' => NULL,
                'type' => 4,
            ),
            6 => 
            array (
                'id' => 59,
                'service_id' => 25,
                'title' => 'quran 1',
                'created_at' => '2020-03-30 08:47:22',
                'updated_at' => '2020-03-30 08:47:22',
                'video' => 'uploads/videos/5e81b21a4bbbb.mp3',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 2,
            ),
            7 => 
            array (
                'id' => 60,
                'service_id' => 25,
                'title' => 'quran 2',
                'created_at' => '2020-03-30 08:47:50',
                'updated_at' => '2020-03-30 08:47:50',
                'video' => 'uploads/videos/5e81b23637702.mp3',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 2,
            ),
            8 => 
            array (
                'id' => 61,
                'service_id' => 25,
                'title' => 'quran 3',
                'created_at' => '2020-03-30 08:48:25',
                'updated_at' => '2020-03-30 08:48:25',
                'video' => 'uploads/videos/5e81b259be8d0.mp3',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 2,
            ),
            9 => 
            array (
                'id' => 62,
                'service_id' => 25,
                'title' => 'quran 4',
                'created_at' => '2020-03-30 08:49:06',
                'updated_at' => '2020-03-30 08:49:06',
                'video' => 'uploads/videos/5e81b28286480.mp3',
                'content_text' => NULL,
                'image_preview' => NULL,
                'type' => 2,
            ),
        ));
        
        
    }
}