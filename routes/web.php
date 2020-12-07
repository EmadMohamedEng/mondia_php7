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
Route::get('today_link/{msisdn}','FrontController@mbcTodayLink')->name('front.mbc');
Route::get('sebha','FrontController@sebha')->name('front.sebha');
Route::get('zakah','FrontController@zakah')->name('front.zakah');
Route::get('zakah_v2','FrontController@zakah_v2')->name('front.zakah_v2');
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
Route::get('test','FrontController@prayTimesCal_v2');
Route::get('terms','MbcController@terms');
Route::get('faq','MbcController@faq');
Route::get('profile','MbcController@profile');

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
 Route::get('post_stc_create','PostsController@post_stc');
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
define('orange',orange_op_id());
define('mbc',mbc_op_id());
Route::get('landing_stc', 'StcController@viva_login');
Route::post('viva_login_action', 'StcController@viva_login_action');
Route::get('notification', 'StcController@notification');
Route::get('landing_stc_1', 'StcController@subscribeViva_1');
Route::get('logout_viva', 'StcController@logout');
define('SNAP_VIVA_URL', url('') . '/landing_stc');
define('SNAP_VIVA_CHANNEL_ID', 4493);
///////////////////////// stc Kuwait /////////////////////////////

/**************** mbc notification*************** */
Route::get('mbc_notifications', 'MbcController@mbc_notifications');
Route::get('MO_SMS_Posting', 'MbcController@MO_SMS_Posting');
Route::get('mbc_sent_mt','TestController@mbc_sent_mt');

/********************************* */

/******timwe_op_id******* Start config Timwe******************/
define('ooredoo',timwe_op_id());
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

Route::get('testMT', 'TimweController@testMT');
Route::get('ooredoo_q_login', 'TimweController@login');
Route::get('ooredoo_q/{lang?}', 'TimweController@index');
Route::get('ooredoo_q_pin/{lang?}', 'TimweController@pincode');
Route::get('ooredoo_q_unsub/{lang?}', 'TimweController@unsubscribe');
Route::get('ooredoo_q_logout', 'TimweController@logout');

//Timwe Api
Route::post('generateKey', 'TimweController@generateKey');
Route::post('{channel}/mt/{partnerRoleId}', 'TimweController@sendMt');
Route::post('checkstatus', 'TimweController@checkStatusLogin');
Route::post('subscription/optin/{partnerRoleId}/{lang?}', 'TimweController@subscriptionOptIn');
Route::post('subscription/confirm/{partnerRoleId}', 'TimweController@subscriptionConfirm');
Route::post('subscription/optout/{partnerRoleId}', 'TimweController@subscriptionOptOut');
/********************end ******************* */

/***************start mbc portal****************** */
define('MBC_OP_ID', 14);

// define('CHECKUNSUB_URL', "http://localhost/mbc_system/api/unsub");

// Route::get('mbc_portal_login_old/{lang?}', 'MbcController@login');
// Route::get('mbc_portal_landing_old/{lang?}', 'MbcController@index');
// Route::get('mbc_portal_pin_old/{lang?}', 'MbcController@pincode');
// Route::get('mbc_portal_unsub_old/{lang?}', 'MbcController@unsubscribe');
Route::get('mbc_portal_logout', 'MbcController@logout');


/***************start orange ****************** */
Route::get('orange_portal_login', 'OrangeController@login');
Route::get('orange_portal_unsub', 'OrangeController@unsubscribe');
Route::post('orange_portal_login', 'OrangeController@postLogin');
Route::get('orange_logout', 'OrangeController@logout');
/***************end orange ****************** */


/***************start mbc 2****************** */

Route::get('get_country', 'MbcTwoController@get_country');


Route::get('mbc_portal_landing', 'MbcTwoController@index');
Route::get('mbc_portal_login', 'MbcTwoController@login');
Route::get('mbc_portal_pin', 'MbcTwoController@pincode');
Route::get('mbc_portal_unsub', 'MbcTwoController@unsubscribe');
Route::post('mbc_checkstatus', 'MbcTwoController@checkStatusLogin');
Route::post('mbc_subscription/optin', 'MbcTwoController@subscriptionOptIn');
Route::post('mbc_subscription/confirm', 'MbcTwoController@subscriptionConfirm');
Route::post('mbc_subscription/optout/{partnerRoleId}', 'MbcTwoController@subscriptionOptOut');
Route::post('mbc_subscription_resend_pincode/optin/{partnerRoleId}', 'MbcTwoController@resend_pincode');

/***************end mbc 2****************** */

/***************start mbc filter ****************** */
Route::get('filter_list', 'FrontController@filter_list');
Route::get('filter_inner/{id}', 'FrontController@filter_inner')->name('front.filter_inner');
/***************end mbc filter ****************** */


//Timwe Api
Route::post('mbcGenerateKey', 'MbcController@generateKey');
Route::post('{channel}/mt/{partnerRoleId}', 'MbcController@sendMt');
// Route::post('mbc_checkstatus_old', 'MbcController@checkStatusLogin');
// Route::post('mbc_subscription_old/optin/{partnerRoleId}/{lang?}', 'MbcController@subscriptionOptIn');
// Route::post('mbc_subscription_old/confirm/{partnerRoleId}', 'MbcController@subscriptionConfirm');
// Route::post('mbc_subscription_old/optout/{partnerRoleId}', 'MbcController@subscriptionOptOut');
/***************end mbc portal****************** */

/********************Quran live  ********************/
define('encrypt_key',"Affasy00!");
Route::get("latest/quran",'FrontController@Todayquran');
Route::get("all/quran",'FrontController@Latesquran');
Route::get("landing/{id}",'FrontController@landingquran');
/********************Quran live  ********************/


/*******************start IMI digital *****************/

define('UserID','Ziyadat');
define('Password','6874');
define('authorization','Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==');
define('vendor','Afasi');
define('serviceId','4');
define('shortCode','6874');
define('phoneKey','972');

Route::get('imi/login', 'ImiController@landing');
Route::get('imi/pincode', 'ImiController@pinCode');
Route::get('imi/unsubscribe', 'ImiController@unsub');
Route::get('imi/logout', 'ImiController@logout');

Route::get('authorization', 'ImiController@authorization'); // auth used in header

$url = 'https://mazajak-c.ooredoo.ps/TPAPI'; // base URL

//msisdn check status
define('subscriptionsCheckUrl', $url.'/payment/CheckStatus');
Route::post('subscriptions/check', 'ImiController@subscriptionsCheck');

// send pincode
define('generateOTPUrl', $url.'/payment/GenerateOTP');
Route::post('generateOTP', 'ImiController@generateOTP');

// validate pincode
define('generateOTPValidateUrl', $url.'/payment/ValidateOTP');
Route::post('generateOTPValidate', 'ImiController@generateOTPValidate');

// subscribe
define('subscriptionsRequestUrl', $url.'/payment/SUBUSER');
Route::post('subscriptions/request', 'ImiController@subscriptionsRequest');

//unsubscribe
define('unsubscriptionUrl', $url.'/payment/UnSubUser');
Route::post('subscriptions/unsubscription', 'ImiController@unsubscription');

//charge user
define('chargingUrl', $url.'/charging/chargeuser');
Route::get('charging', 'ImiController@charging');

//msisdn subscribed services
define('getServicesUrl', $url.'/GetServiceDetails/GetSerDetails');
Route::get('subscriptions/getservices', 'ImiController@getServices');

//notification
Route::get('imi/notification', 'ImiController@imi_notification');

/*******************end IMI digital *****************/

Route::get('imi_test', function(){
    session()->put('msisdn','566789011');
    session()->put('status','active');
    session()->put('imi_op_id',imi_op_id());

    return redirect(url('/?OpID='.imi_op_id()));
});

Route::get('timwe_test', function(){
    session()->put('userIdentifier','66671329');
    session()->put('MSISDN','66671329');
    session()->put('status','active');
    session()->put('ooredoo_op_id',timwe_op_id());

    return redirect(url('/?OpID='.timwe_op_id()));
});

Route::get('copy_slider_from_mbc_to_orange', 'PostsController@copy_slider_from_mbc_to_orange');
Route::get('remove_dublicate_posts', 'PostsController@remove_dublicate_posts');


Route::get('send_pin_code', 'OrangeController@send_pin_code');
