<?php

use Illuminate\Database\Seeder;

class DeleteAllFlagsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('delete_all_flags')->delete();
        
        \DB::table('delete_all_flags')->insert(array (
            0 => 
            array (
                'id' => 2,
                'route_id' => 118,
                'created_at' => '2020-03-30 08:33:09',
                'updated_at' => '2020-03-30 08:33:09',
            ),
            1 => 
            array (
                'id' => 3,
                'route_id' => 132,
                'created_at' => '2020-03-30 08:33:10',
                'updated_at' => '2020-03-30 08:33:10',
            ),
            2 => 
            array (
                'id' => 4,
                'route_id' => 99,
                'created_at' => '2020-03-30 08:33:10',
                'updated_at' => '2020-03-30 08:33:10',
            ),
            3 => 
            array (
                'id' => 5,
                'route_id' => 111,
                'created_at' => '2020-03-30 08:33:10',
                'updated_at' => '2020-03-30 08:33:10',
            ),
            4 => 
            array (
                'id' => 6,
                'route_id' => 85,
                'created_at' => '2020-03-30 08:33:10',
                'updated_at' => '2020-03-30 08:33:10',
            ),
            5 => 
            array (
                'id' => 7,
                'route_id' => 91,
                'created_at' => '2020-03-30 08:33:10',
                'updated_at' => '2020-03-30 08:33:10',
            ),
            6 => 
            array (
                'id' => 8,
                'route_id' => 105,
                'created_at' => '2020-03-30 08:33:10',
                'updated_at' => '2020-03-30 08:33:10',
            ),
        ));
        
        
    }
}