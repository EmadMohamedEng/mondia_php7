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
                'id' => 22,
                'provider_id' => 13,
                'operator_id' => 9,
                'title' => 'tfsyr 1',
                'source' => 'uploads/audios/5e81b40cc6df4.mp3',
                'code' => 1234,
                'created_at' => '2020-03-30 08:55:40',
                'updated_at' => '2020-03-30 08:55:40',
                'video_id' => NULL,
                'azan_flage' => 1,
            ),
            1 => 
            array (
                'id' => 23,
                'provider_id' => 13,
                'operator_id' => 10,
                'title' => 'tfsyr 2',
                'source' => 'uploads/audios/5e81b42f72303.mp3',
                'code' => 12654,
                'created_at' => '2020-03-30 08:56:15',
                'updated_at' => '2020-03-30 08:56:15',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            2 => 
            array (
                'id' => 24,
                'provider_id' => 14,
                'operator_id' => 9,
                'title' => 'quarn',
                'source' => 'uploads/audios/5e81b45504814.mp3',
                'code' => 122,
                'created_at' => '2020-03-30 08:56:53',
                'updated_at' => '2020-03-30 08:56:53',
                'video_id' => NULL,
                'azan_flage' => 1,
            ),
            3 => 
            array (
                'id' => 25,
                'provider_id' => 14,
                'operator_id' => 9,
                'title' => 'quran 2',
                'source' => 'uploads/audios/5e81b478db0b0.mp3',
                'code' => 2335,
                'created_at' => '2020-03-30 08:57:28',
                'updated_at' => '2020-03-30 08:57:28',
                'video_id' => NULL,
                'azan_flage' => 1,
            ),
            4 => 
            array (
                'id' => 26,
                'provider_id' => 13,
                'operator_id' => 10,
                'title' => 'tsyr 4',
                'source' => 'uploads/audios/5e81b4973d766.mp3',
                'code' => 66,
                'created_at' => '2020-03-30 08:57:59',
                'updated_at' => '2020-03-30 08:57:59',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
            5 => 
            array (
                'id' => 27,
                'provider_id' => 15,
                'operator_id' => 10,
                'title' => 'quran4',
                'source' => 'uploads/audios/5e81b4c58ae50.mp3',
                'code' => 3,
                'created_at' => '2020-03-30 08:58:45',
                'updated_at' => '2020-03-30 08:58:45',
                'video_id' => NULL,
                'azan_flage' => 0,
            ),
        ));
        
        
    }
}