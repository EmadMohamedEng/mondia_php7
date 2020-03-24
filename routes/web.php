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

//front
Route::get('/','FrontController_v2@index')->name('front.index');
Route::get('list_services/{id}','FrontController_v2@services')->name('front.service');
Route::get('list_contents','FrontController_v2@contents')->name('front.list');
Route::get('view_content/{id}','FrontController_v2@view_content')->name('front.inner');
Route::get('sebha','FrontController@sebha')->name('front.sebha');
Route::get('zakah','FrontController@zakah')->name('front.zakah');
Route::get('merath','FrontController@merath')->name('front.merath');
Route::get('merath_calc','FrontController@merath_calc');
Route::get('salah_time','FrontController@salah_time')->name('front.salah');
Route::get('mosque','FrontController_v2@mosque')->name('front.mosque');
Route::get('azan','FrontController@azan')->name('front.azan');
Route::get('providers/list_azan','FrontController@list_azan');
Route::get('view_rbt/{id}','FrontController@view_rbt');
Route::get('rbts','FrontController@rbts');

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



