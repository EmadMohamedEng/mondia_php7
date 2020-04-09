<?php

use Illuminate\Database\Seeder;

class RoutesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('routes')->delete();
        
        \DB::table('routes')->insert(array (
            0 => 
            array (
                'id' => 2,
                'method' => 'get',
                'route' => 'setting/new',
                'controller_name' => 'SettingController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2018-02-05 13:39:21',
                'function_name' => 'create',
            ),
            1 => 
            array (
                'id' => 3,
                'method' => 'post',
                'route' => 'setting',
                'controller_name' => 'SettingController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2018-02-05 13:39:21',
                'function_name' => 'store',
            ),
            2 => 
            array (
                'id' => 4,
                'method' => 'get',
                'route' => 'dashboard',
                'controller_name' => 'DashboardController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2018-07-24 13:47:45',
                'function_name' => 'index',
            ),
            3 => 
            array (
                'id' => 6,
                'method' => 'get',
                'route' => 'user_profile',
                'controller_name' => 'UserController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'profile',
            ),
            4 => 
            array (
                'id' => 7,
                'method' => 'post',
                'route' => 'user_profile/updatepassword',
                'controller_name' => 'UserController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2017-11-14 12:29:01',
                'function_name' => 'UpdatePassword',
            ),
            5 => 
            array (
                'id' => 8,
                'method' => 'post',
                'route' => 'user_profile/updateprofilepic',
                'controller_name' => 'UserController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2017-11-14 12:29:08',
                'function_name' => 'UpdateProfilePicture',
            ),
            6 => 
            array (
                'id' => 9,
                'method' => 'post',
                'route' => 'user_profile/updateuserdata',
                'controller_name' => 'UserController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2017-11-14 12:29:19',
                'function_name' => 'UpdateNameAndEmail',
            ),
            7 => 
            array (
                'id' => 10,
                'method' => 'get',
                'route' => 'setting/{id}/delete',
                'controller_name' => 'SettingController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2018-02-05 13:39:22',
                'function_name' => 'destroy',
            ),
            8 => 
            array (
                'id' => 11,
                'method' => 'get',
                'route' => 'setting/{id}/edit',
                'controller_name' => 'SettingController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2018-02-05 13:39:21',
                'function_name' => 'edit',
            ),
            9 => 
            array (
                'id' => 12,
                'method' => 'post',
                'route' => 'setting/{id}',
                'controller_name' => 'SettingController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2020-03-24 11:17:21',
                'function_name' => 'update',
            ),
            10 => 
            array (
                'id' => 14,
                'method' => 'get',
                'route' => 'static_translation',
                'controller_name' => 'StaticTranslationController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2017-11-14 12:29:57',
                'function_name' => 'index',
            ),
            11 => 
            array (
                'id' => 21,
                'method' => 'get',
                'route' => 'file_manager',
                'controller_name' => 'DashboardController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'file_manager',
            ),
            12 => 
            array (
                'id' => 22,
                'method' => 'get',
                'route' => 'upload_items',
                'controller_name' => 'DashboardController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'multi_upload',
            ),
            13 => 
            array (
                'id' => 23,
                'method' => 'post',
                'route' => 'save_items',
                'controller_name' => 'DashboardController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'save_uploaded',
            ),
            14 => 
            array (
                'id' => 24,
                'method' => 'get',
                'route' => 'upload_resize',
                'controller_name' => 'DashboardController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'upload_resize',
            ),
            15 => 
            array (
                'id' => 25,
                'method' => 'post',
                'route' => 'save_image',
                'controller_name' => 'DashboardController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'save_image',
            ),
            16 => 
            array (
                'id' => 26,
                'method' => 'post',
                'route' => 'static_translation/{id}/update',
                'controller_name' => 'StaticTranslationController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2017-11-12 12:19:46',
                'function_name' => 'update',
            ),
            17 => 
            array (
                'id' => 27,
                'method' => 'get',
                'route' => 'static_translation/{id}/delete',
                'controller_name' => 'StaticTranslationController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'destroy',
            ),
            18 => 
            array (
                'id' => 28,
                'method' => 'get',
                'route' => 'language/{id}/delete',
                'controller_name' => 'LanguageController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'destroy',
            ),
            19 => 
            array (
                'id' => 29,
                'method' => 'post',
                'route' => 'language/{id}/update',
                'controller_name' => 'LanguageController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'update',
            ),
            20 => 
            array (
                'id' => 30,
                'method' => 'get',
                'route' => 'roles',
                'controller_name' => 'RoleController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'index',
            ),
            21 => 
            array (
                'id' => 31,
                'method' => 'get',
                'route' => 'roles/new',
                'controller_name' => 'RoleController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'create',
            ),
            22 => 
            array (
                'id' => 32,
                'method' => 'post',
                'route' => 'roles',
                'controller_name' => 'RoleController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'store',
            ),
            23 => 
            array (
                'id' => 33,
                'method' => 'get',
                'route' => 'roles/{id}/delete',
                'controller_name' => 'RoleController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'destroy',
            ),
            24 => 
            array (
                'id' => 34,
                'method' => 'get',
                'route' => 'roles/{id}/edit',
                'controller_name' => 'RoleController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'edit',
            ),
            25 => 
            array (
                'id' => 35,
                'method' => 'post',
                'route' => 'roles/{id}/update',
                'controller_name' => 'RoleController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'update',
            ),
            26 => 
            array (
                'id' => 36,
                'method' => 'get',
                'route' => 'language',
                'controller_name' => 'LanguageController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'index',
            ),
            27 => 
            array (
                'id' => 37,
                'method' => 'get',
                'route' => 'language/create',
                'controller_name' => 'LanguageController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'create',
            ),
            28 => 
            array (
                'id' => 38,
                'method' => 'post',
                'route' => 'language',
                'controller_name' => 'LanguageController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'store',
            ),
            29 => 
            array (
                'id' => 39,
                'method' => 'get',
                'route' => 'language/{id}/edit',
                'controller_name' => 'LanguageController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'edit',
            ),
            30 => 
            array (
                'id' => 40,
                'method' => 'get',
                'route' => 'routes',
                'controller_name' => 'RouteController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'index',
            ),
            31 => 
            array (
                'id' => 41,
                'method' => 'post',
                'route' => 'routes',
                'controller_name' => 'RouteController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'store',
            ),
            32 => 
            array (
                'id' => 42,
                'method' => 'get',
                'route' => 'routes/{id}/edit',
                'controller_name' => 'RouteController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'edit',
            ),
            33 => 
            array (
                'id' => 43,
                'method' => 'post',
                'route' => 'routes/{id}/update',
                'controller_name' => 'RouteController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2018-01-28 09:25:29',
                'function_name' => 'update',
            ),
            34 => 
            array (
                'id' => 44,
                'method' => 'get',
                'route' => 'routes/{id}/delete',
                'controller_name' => 'RouteController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'destroy',
            ),
            35 => 
            array (
                'id' => 45,
                'method' => 'get',
                'route' => 'routes/create',
                'controller_name' => 'RouteController',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
                'function_name' => 'create',
            ),
            36 => 
            array (
                'id' => 57,
                'method' => 'get',
                'route' => 'routes/index_v2',
                'controller_name' => 'RouteController',
                'created_at' => '2017-11-12 13:45:15',
                'updated_at' => '2017-11-12 14:04:53',
                'function_name' => 'index_v2',
            ),
            37 => 
            array (
                'id' => 58,
                'method' => 'get',
                'route' => 'roles/{id}/view_access',
                'controller_name' => 'RoleController',
                'created_at' => '2017-11-14 10:56:14',
                'updated_at' => '2017-11-15 08:14:14',
                'function_name' => 'view_access',
            ),
            38 => 
            array (
                'id' => 59,
                'method' => 'get',
                'route' => 'types/index',
                'controller_name' => 'TypeController',
                'created_at' => '2018-01-28 08:25:37',
                'updated_at' => '2018-01-28 08:25:37',
                'function_name' => 'index',
            ),
            39 => 
            array (
                'id' => 60,
                'method' => 'get',
                'route' => 'types/create',
                'controller_name' => 'TypeController',
                'created_at' => '2018-01-28 08:25:37',
                'updated_at' => '2018-01-28 08:25:37',
                'function_name' => 'create',
            ),
            40 => 
            array (
                'id' => 61,
                'method' => 'post',
                'route' => 'types',
                'controller_name' => 'TypeController',
                'created_at' => '2018-01-28 08:25:38',
                'updated_at' => '2018-01-28 08:25:38',
                'function_name' => 'store',
            ),
            41 => 
            array (
                'id' => 62,
                'method' => 'get',
                'route' => 'types/{id}/edit',
                'controller_name' => 'TypeController',
                'created_at' => '2018-01-28 08:25:38',
                'updated_at' => '2018-01-28 08:25:38',
                'function_name' => 'edit',
            ),
            42 => 
            array (
                'id' => 63,
                'method' => 'patch',
                'route' => 'types/{id}',
                'controller_name' => 'TypeController',
                'created_at' => '2018-01-28 08:25:38',
                'updated_at' => '2018-01-28 08:25:38',
                'function_name' => 'update',
            ),
            43 => 
            array (
                'id' => 64,
                'method' => 'get',
                'route' => 'types/{id}/delete',
                'controller_name' => 'TypeController',
                'created_at' => '2018-01-28 08:25:38',
                'updated_at' => '2018-01-28 08:25:38',
                'function_name' => 'destroy',
            ),
            44 => 
            array (
                'id' => 65,
                'method' => 'post',
                'route' => 'sortabledatatable',
                'controller_name' => 'SettingController',
                'created_at' => '2018-01-28 09:22:00',
                'updated_at' => '2018-01-28 09:22:00',
                'function_name' => 'updateOrder',
            ),
            45 => 
            array (
                'id' => 66,
                'method' => 'get',
                'route' => 'buildroutes',
                'controller_name' => 'RouteController',
                'created_at' => '2018-01-28 09:23:55',
                'updated_at' => '2018-01-28 09:23:55',
                'function_name' => 'buildroutes',
            ),
            46 => 
            array (
                'id' => 69,
                'method' => 'get',
                'route' => 'delete_all',
                'controller_name' => 'DashboardController',
                'created_at' => '2018-02-04 12:01:23',
                'updated_at' => '2018-02-04 12:01:23',
                'function_name' => 'delete_all_index',
            ),
            47 => 
            array (
                'id' => 70,
                'method' => 'post',
                'route' => 'delete_all',
                'controller_name' => 'DashboardController',
                'created_at' => '2018-02-04 12:01:23',
                'updated_at' => '2018-02-04 12:01:23',
                'function_name' => 'delete_all_store',
            ),
            48 => 
            array (
                'id' => 71,
                'method' => 'get',
                'route' => 'upload_resize_v2',
                'controller_name' => 'DashboardController',
                'created_at' => '2018-02-04 13:02:56',
                'updated_at' => '2018-02-04 13:02:56',
                'function_name' => 'upload_resize_v2',
            ),
            49 => 
            array (
                'id' => 72,
                'method' => 'post',
                'route' => 'sortabledatatable',
                'controller_name' => 'UserController',
                'created_at' => '2018-02-05 13:39:22',
                'updated_at' => '2018-02-05 13:39:22',
                'function_name' => 'updateOrder',
            ),
            50 => 
            array (
                'id' => 79,
                'method' => 'get',
                'route' => 'setting',
                'controller_name' => 'SettingController',
                'created_at' => '2018-02-05 14:10:10',
                'updated_at' => '2018-02-05 14:10:10',
                'function_name' => 'index',
            ),
            51 => 
            array (
                'id' => 80,
                'method' => 'get',
                'route' => 'users',
                'controller_name' => 'UserController',
                'created_at' => '2018-05-31 09:42:21',
                'updated_at' => '2018-05-31 09:42:21',
                'function_name' => 'index',
            ),
            52 => 
            array (
                'id' => 81,
                'method' => 'get',
                'route' => 'users/new',
                'controller_name' => 'UserController',
                'created_at' => '2018-05-31 09:42:21',
                'updated_at' => '2018-05-31 09:42:21',
                'function_name' => 'create',
            ),
            53 => 
            array (
                'id' => 82,
                'method' => 'post',
                'route' => 'users',
                'controller_name' => 'UserController',
                'created_at' => '2018-05-31 09:42:21',
                'updated_at' => '2018-05-31 09:42:21',
                'function_name' => 'store',
            ),
            54 => 
            array (
                'id' => 83,
                'method' => 'get',
                'route' => 'users/{id}/edit',
                'controller_name' => 'UserController',
                'created_at' => '2018-05-31 09:42:21',
                'updated_at' => '2018-05-31 09:42:21',
                'function_name' => 'edit',
            ),
            55 => 
            array (
                'id' => 84,
                'method' => 'post',
                'route' => 'users/{id}/update',
                'controller_name' => 'UserController',
                'created_at' => '2018-05-31 09:42:21',
                'updated_at' => '2018-05-31 09:42:21',
                'function_name' => 'update',
            ),
            56 => 
            array (
                'id' => 85,
                'method' => 'get',
                'route' => 'providers',
                'controller_name' => 'ProvidersController',
                'created_at' => '2018-12-18 09:43:08',
                'updated_at' => '2018-12-18 09:43:08',
                'function_name' => 'index',
            ),
            57 => 
            array (
                'id' => 86,
                'method' => 'get',
                'route' => 'providers/create',
                'controller_name' => 'ProvidersController',
                'created_at' => '2018-12-18 09:43:08',
                'updated_at' => '2018-12-18 09:43:08',
                'function_name' => 'create',
            ),
            58 => 
            array (
                'id' => 87,
                'method' => 'post',
                'route' => 'providers',
                'controller_name' => 'ProvidersController',
                'created_at' => '2018-12-18 09:43:08',
                'updated_at' => '2018-12-18 09:43:08',
                'function_name' => 'store',
            ),
            59 => 
            array (
                'id' => 88,
                'method' => 'get',
                'route' => 'providers/{id}/edit',
                'controller_name' => 'ProvidersController',
                'created_at' => '2018-12-18 09:43:08',
                'updated_at' => '2018-12-18 09:43:08',
                'function_name' => 'edit',
            ),
            60 => 
            array (
                'id' => 89,
                'method' => 'patch',
                'route' => 'providers/{id}',
                'controller_name' => 'ProvidersController',
                'created_at' => '2018-12-18 09:43:08',
                'updated_at' => '2018-12-18 09:43:08',
                'function_name' => 'update',
            ),
            61 => 
            array (
                'id' => 90,
                'method' => 'get',
                'route' => 'providers/{id}/delete',
                'controller_name' => 'ProvidersController',
                'created_at' => '2018-12-18 09:43:08',
                'updated_at' => '2018-12-18 09:43:08',
                'function_name' => 'destroy',
            ),
            62 => 
            array (
                'id' => 91,
                'method' => 'get',
                'route' => 'services',
                'controller_name' => 'ServicesController',
                'created_at' => '2018-12-18 10:49:59',
                'updated_at' => '2018-12-18 10:49:59',
                'function_name' => 'index',
            ),
            63 => 
            array (
                'id' => 92,
                'method' => 'get',
                'route' => 'services/create',
                'controller_name' => 'ServicesController',
                'created_at' => '2018-12-18 10:49:59',
                'updated_at' => '2018-12-18 10:49:59',
                'function_name' => 'create',
            ),
            64 => 
            array (
                'id' => 93,
                'method' => 'post',
                'route' => 'services',
                'controller_name' => 'ServicesController',
                'created_at' => '2018-12-18 10:49:59',
                'updated_at' => '2018-12-18 10:49:59',
                'function_name' => 'store',
            ),
            65 => 
            array (
                'id' => 94,
                'method' => 'get',
                'route' => 'services/{id}/edit',
                'controller_name' => 'ServicesController',
                'created_at' => '2018-12-18 10:49:59',
                'updated_at' => '2018-12-18 10:49:59',
                'function_name' => 'edit',
            ),
            66 => 
            array (
                'id' => 95,
                'method' => 'patch',
                'route' => 'services/{id}',
                'controller_name' => 'ServicesController',
                'created_at' => '2018-12-18 10:49:59',
                'updated_at' => '2018-12-18 10:49:59',
                'function_name' => 'update',
            ),
            67 => 
            array (
                'id' => 96,
                'method' => 'get',
                'route' => 'services/{id}/delete',
                'controller_name' => 'ServicesController',
                'created_at' => '2018-12-18 10:49:59',
                'updated_at' => '2018-12-18 10:49:59',
                'function_name' => 'destroy',
            ),
            68 => 
            array (
                'id' => 97,
                'method' => 'get',
                'route' => 'services/{id}/videos',
                'controller_name' => 'ServicesController',
                'created_at' => '2018-12-18 10:49:59',
                'updated_at' => '2018-12-18 10:49:59',
                'function_name' => 'videos',
            ),
            69 => 
            array (
                'id' => 98,
                'method' => 'get',
                'route' => 'providers/{id}/services',
                'controller_name' => 'ProvidersController',
                'created_at' => '2018-12-18 10:50:35',
                'updated_at' => '2018-12-18 10:50:35',
                'function_name' => 'services',
            ),
            70 => 
            array (
                'id' => 99,
                'method' => 'get',
                'route' => 'operators',
                'controller_name' => 'OperatorsController',
                'created_at' => '2018-12-18 11:28:07',
                'updated_at' => '2018-12-18 11:28:07',
                'function_name' => 'index',
            ),
            71 => 
            array (
                'id' => 100,
                'method' => 'get',
                'route' => 'operators/create',
                'controller_name' => 'OperatorsController',
                'created_at' => '2018-12-18 11:28:08',
                'updated_at' => '2018-12-18 11:28:08',
                'function_name' => 'create',
            ),
            72 => 
            array (
                'id' => 101,
                'method' => 'post',
                'route' => 'operators',
                'controller_name' => 'OperatorsController',
                'created_at' => '2018-12-18 11:28:08',
                'updated_at' => '2018-12-18 11:28:08',
                'function_name' => 'store',
            ),
            73 => 
            array (
                'id' => 102,
                'method' => 'get',
                'route' => 'operators/{id}/edit',
                'controller_name' => 'OperatorsController',
                'created_at' => '2018-12-18 11:28:08',
                'updated_at' => '2018-12-18 11:28:08',
                'function_name' => 'edit',
            ),
            74 => 
            array (
                'id' => 103,
                'method' => 'patch',
                'route' => 'operators/{id}',
                'controller_name' => 'OperatorsController',
                'created_at' => '2018-12-18 11:28:08',
                'updated_at' => '2018-12-18 11:28:08',
                'function_name' => 'update',
            ),
            75 => 
            array (
                'id' => 104,
                'method' => 'get',
                'route' => 'operators/{id}/delete',
                'controller_name' => 'OperatorsController',
                'created_at' => '2018-12-18 11:28:08',
                'updated_at' => '2018-12-18 11:28:08',
                'function_name' => 'destroy',
            ),
            76 => 
            array (
                'id' => 105,
                'method' => 'get',
                'route' => 'videos',
                'controller_name' => 'VideosController',
                'created_at' => '2018-12-18 13:41:38',
                'updated_at' => '2018-12-18 13:41:38',
                'function_name' => 'index',
            ),
            77 => 
            array (
                'id' => 106,
                'method' => 'get',
                'route' => 'videos/create',
                'controller_name' => 'VideosController',
                'created_at' => '2018-12-18 13:41:38',
                'updated_at' => '2018-12-18 13:41:38',
                'function_name' => 'create',
            ),
            78 => 
            array (
                'id' => 107,
                'method' => 'post',
                'route' => 'videos',
                'controller_name' => 'VideosController',
                'created_at' => '2018-12-18 13:41:38',
                'updated_at' => '2018-12-18 13:41:38',
                'function_name' => 'store',
            ),
            79 => 
            array (
                'id' => 108,
                'method' => 'get',
                'route' => 'videos/{id}/edit',
                'controller_name' => 'VideosController',
                'created_at' => '2018-12-18 13:41:38',
                'updated_at' => '2018-12-18 13:41:38',
                'function_name' => 'edit',
            ),
            80 => 
            array (
                'id' => 109,
                'method' => 'patch',
                'route' => 'videos/{id}',
                'controller_name' => 'VideosController',
                'created_at' => '2018-12-18 13:41:38',
                'updated_at' => '2018-12-18 13:41:38',
                'function_name' => 'update',
            ),
            81 => 
            array (
                'id' => 110,
                'method' => 'get',
                'route' => 'videos/{id}/delete',
                'controller_name' => 'VideosController',
                'created_at' => '2018-12-18 13:41:38',
                'updated_at' => '2018-12-18 13:41:38',
                'function_name' => 'destroy',
            ),
            82 => 
            array (
                'id' => 111,
                'method' => 'get',
                'route' => 'posts',
                'controller_name' => 'PostsController',
                'created_at' => '2018-12-18 14:25:53',
                'updated_at' => '2018-12-18 14:25:53',
                'function_name' => 'index',
            ),
            83 => 
            array (
                'id' => 112,
                'method' => 'get',
                'route' => 'posts/create',
                'controller_name' => 'PostsController',
                'created_at' => '2018-12-18 14:25:53',
                'updated_at' => '2018-12-18 14:40:50',
                'function_name' => 'create',
            ),
            84 => 
            array (
                'id' => 113,
                'method' => 'post',
                'route' => 'posts',
                'controller_name' => 'PostsController',
                'created_at' => '2018-12-18 14:25:53',
                'updated_at' => '2018-12-18 14:25:53',
                'function_name' => 'store',
            ),
            85 => 
            array (
                'id' => 114,
                'method' => 'get',
                'route' => 'posts/{id}/edit',
                'controller_name' => 'PostsController',
                'created_at' => '2018-12-18 14:25:53',
                'updated_at' => '2018-12-18 14:25:53',
                'function_name' => 'edit',
            ),
            86 => 
            array (
                'id' => 115,
                'method' => 'patch',
                'route' => 'posts/{id}',
                'controller_name' => 'PostsController',
                'created_at' => '2018-12-18 14:25:53',
                'updated_at' => '2018-12-18 14:25:53',
                'function_name' => 'update',
            ),
            87 => 
            array (
                'id' => 116,
                'method' => 'get',
                'route' => 'posts/{id}/delete',
                'controller_name' => 'PostsController',
                'created_at' => '2018-12-18 14:25:53',
                'updated_at' => '2018-12-18 14:25:53',
                'function_name' => 'destroy',
            ),
            88 => 
            array (
                'id' => 117,
                'method' => 'get',
                'route' => 'videos/{id}/posts',
                'controller_name' => 'VideosController',
                'created_at' => '2018-12-18 14:45:29',
                'updated_at' => '2018-12-18 14:45:29',
                'function_name' => 'posts',
            ),
            89 => 
            array (
                'id' => 118,
                'method' => 'get',
                'route' => 'audios',
                'controller_name' => 'AudiosController',
                'created_at' => '2018-12-24 13:38:48',
                'updated_at' => '2018-12-24 13:38:48',
                'function_name' => 'index',
            ),
            90 => 
            array (
                'id' => 119,
                'method' => 'get',
                'route' => 'audios/create',
                'controller_name' => 'AudiosController',
                'created_at' => '2018-12-24 13:38:48',
                'updated_at' => '2018-12-24 13:38:48',
                'function_name' => 'create',
            ),
            91 => 
            array (
                'id' => 120,
                'method' => 'post',
                'route' => 'audios',
                'controller_name' => 'AudiosController',
                'created_at' => '2018-12-24 13:38:48',
                'updated_at' => '2018-12-24 13:38:48',
                'function_name' => 'store',
            ),
            92 => 
            array (
                'id' => 121,
                'method' => 'get',
                'route' => 'audios/{id}/edit',
                'controller_name' => 'AudiosController',
                'created_at' => '2018-12-24 13:38:48',
                'updated_at' => '2018-12-24 13:38:48',
                'function_name' => 'edit',
            ),
            93 => 
            array (
                'id' => 122,
                'method' => 'patch',
                'route' => 'audios/{id}',
                'controller_name' => 'AudiosController',
                'created_at' => '2018-12-24 13:38:48',
                'updated_at' => '2018-12-24 13:38:48',
                'function_name' => 'update',
            ),
            94 => 
            array (
                'id' => 123,
                'method' => 'get',
                'route' => 'audios/{id}/delete',
                'controller_name' => 'AudiosController',
                'created_at' => '2018-12-24 13:38:48',
                'updated_at' => '2018-12-24 13:38:48',
                'function_name' => 'destroy',
            ),
            95 => 
            array (
                'id' => 124,
                'method' => 'get',
                'route' => 'videos/{id}/audios',
                'controller_name' => 'VideosController',
                'created_at' => '2018-12-27 09:43:49',
                'updated_at' => '2018-12-27 09:43:49',
                'function_name' => 'audios',
            ),
            96 => 
            array (
                'id' => 125,
                'method' => 'get',
                'route' => 'providers/{id}/audios',
                'controller_name' => 'ProvidersController',
                'created_at' => '2018-12-27 09:44:26',
                'updated_at' => '2018-12-27 09:44:26',
                'function_name' => 'audios',
            ),
            97 => 
            array (
                'id' => 126,
                'method' => 'get',
                'route' => 'countries',
                'controller_name' => 'CountryController',
                'created_at' => '2018-12-27 13:52:47',
                'updated_at' => '2018-12-27 13:52:47',
                'function_name' => 'index',
            ),
            98 => 
            array (
                'id' => 127,
                'method' => 'get',
                'route' => 'countries/create',
                'controller_name' => 'CountryController',
                'created_at' => '2018-12-27 13:52:47',
                'updated_at' => '2018-12-27 13:52:47',
                'function_name' => 'create',
            ),
            99 => 
            array (
                'id' => 128,
                'method' => 'post',
                'route' => 'countries',
                'controller_name' => 'CountryController',
                'created_at' => '2018-12-27 13:52:47',
                'updated_at' => '2018-12-27 13:52:47',
                'function_name' => 'store',
            ),
            100 => 
            array (
                'id' => 129,
                'method' => 'get',
                'route' => 'countries/{id}/edit',
                'controller_name' => 'CountryController',
                'created_at' => '2018-12-27 13:52:47',
                'updated_at' => '2018-12-27 13:52:47',
                'function_name' => 'edit',
            ),
            101 => 
            array (
                'id' => 130,
                'method' => 'patch',
                'route' => 'countries/{id}',
                'controller_name' => 'CountryController',
                'created_at' => '2018-12-27 13:52:47',
                'updated_at' => '2018-12-27 13:52:47',
                'function_name' => 'update',
            ),
            102 => 
            array (
                'id' => 131,
                'method' => 'get',
                'route' => 'countries/{id}/delete',
                'controller_name' => 'CountryController',
                'created_at' => '2018-12-27 13:52:47',
                'updated_at' => '2018-12-27 13:52:47',
                'function_name' => 'destroy',
            ),
            103 => 
            array (
                'id' => 132,
                'method' => 'get',
                'route' => 'listazan',
                'controller_name' => 'ListAzanController',
                'created_at' => '2020-03-25 10:46:07',
                'updated_at' => '2020-03-25 10:46:07',
                'function_name' => 'index',
            ),
            104 => 
            array (
                'id' => 133,
                'method' => 'get',
                'route' => 'users/{id}/delete',
                'controller_name' => 'UserController',
                'created_at' => '2020-04-09 11:01:58',
                'updated_at' => '2020-04-09 11:01:58',
                'function_name' => 'destroy',
            ),
        ));
        
        
    }
}