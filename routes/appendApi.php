<?php

//omar
Route::get('create_token', 'MondiaController@create_token');
Route::get('redirect', 'MondiaController@redirect');
Route::get('check_status', 'MondiaController@check_status');
Route::get('pin_code', 'MondiaController@pin_code');
Route::get('verify_pin', 'MondiaController@verify_pin');
Route::get('delete_subscription ', 'MondiaController@delete_subscription');
