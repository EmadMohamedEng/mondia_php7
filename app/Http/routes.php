<?php

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