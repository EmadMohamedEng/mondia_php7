<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


get_static_routes() ;
get_dynamic_routes();

Auth::routes([
    'register' => false
]);
//front
Route::get('/','FrontController@index')->name('front.index');
Route::get('list_services/{id}','FrontController@services')->name('front.service');
Route::get('list_contents','FrontController@contents')->name('front.list');
Route::get('loadcontent','FrontController@load_contents')->name('front.load');
Route::get('view_content/{id}','FrontController@view_content')->name('front.inner');
Route::get('sebha','FrontController@sebha')->name('front.sebha');
Route::get('zakah','FrontController@zakah')->name('front.zakah');
Route::get('merath','FrontController@merath')->name('front.merath');
Route::get('merath_calc','FrontController@merath_calc');
Route::get('salah_time','FrontController@salah_time')->name('front.salah');
Route::get('mosque','FrontController@mosque')->name('front.mosque');
Route::get('azan','FrontController@azan')->name('front.azan');
Route::get('list_azan/{id}','FrontController@list_azan');
Route::get('view_rbt/{id}','FrontController@view_rbt');
Route::get('rbts','FrontController@rbts');



//OmanTel
define('omantel',9);
Route::get('omantel/redirect', 'FrontController@redirect')->name('front.oman');
Route::get('pin_code', 'FrontController@pincode')->name('front.pincode');
Route::post('verify_pin', 'FrontController@verify_pin')->name('front.verfiy');
Route::get('delete_subscription', 'FrontController@delete_subscription')->name('front.unsub');
Route::get('omantel_logout','FrontController@logout')->name('front.logout');
// Route::get('omantel_landing', 'OmanTelController@index');
// Route::get('test_omantel_login', 'OmanTelController@testOmanTelLogin');
// Route::get('create_token', 'OmanTelController@create_token');
// Route::get('check_status', 'OmanTelController@check_status');

//Du integration
define('du',10);
Route::get('du_redirect', 'FrontController@du_redirect')->name('front.du');
Route::get('du_check_status/{userToken?}', 'FrontController@du_check_status')->name('front.du_check');
Route::get('du_pin_code', 'FrontController@du_pin_code')->name('front.du_pin_code');
Route::get('du_delete_subscription/', 'FrontController@du_delete_subscription')->name('front.du_unsub');
Route::get('du_logout','FrontController@du_logout')->name('front.du_logout');
// Route::get('du_landing', 'DuController@index');
// Route::get('test_du_login', 'DuController@testOmanTelLogin');
// Route::get('du_create_token', 'DuController@create_token');
//  Route::get('test',function(){
// //     session()->put('requestId',170052363);
// //     session()->put('userToken','U57abae8b-344e-45ab-a83e-2976c8625143');
// //     session()->put('status','active');
//     session()->put('requestId',39630768);
//     session()->put('userToken','U7fec00ea-9d9c-42b2-84b4-f62ef8d225ad');
//     session()->put('status','active');
//  });
