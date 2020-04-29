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
Route::get('list_services','FrontController@services')->name('front.service');
Route::get('list_contents','FrontController@contents')->name('front.list');
Route::get('loadcontent','FrontController@load_contents')->name('front.load');
Route::get('view_content/{id}','FrontController@view_content')->name('front.inner');
Route::get('sebha','FrontController@sebha')->name('front.sebha');
Route::get('zakah','FrontController@zakah')->name('front.zakah');
Route::get('merath','FrontController@merath')->name('front.merath');
Route::get('merath_calc','FrontController@merath_calc');
Route::get('salah_time','FrontController@salah_time3')->name('front.salah');  // working good
Route::get('salah_time2','FrontController@salah_time2')->name('front.salah2');
Route::get('salah_time3','FrontController@salah_time3')->name('front.salah3');
Route::get('mosque','FrontController@mosque')->name('front.mosque');
Route::get('azan','FrontController@azan')->name('front.azan');
Route::get('list_azan/{id}','FrontController@list_azan');
Route::get('view_rbt/{id}','FrontController@view_rbt');
Route::get('rbts','FrontController@rbts');
Route::get('test2','FrontController@test');
Route::get('search','FrontController@search')->name('front.search');
Route::get('muslim_inner_confirm','FrontController@muslim_inner')->name('front.muslim_inner');
//OmanTel
define('omantel',9);
Route::get('omantel/redirect', 'FrontController@redirect')->name('front.oman');
Route::get('pin_code', 'FrontController@pincode')->name('front.pincode');
Route::get('Omantel_send_pincode', 'FrontController@Omantel_send_pincode');
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
Route::get('du_goto_pincode', 'FrontController@du_goto_pincode');
Route::get('du_pin_code', 'FrontController@du_pin_code')->name('front.du_pin_code');
Route::get('du_delete_subscription/', 'FrontController@du_delete_subscription')->name('front.du_unsub');
Route::get('du_logout','FrontController@du_logout')->name('front.du_logout');
Route::get('du_set_session','FrontController@du_set_session');
// Route::get('post_stc_create','PostsController@post_stc');
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

///////////////////////// stc Kuwait /////////////////////////////
define('stc',11);
Route::get('landing_stc', 'StcController@viva_login');
Route::post('viva_login_action', 'StcController@viva_login_action');
Route::get('notification', 'StcController@notification');
Route::get('landing_stc_1', 'StcController@subscribeViva_1');
Route::get('logout_viva', 'StcController@logout');
define('SNAP_VIVA_URL', url('') . '/landing_stc');
define('SNAP_VIVA_CHANNEL_ID', 4493);
///////////////////////// stc Kuwait /////////////////////////////

/************* Start config Timwe******************/
define('ooredoo',12);
define('PartnerId', '2534');
define('productId', '10458');
define('partnerRoleId', '2614');
define('TimweServiceId', '2724');
define('largeAccount', '92842');

define('MTFreePricepointId', '46742');
define('PricepintId10QAR', '46758');
define('PricepintId5QAR', '46743');
define('PricepintId2QAR', '46759');

define('apikeysendMt', '98c489a1415047c4b19ab30436289de2');
define('presharedkeysendMt', 'SkU0gO1lSHR7wdfP');

define('apikeysubscription', '8086e440d80847a6b534c88a6c33a172');
define('presharedkeysubscription', 'cutfvCPZrlzMo6t8');
/************* end config Timwe******************/

Route::get('ooredoo_qatar_landing', 'TimweController@index');
Route::get('ooredoo_qatar_pin', 'TimweController@pincode');
Route::get('ooredoo_qatar_unsub', 'TimweController@unsubscribe');

//Timwe Api
Route::post('generateKey', 'TimweController@generateKey');
Route::post('{channel}/mt/{partnerRoleId}', 'TimweController@sendMt');
Route::post('subscription/optin/{partnerRoleId}', 'TimweController@subscriptionOptIn');
Route::post('subscription/confirm/{partnerRoleId}', 'TimweController@subscriptionConfirm');
Route::post('subscription/optout/{partnerRoleId}', 'TimweController@subscriptionOptOut');
/********************end ******************* */


/********************Quran live  ********************/
define('encrypt_key',"Affasy00!");
Route::get("latest/quran",'FrontController@Todayquran');
Route::get("all/quran",'FrontController@Latesquran');
Route::get("landing/{id}",'FrontController@landingquran');
/********************Quran live  ********************/


/*******************start IMI digital *****************/

define('UserID','imimobile');
define('Password','imimobile123');
define('vendor','ivas');
define('serviceId','123456');
define('shortCode','123456');

Route::get('imi/login', 'ImiController@landing');
Route::get('imi/pincode', 'ImiController@pinCode');
Route::get('imi/unsubscribe', 'ImiController@unsub');

Route::get('authorization', 'ImiController@authorization');

define('authenticationUrl','https://mazajak-c.ooredoo.ps/TPAPI/charging/chargeuser');
Route::get('Authentication', 'ImiController@authentication');

define('getServicesUrl','https://mazajak-c.ooredoo.ps/TPAPI/GetServiceDetails/GetSerDetails');
Route::get('subscriptions/getservices', 'ImiController@getServices');

define('subscriptionsRequestUrl','https://mazajak-c.ooredoo.ps/TPAPI/payment/SUBUSER');
Route::get('subscriptions/request', 'ImiController@subscriptionsRequest');

define('unsubscriptionUrl','https://mazajak-c.ooredoo.ps/TPAPI/payment/UnSubUser');
Route::get('subscriptions/unsubscription', 'ImiController@unsubscription');

define('subscriptionsCheckUrl','https://mazajak-c.ooredoo.ps/TPAPI/payment/CheckStatus');
Route::get('subscriptions/check', 'ImiController@subscriptionsCheck');

Route::get('subscriptions/notification', 'ImiController@subscriptionsNotification');

define('generateOTPUrl','https://mazajak-c.ooredoo.ps/TPAPI/payment/GenerateOTP');
Route::get('generateOTP', 'ImiController@generateOTP');

define('generateOTPValidateUrl','https://mazajak-c.ooredoo.ps/TPAPI/payment/ValidateOTP');
Route::get('generateOTPValidate', 'ImiController@generateOTPValidate');

/*******************end IMI digital *****************/