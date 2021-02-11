<?php

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('man_elkeal_check_status', 'ImiController@man_elkeal_check_status');
Route::post('mbc_sent_mt_response','TestController@mbc_sent_mt_response');


define('CHECKSUB_URL', "https://mbc.digizone.com.kw/api/checksub");
define('MBC_CREATE_SUB', "https://mbc.digizone.com.kw/api/create_sub");
define('MBC_GET_SUB', "https://mbc.digizone.com.kw/api/mbc_get_sub");
define('IVAS_UPDATE_DAYS_AFTER_GU_UPDATE', "https://mbc.digizone.com.kw/api/change_subscriber_day");


// define constants
define('AUTHORIZED',[1,100]);
define('DECLINE',[2,200]);
define('REFUNDED',[3,300]);
define('ALL',[1,100,2,200,3,300]);


Route::prefix('v1')->group(function() {
  Route::get('users', 'TestController@users');

});


/*************orange************* */
define('ORANGE_ELKHEAR_SERVICE_ID',1000000577);

// define('ORANGE_API_SENDPINCODE', 'http://10.2.10.239:2080/~orangeiv/orange_egypt_send_message');  // sms php 5


//define('ORANGE_END_POINT', 'http://10.2.10.15:8310/~orangelkheer'); // orange notify local
  define('ORANGE_API_SENDPINCODE', 'http://10.2.10.15:8310/~smsorange/api/orange_egypt_send_message');  // sms php 7  (testind inside ivas)

//define('ORANGE_END_POINT', 'http://41.33.167.16:8310/~orangelkheer'); // orange notify publiuc
//define('ORANGE_API_SENDPINCODE', 'http://41.33.167.16:8310/~smsorange/api/orange_egypt_send_message');  // sms php 7 (testind outside ivas)

/***********end orange*********** */




// ==============  Gu Apis ===============//
define('GU_CHECKSUB_URL', 'http://85.215.236.82:3001/status');
//define('GU_CHECKSUB_URL', url('api/status'));
Route::post("status",function(){
  return response()->json([
    'status' => 'NEW',
    'content' =>45,
    'country' => "Egypt",
    'operator' => "Orange",
  ]);
});

