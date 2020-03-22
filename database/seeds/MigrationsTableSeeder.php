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
                'migration' => '2014_10_12_000000_create_users_table',
                'batch' => 1,
            ),
            1 => 
            array (
                'migration' => '2014_10_12_100000_create_password_resets_table',
                'batch' => 1,
            ),
            2 => 
            array (
                'migration' => '2015_10_31_162633_scaffoldinterfaces',
                'batch' => 1,
            ),
            3 => 
            array (
                'migration' => '2017_08_01_141233_create_permission_tables',
                'batch' => 1,
            ),
            4 => 
            array (
                'migration' => '2017_09_20_131500_create_first_user',
                'batch' => 1,
            ),
            5 => 
            array (
                'migration' => '2017_10_16_084836_create_settings_table',
                'batch' => 1,
            ),
            6 => 
            array (
                'migration' => '2017_10_25_094626_create_translatable_table',
                'batch' => 1,
            ),
            7 => 
            array (
                'migration' => '2017_10_25_095102_create_language_table',
                'batch' => 1,
            ),
            8 => 
            array (
                'migration' => '2017_10_25_095200_create_translate_body',
                'batch' => 1,
            ),
            9 => 
            array (
                'migration' => '2017_10_25_113637_add_short_code_and_rtl_to_language',
                'batch' => 1,
            ),
            10 => 
            array (
                'migration' => '2017_10_31_091358_create_static_translations_table',
                'batch' => 1,
            ),
            11 => 
            array (
                'migration' => '2017_10_31_091835_create_static_body_table',
                'batch' => 1,
            ),
            12 => 
            array (
                'migration' => '2017_11_09_081714_create_role_route_table',
                'batch' => 1,
            ),
            13 => 
            array (
                'migration' => '2017_11_09_081714_create_routes_table',
                'batch' => 1,
            ),
            14 => 
            array (
                'migration' => '2017_11_09_081715_add_foreign_keys_to_role_route_table',
                'batch' => 1,
            ),
            15 => 
            array (
                'migration' => '2017_11_14_115606_isolate_controller_from_method',
                'batch' => 1,
            ),
            16 => 
            array (
                'migration' => '2017_11_15_092424_adding_standards_routes',
                'batch' => 1,
            ),
            17 => 
            array (
                'migration' => '2017_12_19_092552_add_type_field_to_settings',
                'batch' => 1,
            ),
            18 => 
            array (
                'migration' => '2018_01_04_081336_adding_priorty_field_to_role_table',
                'batch' => 1,
            ),
            19 => 
            array (
                'migration' => '2018_01_08_074915_phone_col_null',
                'batch' => 1,
            ),
            20 => 
            array (
                'migration' => '2018_01_28_075912_add_type_table_to_template',
                'batch' => 1,
            ),
            21 => 
            array (
                'migration' => '2018_01_28_080917_rename_type_coloumn_in_settings',
                'batch' => 1,
            ),
            22 => 
            array (
                'migration' => '2018_01_28_081429_add_foriegn_keys_to_settings_table',
                'batch' => 1,
            ),
            23 => 
            array (
                'migration' => '2018_01_28_090855_add_order_coloumn_to_settings_table',
                'batch' => 1,
            ),
            24 => 
            array (
                'migration' => '2018_02_04_080901_create_delete_all_table',
                'batch' => 1,
            ),
            25 => 
            array (
                'migration' => '2018_12_18_091104_create_operators_table',
                'batch' => 1,
            ),
            26 => 
            array (
                'migration' => '2018_12_18_091104_create_posts_table',
                'batch' => 1,
            ),
            27 => 
            array (
                'migration' => '2018_12_18_091104_create_providers_table',
                'batch' => 1,
            ),
            28 => 
            array (
                'migration' => '2018_12_18_091104_create_services_table',
                'batch' => 1,
            ),
            29 => 
            array (
                'migration' => '2018_12_18_091104_create_videos_table',
                'batch' => 1,
            ),
            30 => 
            array (
                'migration' => '2018_12_18_091106_add_foreign_keys_to_posts_table',
                'batch' => 1,
            ),
            31 => 
            array (
                'migration' => '2018_12_18_091106_add_foreign_keys_to_services_table',
                'batch' => 1,
            ),
            32 => 
            array (
                'migration' => '2018_12_24_134449_update_operator_table',
                'batch' => 1,
            ),
            33 => 
            array (
                'migration' => '2018_12_24_135834_create_audios_table',
                'batch' => 1,
            ),
            34 => 
            array (
                'migration' => '2018_12_24_135835_add_foreign_keys_to_audios_table',
                'batch' => 1,
            ),
            35 => 
            array (
                'migration' => '2018_12_26_133947_update_video_table',
                'batch' => 2,
            ),
            36 => 
            array (
                'migration' => '2018_12_27_090718_update_audios_table',
                'batch' => 3,
            ),
            37 => 
            array (
                'migration' => '2018_12_27_102110_update_services_table',
                'batch' => 4,
            ),
            38 => 
            array (
                'migration' => '2018_12_27_102111_update_services_table',
                'batch' => 5,
            ),
            39 => 
            array (
                'migration' => '2018_12_27_104206_rename_videos_table',
                'batch' => 6,
            ),
            40 => 
            array (
                'migration' => '2018_12_27_105750_add_to_contents_table',
                'batch' => 7,
            ),
            41 => 
            array (
                'migration' => '2018_12_27_133111_create_countries_table',
                'batch' => 8,
            ),
            42 => 
            array (
                'migration' => '2018_12_27_132832_add_country_to_operations',
                'batch' => 9,
            ),
            43 => 
            array (
                'migration' => '2019_12_31_091104_add_settings',
                'batch' => 10,
            ),
            44 => 
            array (
                'migration' => '2020_01_15_123132_create_du_intgration',
                'batch' => 10,
            ),
            45 => 
            array (
                'migration' => '2020_01_16_113647_edit_du_integration',
                'batch' => 10,
            ),
            46 => 
            array (
                'migration' => '2020_01_27_164838_add_azan_flag_to_rbts_table',
                'batch' => 10,
            ),
            47 => 
            array (
                'migration' => '2020_02_03_103133_make_all_table_innodb',
                'batch' => 10,
            ),
            48 => 
            array (
                'migration' => '2020_03_22_113551_add_column_to_contents_table',
                'batch' => 11,
            ),
            49 => 
            array (
                'migration' => '2020_03_22_115241_change_image_in_providers_table',
                'batch' => 12,
            ),
            50 => 
            array (
                'migration' => '2020_03_22_162246_create_audios_table',
                'batch' => 0,
            ),
            51 => 
            array (
                'migration' => '2020_03_22_162246_create_contents_table',
                'batch' => 0,
            ),
            52 => 
            array (
                'migration' => '2020_03_22_162246_create_countries_table',
                'batch' => 0,
            ),
            53 => 
            array (
                'migration' => '2020_03_22_162246_create_delete_all_flags_table',
                'batch' => 0,
            ),
            54 => 
            array (
                'migration' => '2020_03_22_162246_create_du_integration_table',
                'batch' => 0,
            ),
            55 => 
            array (
                'migration' => '2020_03_22_162246_create_languages_table',
                'batch' => 0,
            ),
            56 => 
            array (
                'migration' => '2020_03_22_162246_create_operators_table',
                'batch' => 0,
            ),
            57 => 
            array (
                'migration' => '2020_03_22_162246_create_password_resets_table',
                'batch' => 0,
            ),
            58 => 
            array (
                'migration' => '2020_03_22_162246_create_permissions_table',
                'batch' => 0,
            ),
            59 => 
            array (
                'migration' => '2020_03_22_162246_create_posts_table',
                'batch' => 0,
            ),
            60 => 
            array (
                'migration' => '2020_03_22_162246_create_providers_table',
                'batch' => 0,
            ),
            61 => 
            array (
                'migration' => '2020_03_22_162246_create_relations_table',
                'batch' => 0,
            ),
            62 => 
            array (
                'migration' => '2020_03_22_162246_create_roles_table',
                'batch' => 0,
            ),
            63 => 
            array (
                'migration' => '2020_03_22_162246_create_role_has_permissions_table',
                'batch' => 0,
            ),
            64 => 
            array (
                'migration' => '2020_03_22_162246_create_role_route_table',
                'batch' => 0,
            ),
            65 => 
            array (
                'migration' => '2020_03_22_162246_create_routes_table',
                'batch' => 0,
            ),
            66 => 
            array (
                'migration' => '2020_03_22_162246_create_scaffoldinterfaces_table',
                'batch' => 0,
            ),
            67 => 
            array (
                'migration' => '2020_03_22_162246_create_services_table',
                'batch' => 0,
            ),
            68 => 
            array (
                'migration' => '2020_03_22_162246_create_settings_table',
                'batch' => 0,
            ),
            69 => 
            array (
                'migration' => '2020_03_22_162246_create_static_bodies_table',
                'batch' => 0,
            ),
            70 => 
            array (
                'migration' => '2020_03_22_162246_create_static_translations_table',
                'batch' => 0,
            ),
            71 => 
            array (
                'migration' => '2020_03_22_162246_create_tans_bodies_table',
                'batch' => 0,
            ),
            72 => 
            array (
                'migration' => '2020_03_22_162246_create_translatables_table',
                'batch' => 0,
            ),
            73 => 
            array (
                'migration' => '2020_03_22_162246_create_types_table',
                'batch' => 0,
            ),
            74 => 
            array (
                'migration' => '2020_03_22_162246_create_users_table',
                'batch' => 0,
            ),
            75 => 
            array (
                'migration' => '2020_03_22_162246_create_user_has_permissions_table',
                'batch' => 0,
            ),
            76 => 
            array (
                'migration' => '2020_03_22_162246_create_user_has_roles_table',
                'batch' => 0,
            ),
            77 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_audios_table',
                'batch' => 0,
            ),
            78 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_contents_table',
                'batch' => 0,
            ),
            79 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_delete_all_flags_table',
                'batch' => 0,
            ),
            80 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_operators_table',
                'batch' => 0,
            ),
            81 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_posts_table',
                'batch' => 0,
            ),
            82 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_relations_table',
                'batch' => 0,
            ),
            83 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_role_has_permissions_table',
                'batch' => 0,
            ),
            84 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_role_route_table',
                'batch' => 0,
            ),
            85 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_services_table',
                'batch' => 0,
            ),
            86 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_settings_table',
                'batch' => 0,
            ),
            87 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_static_bodies_table',
                'batch' => 0,
            ),
            88 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_tans_bodies_table',
                'batch' => 0,
            ),
            89 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_user_has_permissions_table',
                'batch' => 0,
            ),
            90 => 
            array (
                'migration' => '2020_03_22_162251_add_foreign_keys_to_user_has_roles_table',
                'batch' => 0,
            ),
        ));
        
        
    }
}