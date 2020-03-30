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
            22 =>
            array (
                'id' => 27,
                'table_name' => 'providers',
                'record_id' => '13',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:34:36',
                'updated_at' => '2020-03-30 08:34:36',
            ),
            23 =>
            array (
                'id' => 28,
                'table_name' => 'providers',
                'record_id' => '14',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:35:01',
                'updated_at' => '2020-03-30 08:35:01',
            ),
            24 =>
            array (
                'id' => 29,
                'table_name' => 'providers',
                'record_id' => '15',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:35:40',
                'updated_at' => '2020-03-30 08:35:40',
            ),
            25 =>
            array (
                'id' => 30,
                'table_name' => 'providers',
                'record_id' => '16',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:36:06',
                'updated_at' => '2020-03-30 08:36:06',
            ),
            26 =>
            array (
                'id' => 31,
                'table_name' => 'services',
                'record_id' => '23',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:37:13',
                'updated_at' => '2020-03-30 08:37:13',
            ),
            27 =>
            array (
                'id' => 32,
                'table_name' => 'services',
                'record_id' => '24',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:38:28',
                'updated_at' => '2020-03-30 08:38:28',
            ),
            28 =>
            array (
                'id' => 33,
                'table_name' => 'services',
                'record_id' => '25',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:39:32',
                'updated_at' => '2020-03-30 08:39:32',
            ),
            29 =>
            array (
                'id' => 34,
                'table_name' => 'contents',
                'record_id' => '53',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:41:08',
                'updated_at' => '2020-03-30 08:41:08',
            ),
            30 =>
            array (
                'id' => 35,
                'table_name' => 'contents',
                'record_id' => '54',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:41:50',
                'updated_at' => '2020-03-30 08:41:50',
            ),
            31 =>
            array (
                'id' => 36,
                'table_name' => 'contents',
                'record_id' => '55',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:42:15',
                'updated_at' => '2020-03-30 08:42:15',
            ),
            32 =>
            array (
                'id' => 37,
                'table_name' => 'contents',
                'record_id' => '56',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:42:59',
                'updated_at' => '2020-03-30 08:42:59',
            ),
            33 =>
            array (
                'id' => 38,
                'table_name' => 'contents',
                'record_id' => '57',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:44:48',
                'updated_at' => '2020-03-30 08:44:48',
            ),
            34 =>
            array (
                'id' => 39,
                'table_name' => 'contents',
                'record_id' => '57',
                'column_name' => 'content_text',
                'created_at' => '2020-03-30 08:44:48',
                'updated_at' => '2020-03-30 08:44:48',
            ),
            35 =>
            array (
                'id' => 40,
                'table_name' => 'contents',
                'record_id' => '58',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:46:26',
                'updated_at' => '2020-03-30 08:46:26',
            ),
            36 =>
            array (
                'id' => 41,
                'table_name' => 'contents',
                'record_id' => '58',
                'column_name' => 'content_text',
                'created_at' => '2020-03-30 08:46:26',
                'updated_at' => '2020-03-30 08:46:26',
            ),
            37 =>
            array (
                'id' => 42,
                'table_name' => 'contents',
                'record_id' => '59',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:47:22',
                'updated_at' => '2020-03-30 08:47:22',
            ),
            38 =>
            array (
                'id' => 43,
                'table_name' => 'contents',
                'record_id' => '60',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:47:50',
                'updated_at' => '2020-03-30 08:47:50',
            ),
            39 =>
            array (
                'id' => 44,
                'table_name' => 'contents',
                'record_id' => '61',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:48:25',
                'updated_at' => '2020-03-30 08:48:25',
            ),
            40 =>
            array (
                'id' => 45,
                'table_name' => 'contents',
                'record_id' => '62',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:49:06',
                'updated_at' => '2020-03-30 08:49:06',
            ),
            41 =>
            array (
                'id' => 46,
                'table_name' => 'audios',
                'record_id' => '22',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:55:40',
                'updated_at' => '2020-03-30 08:55:40',
            ),
            42 =>
            array (
                'id' => 47,
                'table_name' => 'audios',
                'record_id' => '23',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:56:15',
                'updated_at' => '2020-03-30 08:56:15',
            ),
            43 =>
            array (
                'id' => 48,
                'table_name' => 'audios',
                'record_id' => '24',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:56:53',
                'updated_at' => '2020-03-30 08:56:53',
            ),
            44 =>
            array (
                'id' => 49,
                'table_name' => 'audios',
                'record_id' => '25',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:57:29',
                'updated_at' => '2020-03-30 08:57:29',
            ),
            45 =>
            array (
                'id' => 50,
                'table_name' => 'audios',
                'record_id' => '26',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:57:59',
                'updated_at' => '2020-03-30 08:57:59',
            ),
            46 =>
            array (
                'id' => 51,
                'table_name' => 'audios',
                'record_id' => '27',
                'column_name' => 'title',
                'created_at' => '2020-03-30 08:58:45',
                'updated_at' => '2020-03-30 08:58:45',
            ),
            47 =>
            array (
                'id' => 52,
                'table_name' => 'services',
                'record_id' => '26',
                'column_name' => 'title',
                'created_at' => '2020-03-30 09:01:51',
                'updated_at' => '2020-03-30 09:01:51',
            ),
            48 =>
            array (
                'id' => 53,
                'table_name' => 'services',
                'record_id' => '27',
                'column_name' => 'title',
                'created_at' => '2020-03-30 09:03:39',
                'updated_at' => '2020-03-30 09:03:39',
            ),
        ));


    }
}
