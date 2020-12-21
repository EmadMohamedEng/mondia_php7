<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\PincodeOrange;
use Carbon\Carbon;


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

  public function postLogin(Request $request)
  {
    date_default_timezone_set("Africa/Cairo");
    $number = ltrim($request->number, 0);
    $msisdn = "20$number";
    $URL = ORANGE_END_POINT."/api/checkStatus";
    $JSON['msisdn'] = $msisdn;
    $JSON['service_id'] = ORANGE_ELKHEAR_SERVICE_ID;
    $headers['Accept'] = '*/*';
    $checkStatus = $this->SendRequestPost($URL, $JSON, $headers);
    //  dd($checkStatus);
    if($checkStatus != "0"){  //  found
      $orange_msisdn = json_decode($checkStatus);
      $this->orangeLoginSession($msisdn);
      if(session()->has('current_url')){
        return redirect(session()->get('current_url'));
      }
      return redirect(url('?OpID=8'));
    }else{ // not found

      $random = mt_rand(1000, 9999);
      $pincode_random = $random;
      $pincode = new PincodeOrange();
      $pincode->msisdn = $msisdn;
      $pincode->pincode = $pincode_random;
      $date = Carbon::now()->format('Y/m/d H:i:s');
      $pincode->expire_date_time = Carbon::parse($date)->addHour();
      $pincode->save();
      Session::put('msisdn_orange', $msisdn);

      $URL_Api = ORANGE_API_SENDPINCODE;
      $param = "phone_number=$msisdn&message=$pincode_random";
      $ch = curl_init();
      curl_setopt($ch, CURLOPT_URL, $URL_Api);
      curl_setopt($ch, CURLOPT_POST, 1);
      curl_setopt($ch, CURLOPT_POSTFIELDS, $param);
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
      $response = curl_exec($ch);
      curl_close($ch);

      //dd($response);
      if ($response == "1") {
        $lang =  session::get('lang');
        if ($lang == 'ar')
          return redirect('checkpincode')->with('success', '!تم ارسال رمز التحقق');
          return redirect('checkpincode')->with('success', 'Pincode Sent!');
      } else {
        if (session::get("lang") == 'ar'){
          $request->session()->flash('failed','يوجد خطأ يرجى الضغط علي اعاده ارسال كود التحقق');
        }else{
          $request->session()->flash('failed','There is an error, please click to resend the verification code');
        }
        return redirect('checkpincode/');
      }
    }
  }


  public function checkpincode(request $request)
  {
    $lang =  session::get('lang');
    $msisdn = Session::get('msisdn_orange');
    return view('landing_v2.orange.pincode', compact('msisdn','lang'));
  }

  public function checkpincode_confirm(request $request)
  {
    date_default_timezone_set("Africa/Cairo");
    $pincode = $request->input('pincode');
    $msisdn = Session::get('msisdn_orange');

    $date = Carbon::now()->format('Y/m/d H:i:s');
    $PinCode = PincodeOrange::where('msisdn', '=', $msisdn)->where('pincode', '=', $pincode)->orderBy('id', 'DESC')->first();
    if ($PinCode) {
      $expire_date_time= $PinCode->expire_date_time; /*"2020-07-05 17:28:19"*/
      $now = Carbon::now()->format('Y-m-d H:i:s');  /*"2020-07-05 16:30:00"*/
      if ($now <= $expire_date_time) {
        $orangeSubscribe = $this->orangeSubscribe($msisdn);
        if($orangeSubscribe == 0){
          $this->orangeLoginSession($msisdn);
          if(session()->has('current_url')){
            return redirect(session()->get('current_url'));
          }
          return redirect(url('?OpID=8'));
        }else{
          $lang =  session::get('lang');
          if ($lang == 'ar')
          return redirect('orange_portal_login')->with('failed', 'خطأ في التسجيل');
          return redirect('orange_portal_login')->with('failed', 'Register is failed');
        }
      } else {
        if (session::get("lang") == 'ar'){
          $request->session()->flash('failed','انتهاء وقت الكود برجاء ارسال الكود مره اخرى');
        }else{
          $request->session()->flash('failed','Resend the pincode');
        }
        return redirect('checkpincode/');
      }

    } else {
      if (session::get("lang") == 'ar'){
        $request->session()->flash('failed','خطأ في كود التفعيل برجاء ادخال كود التفعيل الصحيح');
      }else{
        $request->session()->flash('failed','Activation error. Please enter the correct activation code');
      }
      return redirect('checkpincode/');
    }
  }

  public function ResendPincode(request $request)
  {
    date_default_timezone_set("Africa/Cairo");
    $msisdn = Session::get('msisdn_orange');
    $random = mt_rand(1000, 9999);
    $pincode_random = $random;
    $pincode = new PincodeOrange();
    $pincode->msisdn = $msisdn;
    $pincode->pincode = $pincode_random;
    $date = Carbon::now()->format('Y/m/d H:i:s');
    $pincode->expire_date_time = Carbon::parse($date)->addHour();
    $pincode->save();

    $URL_Api = ORANGE_API_SENDPINCODE;
      $param = "phone_number=$msisdn&message=$pincode_random";
      $ch = curl_init();
      curl_setopt($ch, CURLOPT_URL, $URL_Api);
      curl_setopt($ch, CURLOPT_POST, 1);
      curl_setopt($ch, CURLOPT_POSTFIELDS, $param);
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
      $response = curl_exec($ch);
      curl_close($ch);
    if ($response == "1") {
      $lang =  session::get('lang');
      if ($lang == 'ar')
      return redirect('checkpincode')->with('success', '!تم ارسال رمز التحقق');
      return redirect('checkpincode')->with('success', 'Pincode Sent!');
    } else {
      if (session::get("lang") == 'ar'){
        $request->session()->flash('failed','يوجد خطأ يرجى الضغط علي اعاده ارسال كود التحقق');
      }else{
        $request->session()->flash('failed','There is an error, please click to resend the verification code');
      }
      return redirect('checkpincode/');
    }

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


  public function postUnsubscribe(Request $request)
  {
    $number = ltrim($request->number, 0);

    $msisdn = "20$number";

    $URL = ORANGE_END_POINT."/api/checkStatus";

    $JSON['msisdn'] = $msisdn;

    $headers['Accept'] = '*/*';

    $checkStatus = $this->SendRequestPost($URL, $JSON, $headers);

    $lang =  Session::get('applocale');



    if($checkStatus != "0"){  //  found
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
    $URL = ORANGE_END_POINT."/api/web_notify";  // free or direct sub

    $JSON['msisdn'] = $msisdn;
    $JSON['service_id'] = ORANGE_ELKHEAR_SERVICE_ID;
    $JSON['bearer_type'] = 'WEB';

    $headers['Accept'] = '*/*';

    $orangeSubscribe = $this->SendRequestPost($URL, $JSON, $headers);

    return $orangeSubscribe;
  }

  public function orangeUnSubscribe($msisdn)
  {
    $URL = ORANGE_END_POINT."/api/orangeWeb";  // direct unsub

    $JSON['msisdn'] = $msisdn;
    $JSON['command'] = 'Unsubscribe';
    $JSON['service_id'] = ORANGE_ELKHEAR_SERVICE_ID;
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
