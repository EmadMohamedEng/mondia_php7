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


Route::get('/landing',function(){
    return view('front.landing');
 });

Route::get('/notification_page',function(){
    return view('front.notification_page');
 });

Route::get('/profile_page',function(){
    return view('front.profile_page');
 });

Route::get('/cancel',function(){
    return view('front.cancel');
 });

/*------------ viva landing ----------------*/
Route::get('/viva_landing',function(){
    return view('front.viva_landing');
 });

Route::get('/viva_cancel',function(){
    return view('front.viva_cancel');
 });



/* Islamic New Landing & Pin Code & Notification */

Route::get('/landing_new',function(){
    return view('front.landing_new');
 });

Route::get('/landing_new_pinCode',function(){
    return view('front.landing_new_pinCode');
 });

Route::get('/landing_new_notification',function(){
    return view('front.landing_new_notification');
 });


/* ===================== new landing ============================ */

Route::get('/landing_v2', function () {
    return view('front.landing_v2');
});

/* ===================== end landing ============================ */

Route::post('AddSubscriptionContractRequest', 'FrontController@AddSubscriptionContractRequest');
Route::get('new_landing', 'FrontController@new_landing');
Route::get('unsub', 'FrontController@unsub');

Auth::routes([
    'register' => false
]);

//OmanTel
Route::get('omantel_landing', 'OmanTelController@index');
Route::get('test_omantel_login', 'OmanTelController@testOmanTelLogin');
Route::get('create_token', 'OmanTelController@create_token');
Route::get('redirect', 'OmanTelController@redirect');
Route::get('check_status', 'OmanTelController@check_status');
Route::get('pin_code', 'OmanTelController@pin_code');
Route::post('verify_pin', 'OmanTelController@verify_pin');
Route::get('delete_subscription ', 'OmanTelController@delete_subscription');
