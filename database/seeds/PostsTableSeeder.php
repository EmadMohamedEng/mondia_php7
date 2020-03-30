<?php

use Illuminate\Database\Seeder;

class PostsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('posts')->delete();
        
        \DB::table('posts')->insert(array (
            0 => 
            array (
                'id' => 5,
                'operator_id' => 9,
                'video_id' => 53,
                'show_date' => '2020-03-30',
                'active' => 0,
                'created_at' => '2020-03-30 08:49:19',
                'updated_at' => '2020-03-30 08:49:19',
            ),
            1 => 
            array (
                'id' => 6,
                'operator_id' => 10,
                'video_id' => 53,
                'show_date' => '2020-03-30',
                'active' => 0,
                'created_at' => '2020-03-30 08:49:19',
                'updated_at' => '2020-03-30 08:49:19',
            ),
            2 => 
            array (
                'id' => 7,
                'operator_id' => 9,
                'video_id' => 54,
                'show_date' => '2020-03-30',
                'active' => 0,
                'created_at' => '2020-03-30 08:50:13',
                'updated_at' => '2020-03-30 08:50:13',
            ),
            3 => 
            array (
                'id' => 8,
                'operator_id' => 10,
                'video_id' => 54,
                'show_date' => '2020-03-30',
                'active' => 0,
                'created_at' => '2020-03-30 08:50:13',
                'updated_at' => '2020-03-30 08:50:13',
            ),
            4 => 
            array (
                'id' => 9,
                'operator_id' => 9,
                'video_id' => 58,
                'show_date' => '2020-03-30',
                'active' => 0,
                'created_at' => '2020-03-30 08:50:31',
                'updated_at' => '2020-03-30 08:50:31',
            ),
            5 => 
            array (
                'id' => 10,
                'operator_id' => 10,
                'video_id' => 58,
                'show_date' => '2020-03-30',
                'active' => 0,
                'created_at' => '2020-03-30 08:50:31',
                'updated_at' => '2020-03-30 08:50:31',
            ),
            6 => 
            array (
                'id' => 11,
                'operator_id' => 9,
                'video_id' => 59,
                'show_date' => '2020-03-30',
                'active' => 0,
                'created_at' => '2020-03-30 08:53:45',
                'updated_at' => '2020-03-30 08:53:45',
            ),
            7 => 
            array (
                'id' => 12,
                'operator_id' => 9,
                'video_id' => 62,
                'show_date' => '2020-03-30',
                'active' => 0,
                'created_at' => '2020-03-30 08:54:28',
                'updated_at' => '2020-03-30 08:54:28',
            ),
            8 => 
            array (
                'id' => 13,
                'operator_id' => 10,
                'video_id' => 62,
                'show_date' => '2020-03-30',
                'active' => 0,
                'created_at' => '2020-03-30 08:54:28',
                'updated_at' => '2020-03-30 08:54:28',
            ),
            9 => 
            array (
                'id' => 14,
                'operator_id' => 9,
                'video_id' => 61,
                'show_date' => '2020-03-30',
                'active' => 0,
                'created_at' => '2020-03-30 08:54:53',
                'updated_at' => '2020-03-30 08:54:53',
            ),
        ));
        
        
    }
}