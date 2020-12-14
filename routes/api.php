<?php

use Illuminate\Http\Request;

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


// define constants
define('AUTHORIZED',[1,100]);
define('DECLINE',[2,200]);
define('REFUNDED',[3,300]);
define('ALL',[1,100,2,200,3,300]);


Route::prefix('v1')->group(function() {
  Route::get('users', 'TestController@users');

  });


/*************orange************* */
define('ORANGE_END_POINT', 'https://dev.digizone.com.kw/orange_integration');
/***********end orange*********** */
