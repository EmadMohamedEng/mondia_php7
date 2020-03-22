<?php 
 /*Generated Route File @iVAS*/ 
 Mail : karimahmed181@gmail.com 
 
/*
|--------------------------------------------------------------------------

| Application Routes

|--------------------------------------------------------------------------

|

| Here is where you can register all of the routes for an application.

| It's a breeze. Simply tell Laravel the URIs it should respond to

| and give it the controller to call when that URI is requested.

|
*/
 

Route::get('setting/new','SettingController@create');
Route::post('setting','SettingController@store');
Route::get('dashboard','DashboardController@index');
Route::get('user_profile','UserController@profile');
Route::post('user_profile/updatepassword','UserController@UpdatePassword');
Route::post('user_profile/updateprofilepic','UserController@UpdateProfilePicture');
Route::post('user_profile/updateuserdata','UserController@UpdateNameAndEmail');
Route::get('setting/{id}/delete','SettingController@destroy');
Route::get('setting/{id}/edit','SettingController@edit');
Route::post('setting/{id}/update','SettingController@update');
Route::get('static_translation','StaticTranslationController@index');
Route::get('file_manager','DashboardController@file_manager');
Route::get('upload_items','DashboardController@multi_upload');
Route::post('save_items','DashboardController@save_uploaded');
Route::get('upload_resize','DashboardController@upload_resize');
Route::post('save_image','DashboardController@save_image');
Route::post('static_translation/{id}/update','StaticTranslationController@update');
Route::get('static_translation/{id}/delete','StaticTranslationController@destroy');
Route::get('language/{id}/delete','LanguageController@destroy');
Route::post('language/{id}/update','LanguageController@update');
Route::get('roles','RoleController@index');
Route::get('roles/new','RoleController@create');
Route::post('roles','RoleController@store');
Route::get('roles/{id}/delete','RoleController@destroy');
Route::get('roles/{id}/edit','RoleController@edit');
Route::post('roles/{id}/update','RoleController@update');
Route::get('language','LanguageController@index');
Route::get('language/create','LanguageController@create');
Route::post('language','LanguageController@store');
Route::get('language/{id}/edit','LanguageController@edit');
Route::get('all_routes','RouteController@index');
Route::post('all_routes','RouteController@store');
Route::get('routes/{id}/edit','RouteController@edit');
Route::post('routes/{id}/update','RouteController@update');
Route::get('routes/{id}/delete','RouteController@destroy');
Route::get('routes/create','RouteController@create');
Route::get('routes/index_v2','RouteController@index_v2');
Route::get('roles/{id}/view_access','RoleController@view_access');
Route::get('types/index','TypeController@index');
Route::get('types/create','TypeController@create');
Route::post('types','TypeController@store');
Route::get('types/{id}/edit','TypeController@edit');
Route::patch('types/{id}','TypeController@update');
Route::get('types/{id}/delete','TypeController@destroy');
Route::post('sortabledatatable','SettingController@updateOrder');
Route::get('buildroutes','RouteController@buildroutes');
Route::get('delete_all','DashboardController@delete_all_index');
Route::post('delete_all','DashboardController@delete_all_store');
Route::get('upload_resize_v2','DashboardController@upload_resize_v2');
Route::post('sortabledatatable','UserController@updateOrder');
Route::get('setting','SettingController@index');
Route::get('users','UserController@index');
Route::get('users/new','UserController@create');
Route::post('users','UserController@store');
Route::get('users/{id}/edit','UserController@edit');
Route::post('users/{id}/update','UserController@update');
Route::get('providers','ProvidersController@index');
Route::get('providers/create','ProvidersController@create');
Route::post('providers','ProvidersController@store');
Route::get('providers/{id}/edit','ProvidersController@edit');
Route::patch('providers/{id}','ProvidersController@update');
Route::get('providers/{id}/delete','ProvidersController@destroy');
Route::get('services','ServicesController@index');
Route::get('services/create','ServicesController@create');
Route::post('services','ServicesController@store');
Route::get('services/{id}/edit','ServicesController@edit');
Route::patch('services/{id}','ServicesController@update');
Route::get('services/{id}/delete','ServicesController@destroy');
Route::get('services/{id}/videos','ServicesController@videos');
Route::get('providers/{id}/services','ProvidersController@services');
Route::get('operators','OperatorsController@index');
Route::get('operators/create','OperatorsController@create');
Route::post('operators','OperatorsController@store');
Route::get('operators/{id}/edit','OperatorsController@edit');
Route::patch('operators/{id}','OperatorsController@update');
Route::get('operators/{id}/delete','OperatorsController@destroy');
Route::get('videos','VideosController@index');
Route::get('videos/create','VideosController@create');
Route::post('videos','VideosController@store');
Route::get('videos/{id}/edit','VideosController@edit');
Route::patch('videos/{id}','VideosController@update');
Route::get('videos/{id}/delete','VideosController@destroy');
Route::get('posts','PostsController@index');
Route::get('posts/create','PostsController@create');
Route::post('posts','PostsController@store');
Route::get('posts/{id}/edit','PostsController@edit');
Route::patch('posts/{id}','PostsController@update');
Route::get('posts/{id}/delete','PostsController@destroy');
Route::get('videos/{id}/posts','VideosController@posts');
Route::get('audios','AudiosController@index');
Route::get('audios/create','AudiosController@create');
Route::post('audios','AudiosController@store');
Route::get('audios/{id}/edit','AudiosController@edit');
Route::patch('audios/{id}','AudiosController@update');
Route::get('audios/{id}/delete','AudiosController@destroy');
Route::get('videos/{id}/audios','VideosController@audios');
Route::get('providers/{id}/audios','ProvidersController@audios');
Route::get('countries','CountryController@index');
Route::get('countries/create','CountryController@create');
Route::post('countries','CountryController@store');
Route::get('countries/{id}/edit','CountryController@edit');
Route::patch('countries/{id}','CountryController@update');
Route::get('countries/{id}/delete','CountryController@destroy');
Route::get('users/{id}/delete','UserController@destroy');
