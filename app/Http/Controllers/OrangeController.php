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
    $number = ltrim($request->number, 0);

    $msisdn = "20$number";

    $URL = END_POINT."/orange_integration/api/checkStatus";

    $JSON['msisdn'] = $msisdn;

    $headers['Accept'] = '*/*';

    $checkStatus = $this->SendRequestPost($URL, $JSON, $headers);

    if($checkStatus){
      $this->orangeLoginSession($msisdn);
      if(session()->has('current_url')){
        return redirect(session()->get('current_url'));
      }
      return redirect(url('?OpID=8'));
    }else{
      $orangeSubscribe = $this->orangeSubscribe($msisdn);
      $this->orangeLoginSession($msisdn);
      if(session()->has('current_url')){
        return redirect(session()->get('current_url'));
      }
      return redirect(url('?OpID=8'));
    }

    $lang =  Session::get('applocale');
    if($lang = 'ar'){
      $msg = '!انت غير مشترك بالخدمة';
    }else{
      $msg = 'You are not subscribed with this service!';
    }

    return back()->with('failed', $msg);
  }

  public function orangeLoginSession($msisdn)
  {
    session()->put('MSISDN', $msisdn);
    session()->put('orange_op_id', orange);
    session()->put('status', 'active');
  }

  public function orangeSubscribe($msisdn)
  {
    $URL = END_POINT."/orange_integration/api/createSubscription";

    $JSON['msisdn'] = $msisdn;

    $headers['Accept'] = '*/*';

    $orangeSubscribe = $this->SendRequestPost($URL, $JSON, $headers);

    return $orangeSubscribe;
  }

  public function logout()
  {
    session()->forget('MSISDN');
    session()->forget('orange_op_id');
    session()->forget('status');

    return redirect('orange_portal_login');
  }

}
