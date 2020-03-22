<?php

use Illuminate\Database\Seeder;

class AudiosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('audios')->delete();
        
        \DB::table('audios')->insert(array (
            0 => 
            array (
                'id' => 5,
                'provider_id' => 1,
                'operator_id' => 7,
                'title' => 'الله أكبر الله أكبر',
                'source' => 'uploads/audios/5c24de0464328.mp3',
                'code' => 49951,
                'created_at' => '2018-12-27 14:13:24',
                'updated_at' => '2018-12-27 14:13:24',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            1 => 
            array (
                'id' => 6,
                'provider_id' => 1,
                'operator_id' => 7,
                'title' => 'حي على الصلاة',
                'source' => 'uploads/audios/5c24de1b81db5.mp3',
                'code' => 49952,
                'created_at' => '2018-12-27 14:13:47',
                'updated_at' => '2018-12-27 14:13:47',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            2 => 
            array (
                'id' => 7,
                'provider_id' => 1,
                'operator_id' => 7,
                'title' => 'الله أكبر الله أكبر 1',
                'source' => 'uploads/audios/5c24de39a6525.mp3',
                'code' => 52243,
                'created_at' => '2018-12-27 14:14:17',
                'updated_at' => '2018-12-27 14:14:17',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            3 => 
            array (
                'id' => 8,
                'provider_id' => 1,
                'operator_id' => 7,
                'title' => 'حي على الصلاة 1',
                'source' => 'uploads/audios/5c24de4e26f7b.mp3',
                'code' => 52244,
                'created_at' => '2018-12-27 14:14:38',
                'updated_at' => '2018-12-27 14:14:38',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            4 => 
            array (
                'id' => 9,
                'provider_id' => 1,
                'operator_id' => 7,
                'title' => 'الله أكبر الله أكبر 2',
                'source' => 'uploads/audios/5c24de633999f.mp3',
                'code' => 52245,
                'created_at' => '2018-12-27 14:14:59',
                'updated_at' => '2018-12-27 14:14:59',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            5 => 
            array (
                'id' => 10,
                'provider_id' => 3,
                'operator_id' => 7,
                'title' => 'الله أكبر الله أكبر',
                'source' => 'uploads/audios/5c24de76bbc38.mp3',
                'code' => 52393,
                'created_at' => '2018-12-27 14:15:18',
                'updated_at' => '2018-12-27 14:15:18',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            6 => 
            array (
                'id' => 11,
                'provider_id' => 3,
                'operator_id' => 8,
                'title' => 'حي على الصلاة',
                'source' => 'uploads/audios/5c24de88f1595.mp3',
                'code' => 52394,
                'created_at' => '2018-12-27 14:15:36',
                'updated_at' => '2018-12-27 14:17:28',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            7 => 
            array (
                'id' => 12,
                'provider_id' => 2,
                'operator_id' => 8,
                'title' => 'الله أكبر الله أكبر',
                'source' => 'uploads/audios/5c24de9d1c74b.mp3',
                'code' => 52395,
                'created_at' => '2018-12-27 14:15:57',
                'updated_at' => '2018-12-27 14:15:57',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            8 => 
            array (
                'id' => 13,
                'provider_id' => 2,
                'operator_id' => 8,
                'title' => 'حي على الصلاة',
                'source' => 'uploads/audios/5c24deb1e0e58.mp3',
                'code' => 52396,
                'created_at' => '2018-12-27 14:16:17',
                'updated_at' => '2018-12-27 14:16:17',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            9 => 
            array (
                'id' => 14,
                'provider_id' => 2,
                'operator_id' => 8,
                'title' => 'الله أكبر الله أكبر 2',
                'source' => 'uploads/audios/5c24df120c69a.mp3',
                'code' => 52245,
                'created_at' => '2018-12-27 14:17:54',
                'updated_at' => '2018-12-27 14:17:54',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            10 => 
            array (
                'id' => 15,
                'provider_id' => 1,
                'operator_id' => 8,
                'title' => 'رسائل العفاسي',
                'source' => '',
                'code' => 1234,
                'created_at' => '2018-12-30 08:57:48',
                'updated_at' => '2018-12-30 08:57:48',
                'video_id' => 1,
                'azan_flage' => 0,
            ),
            11 => 
            array (
                'id' => 16,
                'provider_id' => 1,
                'operator_id' => 8,
                'title' => 'رسائل العفاسي',
                'source' => '',
                'code' => 0,
                'created_at' => '2018-12-30 14:02:29',
                'updated_at' => '2018-12-30 14:02:29',
                'video_id' => 1,
                'azan_flage' => 0,
            ),
        ));
        
        
    }
}