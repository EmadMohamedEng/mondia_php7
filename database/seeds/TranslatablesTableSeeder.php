<?php

use Illuminate\Database\Seeder;

class TranslatablesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('translatables')->delete();
        
        \DB::table('translatables')->insert(array (
            0 => 
            array (
                'id' => 1,
                'table_name' => 'providers',
                'record_id' => '11',
                'column_name' => 'title',
                'created_at' => '2020-03-21 22:23:41',
                'updated_at' => '2020-03-21 22:23:41',
            ),
            1 => 
            array (
                'id' => 2,
                'table_name' => 'services',
                'record_id' => '18',
                'column_name' => 'title',
                'created_at' => '2020-03-21 22:24:08',
                'updated_at' => '2020-03-21 22:24:08',
            ),
            2 => 
            array (
                'id' => 5,
                'table_name' => 'services',
                'record_id' => '21',
                'column_name' => 'title',
                'created_at' => '2020-03-21 23:47:43',
                'updated_at' => '2020-03-21 23:47:43',
            ),
            3 => 
            array (
                'id' => 6,
                'table_name' => 'contents',
                'record_id' => '41',
                'column_name' => 'title',
                'created_at' => '2020-03-21 23:58:09',
                'updated_at' => '2020-03-21 23:58:09',
            ),
            4 => 
            array (
                'id' => 7,
                'table_name' => 'providers',
                'record_id' => '12',
                'column_name' => 'title',
                'created_at' => '2020-03-22 11:57:34',
                'updated_at' => '2020-03-22 11:57:34',
            ),
            5 => 
            array (
                'id' => 8,
                'table_name' => 'services',
                'record_id' => '22',
                'column_name' => 'title',
                'created_at' => '2020-03-22 13:39:52',
                'updated_at' => '2020-03-22 13:39:52',
            ),
            6 => 
            array (
                'id' => 9,
                'table_name' => 'contents',
                'record_id' => '42',
                'column_name' => 'title',
                'created_at' => '2020-03-22 14:56:02',
                'updated_at' => '2020-03-22 14:56:02',
            ),
            7 => 
            array (
                'id' => 10,
                'table_name' => 'contents',
                'record_id' => '42',
                'column_name' => 'content_text',
                'created_at' => '2020-03-22 14:56:02',
                'updated_at' => '2020-03-22 14:56:02',
            ),
            8 => 
            array (
                'id' => 11,
                'table_name' => 'contents',
                'record_id' => '43',
                'column_name' => 'title',
                'created_at' => '2020-03-22 15:09:42',
                'updated_at' => '2020-03-22 15:09:42',
            ),
            9 => 
            array (
                'id' => 12,
                'table_name' => 'contents',
                'record_id' => '43',
                'column_name' => 'content_text',
                'created_at' => '2020-03-22 15:09:42',
                'updated_at' => '2020-03-22 15:09:42',
            ),
            10 => 
            array (
                'id' => 13,
                'table_name' => 'contents',
                'record_id' => '44',
                'column_name' => 'title',
                'created_at' => '2020-03-22 15:11:16',
                'updated_at' => '2020-03-22 15:11:16',
            ),
            11 => 
            array (
                'id' => 14,
                'table_name' => 'contents',
                'record_id' => '44',
                'column_name' => 'content_text',
                'created_at' => '2020-03-22 15:11:17',
                'updated_at' => '2020-03-22 15:11:17',
            ),
            12 => 
            array (
                'id' => 15,
                'table_name' => 'contents',
                'record_id' => '45',
                'column_name' => 'title',
                'created_at' => '2020-03-22 15:11:45',
                'updated_at' => '2020-03-22 15:11:45',
            ),
            13 => 
            array (
                'id' => 16,
                'table_name' => 'contents',
                'record_id' => '45',
                'column_name' => 'content_text',
                'created_at' => '2020-03-22 15:11:45',
                'updated_at' => '2020-03-22 15:11:45',
            ),
            14 => 
            array (
                'id' => 17,
                'table_name' => 'contents',
                'record_id' => '46',
                'column_name' => 'title',
                'created_at' => '2020-03-22 15:13:16',
                'updated_at' => '2020-03-22 15:13:16',
            ),
            15 => 
            array (
                'id' => 18,
                'table_name' => 'contents',
                'record_id' => '47',
                'column_name' => 'title',
                'created_at' => '2020-03-22 15:18:31',
                'updated_at' => '2020-03-22 15:18:31',
            ),
            16 => 
            array (
                'id' => 19,
                'table_name' => 'contents',
                'record_id' => '48',
                'column_name' => 'title',
                'created_at' => '2020-03-22 15:22:13',
                'updated_at' => '2020-03-22 15:22:13',
            ),
            17 => 
            array (
                'id' => 20,
                'table_name' => 'contents',
                'record_id' => '49',
                'column_name' => 'title',
                'created_at' => '2020-03-22 15:25:59',
                'updated_at' => '2020-03-22 15:25:59',
            ),
            18 => 
            array (
                'id' => 21,
                'table_name' => 'contents',
                'record_id' => '50',
                'column_name' => 'title',
                'created_at' => '2020-03-22 15:39:22',
                'updated_at' => '2020-03-22 15:39:22',
            ),
            19 => 
            array (
                'id' => 22,
                'table_name' => 'contents',
                'record_id' => '51',
                'column_name' => 'title',
                'created_at' => '2020-03-22 15:40:29',
                'updated_at' => '2020-03-22 15:40:29',
            ),
        ));
        
        
    }
}