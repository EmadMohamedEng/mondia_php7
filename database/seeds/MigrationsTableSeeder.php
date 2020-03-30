<?php

use Illuminate\Database\Seeder;

class MigrationsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('migrations')->delete();
        
        \DB::table('migrations')->insert(array (
            0 => 
            array (
                'id' => 133,
                'migration' => '2014_10_12_000000_create_users_table',
                'batch' => 1,
            ),
            1 => 
            array (
                'id' => 134,
                'migration' => '2014_10_12_100000_create_password_resets_table',
                'batch' => 1,
            ),
            2 => 
            array (
                'id' => 135,
                'migration' => '2015_10_31_162633_scaffoldinterfaces',
                'batch' => 1,
            ),
            3 => 
            array (
                'id' => 136,
                'migration' => '2017_08_01_141233_create_permission_tables',
                'batch' => 1,
            ),
            4 => 
            array (
                'id' => 137,
                'migration' => '2017_09_20_131500_create_first_user',
                'batch' => 1,
            ),
            5 => 
            array (
                'id' => 138,
                'migration' => '2017_10_16_084836_create_settings_table',
                'batch' => 1,
            ),
            6 => 
            array (
                'id' => 139,
                'migration' => '2017_10_25_094626_create_translatable_table',
                'batch' => 1,
            ),
            7 => 
            array (
                'id' => 140,
                'migration' => '2017_10_25_095102_create_language_table',
                'batch' => 1,
            ),
            8 => 
            array (
                'id' => 141,
                'migration' => '2017_10_25_095200_create_translate_body',
                'batch' => 1,
            ),
            9 => 
            array (
                'id' => 142,
                'migration' => '2017_10_25_113637_add_short_code_and_rtl_to_language',
                'batch' => 1,
            ),
            10 => 
            array (
                'id' => 143,
                'migration' => '2017_10_31_091358_create_static_translations_table',
                'batch' => 1,
            ),
            11 => 
            array (
                'id' => 144,
                'migration' => '2017_10_31_091835_create_static_body_table',
                'batch' => 1,
            ),
            12 => 
            array (
                'id' => 145,
                'migration' => '2017_11_09_081714_create_role_route_table',
                'batch' => 1,
            ),
            13 => 
            array (
                'id' => 146,
                'migration' => '2017_11_09_081714_create_routes_table',
                'batch' => 1,
            ),
            14 => 
            array (
                'id' => 147,
                'migration' => '2017_11_09_081715_add_foreign_keys_to_role_route_table',
                'batch' => 1,
            ),
            15 => 
            array (
                'id' => 148,
                'migration' => '2017_11_14_115606_isolate_controller_from_method',
                'batch' => 1,
            ),
            16 => 
            array (
                'id' => 149,
                'migration' => '2017_11_15_092424_adding_standards_routes',
                'batch' => 1,
            ),
            17 => 
            array (
                'id' => 150,
                'migration' => '2017_12_19_092552_add_type_field_to_settings',
                'batch' => 1,
            ),
            18 => 
            array (
                'id' => 151,
                'migration' => '2018_01_04_081336_adding_priorty_field_to_role_table',
                'batch' => 1,
            ),
            19 => 
            array (
                'id' => 152,
                'migration' => '2018_01_08_074915_phone_col_null',
                'batch' => 1,
            ),
            20 => 
            array (
                'id' => 153,
                'migration' => '2018_01_28_075912_add_type_table_to_template',
                'batch' => 1,
            ),
            21 => 
            array (
                'id' => 154,
                'migration' => '2018_01_28_080917_rename_type_coloumn_in_settings',
                'batch' => 1,
            ),
            22 => 
            array (
                'id' => 155,
                'migration' => '2018_01_28_081429_add_foriegn_keys_to_settings_table',
                'batch' => 1,
            ),
            23 => 
            array (
                'id' => 156,
                'migration' => '2018_01_28_090855_add_order_coloumn_to_settings_table',
                'batch' => 1,
            ),
            24 => 
            array (
                'id' => 157,
                'migration' => '2018_02_04_080901_create_delete_all_table',
                'batch' => 1,
            ),
            25 => 
            array (
                'id' => 158,
                'migration' => '2018_12_18_091104_create_operators_table',
                'batch' => 1,
            ),
            26 => 
            array (
                'id' => 159,
                'migration' => '2018_12_18_091104_create_posts_table',
                'batch' => 1,
            ),
            27 => 
            array (
                'id' => 160,
                'migration' => '2018_12_18_091104_create_providers_table',
                'batch' => 1,
            ),
            28 => 
            array (
                'id' => 161,
                'migration' => '2018_12_18_091104_create_services_table',
                'batch' => 1,
            ),
            29 => 
            array (
                'id' => 162,
                'migration' => '2018_12_18_091104_create_videos_table',
                'batch' => 1,
            ),
            30 => 
            array (
                'id' => 163,
                'migration' => '2018_12_18_091106_add_foreign_keys_to_posts_table',
                'batch' => 1,
            ),
            31 => 
            array (
                'id' => 164,
                'migration' => '2018_12_18_091106_add_foreign_keys_to_services_table',
                'batch' => 1,
            ),
            32 => 
            array (
                'id' => 165,
                'migration' => '2018_12_24_134449_update_operator_table',
                'batch' => 1,
            ),
            33 => 
            array (
                'id' => 166,
                'migration' => '2018_12_24_135834_create_audios_table',
                'batch' => 1,
            ),
            34 => 
            array (
                'id' => 167,
                'migration' => '2018_12_24_135835_add_foreign_keys_to_audios_table',
                'batch' => 1,
            ),
            35 => 
            array (
                'id' => 168,
                'migration' => '2018_12_26_133947_update_video_table',
                'batch' => 2,
            ),
            36 => 
            array (
                'id' => 169,
                'migration' => '2018_12_27_090718_update_audios_table',
                'batch' => 3,
            ),
            37 => 
            array (
                'id' => 170,
                'migration' => '2018_12_27_102110_update_services_table',
                'batch' => 4,
            ),
            38 => 
            array (
                'id' => 171,
                'migration' => '2018_12_27_102111_update_services_table',
                'batch' => 5,
            ),
            39 => 
            array (
                'id' => 172,
                'migration' => '2018_12_27_104206_rename_videos_table',
                'batch' => 6,
            ),
            40 => 
            array (
                'id' => 173,
                'migration' => '2018_12_27_105750_add_to_contents_table',
                'batch' => 7,
            ),
            41 => 
            array (
                'id' => 174,
                'migration' => '2018_12_27_133111_create_countries_table',
                'batch' => 8,
            ),
            42 => 
            array (
                'id' => 175,
                'migration' => '2018_12_27_132832_add_country_to_operations',
                'batch' => 9,
            ),
            43 => 
            array (
                'id' => 176,
                'migration' => '2019_12_31_091104_add_settings',
                'batch' => 10,
            ),
            44 => 
            array (
                'id' => 177,
                'migration' => '2020_01_15_123132_create_du_intgration',
                'batch' => 10,
            ),
            45 => 
            array (
                'id' => 178,
                'migration' => '2020_01_16_113647_edit_du_integration',
                'batch' => 10,
            ),
            46 => 
            array (
                'id' => 179,
                'migration' => '2020_01_27_164838_add_azan_flag_to_rbts_table',
                'batch' => 10,
            ),
            47 => 
            array (
                'id' => 180,
                'migration' => '2020_02_03_103133_make_all_table_innodb',
                'batch' => 10,
            ),
            48 => 
            array (
                'id' => 181,
                'migration' => '2020_03_22_113551_add_column_to_contents_table',
                'batch' => 11,
            ),
            49 => 
            array (
                'id' => 182,
                'migration' => '2020_03_22_115241_change_image_in_providers_table',
                'batch' => 12,
            ),
            50 => 
            array (
                'id' => 183,
                'migration' => '2020_03_22_162246_create_audios_table',
                'batch' => 0,
            ),
            51 => 
            array (
                'id' => 184,
                'migration' => '2020_03_22_162246_create_contents_table',
                'batch' => 0,
            ),
            52 => 
            array (
                'id' => 185,
                'migration' => '2020_03_22_162246_create_countries_table',
                'batch' => 0,
            ),
            53 => 
            array (
                'id' => 186,
                'migration' => '2020_03_22_162246_create_delete_all_flags_table',
                'batch' => 0,
            ),
            54 => 
            array (
                'id' => 187,
                'migration' => '2020_03_22_162246_create_du_integration_table',
                'batch' => 0,
            ),
            55 => 
            array (
                'id' => 188,
                'migration' => '2020_03_22_162246_create_languages_table',
                'batch' => 0,
            ),
            56 => 
            array (
                'id' => 189,
                'migration' => '2020_03_22_162246_create_operators_table',
                'batch' => 0,
            ),
            57 => 
            array (
                'id' => 190,
                'migration' => '2020_03_22_162246_create_password_resets_table',
                'batch' => 0,
            ),
            58 => 
            array (
                'id' => 191,
                'migration' => '2020_03_22_162246_create_permissions_table',
                'batch' => 0,
            ),
            59 => 
            array (
                'id' => 192,
                'migration' => '2020_03_22_162246_create_posts_table',
                'batch' => 0,
            ),
            60 => 
            array (
                'id' => 193,
                'migration' => '2020_03_22_162246_create_providers_table',
                'batch' => 0,
            ),
            61 => 
            array (
                'id' => 194,
                'migration' => '2020_03_22_162246_create_relations_table',
                'batch' => 0,
            ),
            62 => 
            array (
                'id' => 195,
                'migration' => '2020_03_22_162246_create_roles_table',
                'batch' => 0,
            ),
            63 => 
            array (
                'id' => 196,
                'migration' => '2020_03_22_162246_create_role_has_permissions_table',
                'batch' => 0,
            ),
            64 => 
            array (
                'id' => 197,
                'migration' => '2020_03_22_162246_create_role_route_table',
                'batch' => 0,
            ),
            65 => 
            array (
                'id' => 198,
                'migration' => '2020_03_22_162246_create_routes_table',
                'batch' => 0,
            ),
            66 => 
            array (
                'id' => 199,
                'migration' => '2020_03_22_162246_create_scaffoldinterfaces_table',
                'batch' => 0,
            ),
            67 => 
            array (
                'id' => 200,
                'migration' => '2020_03_22_162246_create_services_table',
                'batch' => 0,
            ),
            68 => 
            array (
                'id' => 201,
                'migration' => '2020_03_22_162246_create_settings_table',
                'batch' => 0,
            ),
            69 => 
            array (
                'id' => 202,
                'migration' => '2020_03_22_162246_create_static_bodies_table',
                'batch' => 0,
            ),
            70 => 
            array (
                'id' => 203,
                'migration' => '2020_03_22_162246_create_static_translations_table',
                'batch' => 0,
            ),
            71 => 
            array (
                'id' => 204,
                'migration' => '2020_03_22_162246_create_tans_bodies_table',
                'batch' => 0,
            ),
            72 => 
            array (
                'id' => 205,
                'migration' => '2020_03_22_162246_create_translatables_table',
                'batch' => 0,
            ),
            73 => 
            array (
                'id' => 206,
                'migration' => '2020_03_22_162246_create_types_table',
                'batch' => 0,
            ),
            74 => 
            array (
                'id' => 207,
                'migration' => '2020_03_22_162246_create_users_table',
                'batch' => 0,
            ),
            75 => 
            array (
                'id' => 208,
                'migration' => '2020_03_22_162246_create_user_has_permissions_table',
                'batch' => 0,
            ),
            76 => 
            array (
                'id' => 209,
                'migration' => '2020_03_22_162246_create_user_has_roles_table',
                'batch' => 0,
            ),
            77 => 
            array (
                'id' => 210,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_audios_table',
                'batch' => 0,
            ),
            78 => 
            array (
                'id' => 211,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_contents_table',
                'batch' => 0,
            ),
            79 => 
            array (
                'id' => 212,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_delete_all_flags_table',
                'batch' => 0,
            ),
            80 => 
            array (
                'id' => 213,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_operators_table',
                'batch' => 0,
            ),
            81 => 
            array (
                'id' => 214,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_posts_table',
                'batch' => 0,
            ),
            82 => 
            array (
                'id' => 215,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_relations_table',
                'batch' => 0,
            ),
            83 => 
            array (
                'id' => 216,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_role_has_permissions_table',
                'batch' => 0,
            ),
            84 => 
            array (
                'id' => 217,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_role_route_table',
                'batch' => 0,
            ),
            85 => 
            array (
                'id' => 218,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_services_table',
                'batch' => 0,
            ),
            86 => 
            array (
                'id' => 219,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_settings_table',
                'batch' => 0,
            ),
            87 => 
            array (
                'id' => 220,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_static_bodies_table',
                'batch' => 0,
            ),
            88 => 
            array (
                'id' => 221,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_tans_bodies_table',
                'batch' => 0,
            ),
            89 => 
            array (
                'id' => 222,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_user_has_permissions_table',
                'batch' => 0,
            ),
            90 => 
            array (
                'id' => 223,
                'migration' => '2020_03_22_162251_add_foreign_keys_to_user_has_roles_table',
                'batch' => 0,
            ),
        ));
        
        
    }
}