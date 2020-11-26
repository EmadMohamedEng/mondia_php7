<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;


class OrangeController extends Controller
{


  public function login(Request $request)
  {
    $lang =  Session::get('applocale');
      if (Session::get('applocale') == 'ur') {
        $lang = 'ar';
      }
    session::put('lang', $lang);
    return view('landing_v2.orange.login',compact("lang"));
  }

  public function unsubscribe()
  {
    $lang =  Session::get('applocale');
      if (Session::get('applocale') == 'ur') {
        $lang = 'ar';
      }
    session::put('lang', $lang);
    return view('landing_v2.orange.unsub');
  }


}
