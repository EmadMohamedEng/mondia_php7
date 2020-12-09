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

    $URL = ORANGE_END_POINT."/api/checkStatus";

    $JSON['msisdn'] = $msisdn;
    $JSON['service_id'] = 3;

    $headers['Accept'] = '*/*';

    $checkStatus = $this->SendRequestPost($URL, $JSON, $headers);

    if($checkStatus){
      $orange_msisdn = json_decode($checkStatus);

      $this->orangeLoginSession($checkStatus->msisdn);
      if(session()->has('current_url')){
        return redirect(session()->get('current_url'));
      }
      return redirect(url('?OpID=8'));
    }else{
      $orangeSubscribe = $this->orangeSubscribe($msisdn);
      if($orangeSubscribe == 0){
        $this->orangeLoginSession($msisdn);
        if(session()->has('current_url')){
          return redirect(session()->get('current_url'));
        }
        return redirect(url('?OpID=8'));
      }
    }

    $lang =  Session::get('applocale');
    if($lang = 'ar'){
      $msg = '!انت غير مشترك بالخدمة';
    }else{
      $msg = 'You are not subscribed with this service!';
    }

    return back()->with('failed', $msg);
  }

  public function postUnsubscribe(Request $request)
  {
    $number = ltrim($request->number, 0);

    $msisdn = "20$number";

    $URL = ORANGE_END_POINT."/api/checkStatus";

    $JSON['msisdn'] = $msisdn;

    $headers['Accept'] = '*/*';

    $checkStatus = $this->SendRequestPost($URL, $JSON, $headers);

    $lang =  Session::get('applocale');

    if($checkStatus){
      $orangeUnSubscribe = $this->orangeUnSubscribe($msisdn);
      if($orangeUnSubscribe == 0){
        if($lang = 'ar'){
          $msg = '!تم الغاء الاشتراك';
        }else{
          $msg = 'Unsubscribed successfully!';
        }
        session()->flash('success', $msg);
        return $this->logout();
      }
    }else{
      if($lang = 'ar'){
        $msg = '!انت غير مشترك';
      }else{
        $msg = 'You are not a subscriber!';
      }
      session()->flash('failed', $msg);
      return $this->logout();
    }
  }

  public function orangeLoginSession($msisdn)
  {
    session()->put('MSISDN', $msisdn);
    session()->put('orange_op_id', orange);
    session()->put('status', 'active');
  }

  public function orangeSubscribe($msisdn)
  {
    $URL = ORANGE_END_POINT."/api/orangeWeb";

    $JSON['msisdn'] = $msisdn;
    $JSON['command'] = 'Subscribe';
    $JSON['service_id'] = 3;
    $JSON['bearer_type'] = 'WEB';

    $headers['Accept'] = '*/*';

    $orangeSubscribe = $this->SendRequestPost($URL, $JSON, $headers);

    return $orangeSubscribe;
  }

  public function orangeUnSubscribe($msisdn)
  {
    $URL = ORANGE_END_POINT."/api/orangeWeb";

    $JSON['msisdn'] = $msisdn;
    $JSON['command'] = 'Unsubscribe';
    $JSON['service_id'] = 3;
    $JSON['bearer_type'] = 'WEB';

    $headers['Accept'] = '*/*';

    $orangeUnSubscribe = $this->SendRequestPost($URL, $JSON, $headers);

    return $orangeUnSubscribe;
  }

  public function logout()
  {
    session()->forget('MSISDN');
    session()->forget('orange_op_id');
    session()->forget('status');

    return redirect('orange_portal_login');
  }

}
