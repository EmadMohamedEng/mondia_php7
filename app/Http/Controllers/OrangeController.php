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

  public function postLogin(Request $request)
  {
    $code = $request->code;
    $number = $request->number;

    $msisdn = $code.$number;

    $URL = "https://dev.digizone.com.kw/orange_integration/api/checkStatus";

    $JSON['msisdn'] = $msisdn;

    $headers['Accept'] = '*/*';

    $checkStatus = $this->SendRequestPost($URL, $JSON, $headers);

    if($checkStatus){
      $this->orangeLoginSession($msisdn);
      if(session()->has('current_url')){
        return redirect(session()->get('current_url'));
      }
      return redirect(url('?OpID=8'));
    }

    return back()->with('failed', 'You are not subscribed with this service!');
  }

  public function orangeLoginSession($msisdn)
  {
    session()->put('MSISDN', $msisdn);
    session()->put('orange_op_id', orange);
    session()->put('status', 'active');
  }

}
