<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('settings')->delete();
        
        \DB::table('settings')->insert(array (
            0 => 
            array (
                'id' => 25,
                'key' => 'uploadAllow',
                'value' => 'all',
                'created_at' => '2018-02-04 10:04:09',
                'updated_at' => '2018-02-04 10:04:09',
                'type_id' => 6,
                'order' => 0,
            ),
            1 => 
            array (
                'id' => 26,
                'key' => 'facebook',
                'value' => 'http://www.facebook.com/iVASEgypt',
                'created_at' => '2018-12-19 07:19:19',
                'updated_at' => '2018-12-19 07:19:19',
                'type_id' => 2,
                'order' => 0,
            ),
            2 => 
            array (
                'id' => 27,
                'key' => 'twitter',
                'value' => 'http://www.twitter.com/iVASEgypt',
                'created_at' => '2018-12-19 07:25:26',
                'updated_at' => '2018-12-19 07:25:26',
                'type_id' => 2,
                'order' => 0,
            ),
            3 => 
            array (
                'id' => 28,
                'key' => 'instagram',
                'value' => 'http://www.instagram.com/iVASEgypt',
                'created_at' => '2018-12-19 07:25:43',
                'updated_at' => '2018-12-19 07:25:43',
                'type_id' => 2,
                'order' => 0,
            ),
            4 => 
            array (
                'id' => 29,
                'key' => 'soundcloud',
                'value' => 'http://www.soundcloud.com/iVASEgypt',
                'created_at' => '2018-12-19 07:26:12',
                'updated_at' => '2018-12-19 07:26:12',
                'type_id' => 2,
                'order' => 0,
            ),
            5 => 
            array (
                'id' => 30,
                'key' => 'youtube',
                'value' => 'https://www.youtube.com/channel/UCoaSZFW4h6xITQVJJ__ZY3g?sub_confirmation=1',
                'created_at' => '2018-12-19 07:26:29',
                'updated_at' => '2018-12-19 07:26:29',
                'type_id' => 2,
                'order' => 0,
            ),
            6 => 
            array (
                'id' => 31,
                'key' => 'linkedin',
                'value' => 'http://www.linkedin.com/company-beta/3354483',
                'created_at' => '2018-12-19 07:26:44',
                'updated_at' => '2018-12-19 07:26:44',
                'type_id' => 2,
                'order' => 0,
            ),
            7 => 
            array (
                'id' => 64,
                'key' => 'home_page_logo',
                'value' => 'uploads/settings_images/5e5cf927166e1.png',
                'created_at' => '2019-12-31 10:50:04',
                'updated_at' => '2019-12-31 08:54:06',
                'type_id' => 3,
                'order' => 0,
            ),
            8 => 
            array (
                'id' => 65,
                'key' => 'header_logo',
                'value' => 'uploads/settings_images/5e5cf94047ffc.png',
                'created_at' => '2019-12-31 10:50:04',
                'updated_at' => '2019-12-31 08:54:06',
                'type_id' => 3,
                'order' => 0,
            ),
            9 => 
            array (
                'id' => 66,
                'key' => 'loading_image',
                'value' => 'uploads/settings_images/5e5cf954396bd.png',
                'created_at' => '2019-12-31 10:50:04',
                'updated_at' => '2019-12-31 08:54:06',
                'type_id' => 3,
                'order' => 0,
            ),
            10 => 
            array (
                'id' => 67,
                'key' => 'title_page',
                'value' => 'islamic WebApp',
                'created_at' => '2019-12-31 10:50:04',
                'updated_at' => '2019-12-31 08:54:06',
                'type_id' => 2,
                'order' => 0,
            ),
            11 => 
            array (
                'id' => 68,
                'key' => 'fav_icon',
                'value' => 'uploads/settings_images/5e5cf9743fb3e.png',
                'created_at' => '2019-12-31 10:50:04',
                'updated_at' => '2019-12-31 08:54:06',
                'type_id' => 3,
                'order' => 0,
            ),
            12 => 
            array (
                'id' => 69,
                'key' => 'copy_rights',
                'value' => 'Copyright © 2020 islamic services Powered by DIGIZONE',
                'created_at' => '2019-12-31 10:50:04',
                'updated_at' => '2019-12-31 08:54:06',
                'type_id' => 2,
                'order' => 0,
            ),
            13 => 
            array (
                'id' => 70,
                'key' => 'title_menu',
                'value' => 'دو الخير',
                'created_at' => '2019-12-31 10:50:04',
                'updated_at' => '2019-12-31 08:54:06',
                'type_id' => 3,
                'order' => 0,
            ),
            14 => 
            array (
                'id' => 71,
                'key' => 'enable_testing',
                'value' => '1',
                'created_at' => '2020-03-03 12:42:27',
                'updated_at' => '2020-03-03 12:42:27',
                'type_id' => 7,
                'order' => 0,
            ),
            15 => 
            array (
                'id' => 72,
                'key' => 'enable_social',
                'value' => '1',
                'created_at' => '2020-03-03 12:42:27',
                'updated_at' => '2020-03-03 12:42:27',
                'type_id' => 7,
                'order' => 0,
            ),
            16 => 
            array (
                'id' => 73,
                'key' => 'pageLength',
                'value' => '20',
                'created_at' => '2020-03-03 12:42:27',
                'updated_at' => '2020-03-03 12:42:27',
                'type_id' => 2,
                'order' => 0,
            ),
            17 => 
            array (
                'id' => 74,
                'key' => 'facebook',
                'value' => 'http://www.facebook.com/iVASEgypt',
                'created_at' => '2018-12-19 07:19:19',
                'updated_at' => '2018-12-19 07:19:19',
                'type_id' => 10,
                'order' => 0,
            ),
            18 => 
            array (
                'id' => 75,
                'key' => 'twitter',
                'value' => 'http://www.twitter.com/iVASEgypt',
                'created_at' => '2018-12-19 07:19:19',
                'updated_at' => '2018-12-19 07:19:19',
                'type_id' => 10,
                'order' => 0,
            ),
            19 => 
            array (
                'id' => 76,
                'key' => 'instagram',
                'value' => 'http://www.instagram.com/iVASEgypt',
                'created_at' => '2018-12-19 07:19:19',
                'updated_at' => '2018-12-19 07:19:19',
                'type_id' => 10,
                'order' => 0,
            ),
            20 => 
            array (
                'id' => 77,
                'key' => 'soundcloud',
                'value' => 'http://www.soundcloud.com/iVASEgypt',
                'created_at' => '2018-12-19 07:19:19',
                'updated_at' => '2018-12-19 07:19:19',
                'type_id' => 10,
                'order' => 0,
            ),
            21 => 
            array (
                'id' => 78,
                'key' => 'youtube',
                'value' => 'https://www.youtube.com/channel/UCoaSZFW4h6xITQVJJ__ZY3g?sub_confirmation=1',
                'created_at' => '2018-12-19 07:19:19',
                'updated_at' => '2018-12-19 07:19:19',
                'type_id' => 10,
                'order' => 0,
            ),
            22 => 
            array (
                'id' => 79,
                'key' => 'linkedin',
                'value' => 'http://www.linkedin.com/company-beta/3354483',
                'created_at' => '2018-12-19 07:19:19',
                'updated_at' => '2018-12-19 07:19:19',
                'type_id' => 10,
                'order' => 0,
            ),
        ));
        
        
    }
}