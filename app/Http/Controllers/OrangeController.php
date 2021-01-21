<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\PincodeOrange;
use App\UnsubPincodeOrange;
use App\Post;
use Carbon\Carbon;
use Monolog\Logger;
use Illuminate\Support\Facades\File;
use Monolog\Handler\StreamHandler;


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
    $lang =  session::get('lang');
    date_default_timezone_set("Africa/Cairo");
    $number = ltrim($request->number, 0);
    $msisdn = "20$number";

      //  our check status
    $URL = $this->detect_server()['ORANGE_END_POINT']."/api/checkStatus";
    $JSON['msisdn'] = $msisdn;
    $JSON['service_id'] = ORANGE_ELKHEAR_SERVICE_ID;
    $headers['Accept'] = '*/*';
    $checkStatus = $this->SendRequestPost($URL, $JSON, $headers);

    // log check status
    // $actionName = "Orange Check Status";
    // $checkStatus_log['msisdn'] =$msisdn;
    // $checkStatus_log['result'] =    $checkStatus  ;
    // $this->log($actionName, $URL, $checkStatus_log);


 if($checkStatus != "0"){//msidn found and active = 1
      $this->orangeLoginSession($msisdn);
      if(session()->has('current_url')){
          return redirect(session()->get('current_url'));
        }
      return redirect(url('?OpID=8'));
 }else{ // not found    or active = 0 (pending ) or active = 2 unsub
      $random = mt_rand(1000, 9999);
      $pincode_random = $random;
      $pincode = new PincodeOrange();
      $pincode->msisdn = $msisdn;
      $pincode->pincode = $pincode_random;
      $date = Carbon::now()->format('Y/m/d H:i:s');
      $pincode->expire_date_time = Carbon::parse($date)->addHour();
      $pincode->save();
      Session::put('msisdn_orange', $msisdn);
      if ($lang == 'ar'){
        $message_pincode = "  للاشتراك في خدمة اورنج الخير يرجي ادخال هذا الرمز";
      }else{
        $message_pincode = "To subscribe to Orange El-Kheer service, please enter this code  ";
      }
      $send_message= $message_pincode.$pincode_random ;

      // orange send message
      $response = $this->orange_send_message($msisdn, $send_message);

      // orange send message log
      $actionName = "PinCode Orange";
      $URL = $this->detect_server()['ORANGE_API_SENDPINCODE'];
      $result['response'] = $response;
      $result['phone_number'] = $msisdn;
      $result['message'] = $message_pincode.$pincode_random;
      $this->log($actionName, $URL, $result);

      //dd($response);
      if ($response == "1") {

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
    $lang =  session::get('lang');
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
           /* =================  Orange result_code for sub / unsub api ===================
              0	success  // sub success
              1	already subscribed  // want to sub but alreday
              2	not subscribed    // unsub and want to unsub
              5	not allowed
              6	account problem = no balance
              31	Technical problem
              */

        if($orangeSubscribe == "0" || $orangeSubscribe == "1"){  // subscribe success or already sub

         // send welcome message
         if ($lang == 'ar'){
          $welcome_message = "تم الإشتراك فى باقة  أورانج الخير من أورانج لمدة 3 ايام ببلاش  تجدد ب 1 جنيه فى اليوم، جدد إيمانك واستمتع بأجدد الأدعية والإبتهالات وروائع الأناشيد الدينية مع باقة أورانج الخير. لالغاء الإشتراك ارسل unsub1 إلى 6124 مجانًا.";
          $welcome_message .= "  للدخول اضغط علي هذا الرابط ";
         }else{
          $welcome_message = " You have subscribed to the Orange Al Kheer package from Orange, renewed for 1 EGP per day, renew your faith and enjoy the latest prayers, invocations and masterpieces of religious songs with the Orange Al Kheer package. To unsubscribe, text unsub1 to 6124 for free. ";
          $welcome_message .= " To enter, click on this link ";
         }

       $welcome_message .= " ".url("/");


          // orange send message
          $response = $this->orange_send_message($msisdn, $welcome_message);

          // log for welcome message
         $actionName = "welcome Message Orange";
         $URL = $this->detect_server()['ORANGE_API_SENDPINCODE'];
         $result['response'] = $response;
         $result['phone_number'] = $msisdn;
         $result['message'] = $welcome_message;
         $this->log($actionName, $URL, $result);



          $this->orangeLoginSession($msisdn);
          // if(session()->has('current_url')){
          //   return redirect(session()->get('current_url'));
          // }
          return redirect(url('?OpID=8'));
        }else{  // need to handle other cases like  6  and others
          if($orangeSubscribe == "6") {
            if ($lang == 'ar'){
              return redirect('orange_portal_login')->with('failed', 'ليس لديك رصيد كافى');
            }
            return redirect('orange_portal_login')->with('failed', "You don't have enough balance");
          } elseif($orangeSubscribe == "5") {
            return redirect('orange_portal_login')->with('failed', 'not allowed');
          } elseif($orangeSubscribe == "31") {
            return redirect('orange_portal_login')->with('failed', 'Technical problem');
          } else {
            if ($lang == 'ar')
              return redirect('orange_portal_login')->with('failed', 'خطأ في التسجيل');
            return redirect('orange_portal_login')->with('failed', 'Register is failed');
          }
        }
      } else {
        if ($lang == 'ar'){
          $request->session()->flash('failed','انتهت صلاحية الكود يرجي الضغط علي اعادة ارسال كود التحقق');
        }else{
          $request->session()->flash('failed','The code has expired, please click on resend the pincode');
        }
        return redirect('checkpincode/');
      }

    } else {
      if ($lang == 'ar'){
        $request->session()->flash('failed','خطأ في كود التفعيل برجاء ادخال كود التفعيل الصحيح');
      }else{
        $request->session()->flash('failed','Activation error. Please enter the correct activation code');
      }
      return redirect('checkpincode/');
    }
  }

  public function ResendPincode(request $request)
  {
    $lang =  session::get('lang');
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
    if ($lang == 'ar'){
      $message_pincode = " للاشتراك في خدمة اورنج الخير يرجي ادخال هذا الرمز";
    }else{
      $message_pincode = "To subscribe to Orange El-Kheer service, please enter this code ";
    }
    $send_message= $message_pincode.$pincode_random ;
      // orange send message
      $response = $this->orange_send_message($msisdn, $send_message);

      // log for welcome message
      $actionName = "ResendPincode Orange";
      $URL = $this->detect_server()['ORANGE_API_SENDPINCODE'];
      $result['response'] = $response;
      $result['phone_number'] = $msisdn;
      $result['message'] = $message_pincode.$pincode_random;
      $this->log($actionName, $URL, $result);

    if ($response == "1") {
      if ($lang == 'ar')
      return redirect('checkpincode')->with('success', '!تم ارسال رمز التحقق');
      return redirect('checkpincode')->with('success', 'Pincode Sent!');
    } else {
      if ($lang == 'ar'){
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
    $lang =  session::get('lang');
    $number = ltrim($request->number, 0);
    $msisdn = "20$number";

    $URL = $this->detect_server()['ORANGE_END_POINT']."/api/checkStatus";
    $JSON['msisdn'] = $msisdn;
    $JSON['service_id'] = ORANGE_ELKHEAR_SERVICE_ID;
    $headers['Accept'] = '*/*';
    $checkStatus = $this->SendRequestPost($URL, $JSON, $headers);

    if($checkStatus != "0"){  //  found and active = 1

    date_default_timezone_set("Africa/Cairo");
    $random = mt_rand(1000, 9999);
    $pincode_random = $random;
    $pincode = new UnsubPincodeOrange();
    $pincode->msisdn = $msisdn;
    $pincode->pincode = $pincode_random;
    $date = Carbon::now()->format('Y/m/d H:i:s');
    $pincode->expire_date_time = Carbon::parse($date)->addHour();
    $pincode->save();
    Session::put('unsub_orange', $msisdn);
    if($lang == 'ar'){
      $message_pincode = " لالغاء الاشتراك في خدمة اورنج الخير يرجي ادخال هذا الرمز";
    }else{
      $message_pincode = " To unsubscribe from the Orange El-Kheer service, please enter this code ";
    }
    $send_message= $message_pincode.$pincode_random ;

    // orange send message
      $response = $this->orange_send_message($msisdn, $send_message);

    // log for welcome message
      $actionName = "UnsubPincodeOrange";
      $URL = $this->detect_server()['ORANGE_API_SENDPINCODE'];
      $result['response'] = $response;
      $result['phone_number'] = $msisdn;
      $result['message'] = $message_pincode.$pincode_random;
      $this->log($actionName, $URL, $result);
    if ($response == "1") {
      if ($lang == 'ar')
      return redirect('unsub_pincode')->with('success', '!تم ارسال رمز التحقق');
      return redirect('unsub_pincode')->with('success', 'Pincode Sent!');
    }

    }else{
      if($lang == 'ar'){
        $msg = '!انت غير مشترك';
      }else{
        $msg = 'You are not a subscriber!';
      }
      session()->flash('failed', $msg);
      return $this->logout();
    }


}

  public function unsub_pincode_confirm(request $request)
  {
    $lang =  session::get('lang');
    date_default_timezone_set("Africa/Cairo");
    $pincode = $request->input('pincode');
    $msisdn = Session::get('unsub_orange');

    $date = Carbon::now()->format('Y/m/d H:i:s');
    $PinCode = UnsubPincodeOrange::where('msisdn', '=', $msisdn)->where('pincode', '=', $pincode)->orderBy('id', 'DESC')->first();
    if ($PinCode) {
      $expire_date_time= $PinCode->expire_date_time; /*"2020-07-05 17:28:19"*/
      $now = Carbon::now()->format('Y-m-d H:i:s');  /*"2020-07-05 16:30:00"*/
      if ($now <= $expire_date_time) {
        $orangeUnSubscribe = $this->orangeUnSubscribe($msisdn);

     /* =================  Orange result_code for sub / unsub api ===================
      0	success
      1	already subscribed
      2	not subscribed
      5	not allowed
      6	account problem = no balance
      31	Technical problem
      */

        if($orangeUnSubscribe == "0"){ // unsub result code direct from orange unsub api
          // 0 =>  unsub success

             // send unsub success message
            if($lang == 'ar'){
            $unsub_success_message = "لقد تم الغاء اشتراكك في خدمة اورنج الخير";
            }else{
            $unsub_success_message = "Your subscription to Orange El-Kheer service has been canceled";
            }

         // orange send message
        $response = $this->orange_send_message($msisdn, $unsub_success_message);

          // log for welcome message
         $actionName = "Unsub Message Orange";
         $URL = $this->detect_server()['ORANGE_API_SENDPINCODE'];
         $result['response'] = $response;
         $result['phone_number'] = $msisdn;
         $result['message'] = $unsub_success_message;
         $this->log($actionName, $URL, $result);



          if($lang == 'ar'){
            $msg = '!تم الغاء الاشتراك';
          }else{
            $msg = 'Unsubscribed successfully!';
          }
          session()->flash('success', $msg);
          return $this->logout();
        }else{  // need to be handle 2 , 5 , 31
          if($orangeUnSubscribe == "2") {
            if ($lang == 'ar'){
              return redirect('orange_portal_unsub')->with('failed', 'انت لست مشترك فى الخدمه');
            }
            return redirect('orange_portal_unsub')->with('failed', "You are not subscribe in the service");
          } elseif($orangeUnSubscribe == "5") {
            return redirect('orange_portal_unsub')->with('failed', 'not allowed');
          } elseif($orangeUnSubscribe == "31") {
            return redirect('orange_portal_unsub')->with('failed', 'Technical problem');
          } else {
            if ($lang == 'ar')
              return redirect('orange_portal_unsub')->with('failed', 'خطأ في التسجيل');
            return redirect('orange_portal_unsub')->with('failed', 'Register is failed');
          }
        }
      } else {
        if (session::get("lang") == 'ar'){
          $request->session()->flash('failed','انتهت صلاحية الكود يرجي الضغط علي اعادة ارسال كود التحقق');
        }else{
          $request->session()->flash('failed','The code has expired, please click on resend the pincode');
        }
        return redirect('unsub_pincode/');
      }

    } else {
      if (session::get("lang") == 'ar'){
        $request->session()->flash('failed','خطأ في كود التفعيل برجاء ادخال كود التفعيل الصحيح');
      }else{
        $request->session()->flash('failed','Activation error. Please enter the correct activation code');
      }
      return redirect('unsub_pincode/');
    }
  }

  public function ResendUnsubPincode(request $request)
  {
    $lang =  session::get('lang');
    date_default_timezone_set("Africa/Cairo");
    $msisdn = Session::get('unsub_orange');
    $random = mt_rand(1000, 9999);
    $pincode_random = $random;
    $pincode = new UnsubPincodeOrange();
    $pincode->msisdn = $msisdn;
    $pincode->pincode = $pincode_random;
    $date = Carbon::now()->format('Y/m/d H:i:s');
    $pincode->expire_date_time = Carbon::parse($date)->addHour();
    $pincode->save();


    if($lang == 'ar'){
      $message_pincode = " لالغاء الاشتراك في خدمة اورنج الخير يرجي ادخال هذا الرمز";
    }else{
      $message_pincode = " To unsubscribe from the Orange El-Kheer service, please enter this code ";
    }

    $send_message= $message_pincode.$pincode_random ;
    // orange send message
    $response = $this->orange_send_message($msisdn, $send_message);

    // log for welcome message
      $actionName = "ResendUnsubPincode Orange";
      $URL = ORANGE_ELKHEAR_SERVICE_ID;
      $result['response'] = $response;
      $result['phone_number'] = $msisdn;
      $result['message'] = $message_pincode.$pincode_random;
      $this->log($actionName, $URL, $result);
      if ($response == "1") {
        if ($lang == 'ar')
        return redirect('unsub_pincode')->with('success', '!تم ارسال رمز التحقق');
        return redirect('unsub_pincode')->with('success', 'Pincode Sent!');
      }else{
        if($lang == 'ar'){
          $msg = '!انت غير مشترك';
        }else{
          $msg = 'You are not a subscriber!';
        }
        session()->flash('failed', $msg);
        return $this->logout();
      }

  }

  public function unsub_pincode()
  {
    $lang =  session::get('lang');
    return view('landing_v2.orange.unsub_pincode', compact('lang'));
  }
  public function orangeLoginSession($msisdn)
  {
    session()->put('MSISDN', $msisdn);
    session()->put('orange_op_id', orange);
    session()->put('status', 'active');
  }

  public function orangeSubscribe($msisdn)
  {
    $URL = $this->detect_server()['ORANGE_END_POINT']."/api/web_notify";  // free or direct sub

    $JSON['msisdn'] = $msisdn;
    $JSON['service_id'] = ORANGE_ELKHEAR_SERVICE_ID;
    $JSON['bearer_type'] = 'WEB';

    $headers['Accept'] = '*/*';

    $orangeSubscribe = $this->SendRequestPost($URL, $JSON, $headers);
    $actionName = "OrangeSubscribe";
    $result['orangeSubResult'] = $orangeSubscribe;
    $this->log($actionName, $URL, $result);
    return $orangeSubscribe;
  }

  public function orangeUnSubscribe($msisdn)
  {
    $URL = $this->detect_server()['ORANGE_END_POINT']."/api/orangeWeb";  // direct unsub

    $JSON['msisdn'] = $msisdn;
    $JSON['command'] = 'UNSUBSCRIBE';
    $JSON['service_id'] = ORANGE_ELKHEAR_SERVICE_ID;
    $JSON['bearer_type'] = 'WEB';

    $headers['Accept'] = '*/*';

    $orangeUnSubscribe = $this->SendRequestPost($URL, $JSON, $headers);
    $actionName = "OrangeUnSubscribe";
    $result['orangeUnSubResult'] = $orangeUnSubscribe;
    $this->log($actionName, $URL, $result);
    return $orangeUnSubscribe;
  }

  public function logout()
  {
    session()->forget('MSISDN');
    session()->forget('unsub_orange');
    session()->forget('orange_op_id');
    session()->forget('status');

    return redirect('orange_portal_login');
  }

  public function orange_send_message($msisdn, $message)
    {
      $URL_Api = $this->detect_server()['ORANGE_API_SENDPINCODE'];
      $param = "phone_number=$msisdn&message=$message";
      $ch = curl_init();
      curl_setopt($ch, CURLOPT_URL, $URL_Api);
      curl_setopt($ch, CURLOPT_POST, 1);
      curl_setopt($ch, CURLOPT_POSTFIELDS, $param);
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
      $response = curl_exec($ch);
      curl_close($ch);
      return $response;
    }

  public function log($actionName, $URL, $parameters_arr)
    {
      date_default_timezone_set("Africa/Cairo");
      $date = date("Y-m-d");
      $log = new Logger($actionName);

      if (!File::exists(storage_path('logs/' . $date . '/' . $actionName))) {
        File::makeDirectory(storage_path('logs/' . $date . '/' . $actionName), 0775, true, true);
      }

      $log->pushHandler(new StreamHandler(storage_path('logs/' . $date . '/' . $actionName . '/logFile.log', Logger::INFO)));
      $log->addInfo($URL, $parameters_arr);
    }

    public function orange_get_today_content_link(Request $request)
    {

      $orange_get_today_content_link = Post::select(
      'posts.id as post_id',
      'contents.title as content_title',
      'contents.id as video_id',
      'posts.operator_id as operator_id'  ,
      'posts.show_date as show_date' ,
      'posts.active as active' ,
      'posts.created_at as created_at')
        ->join('contents', 'contents.id', '=', 'posts.video_id')
        ->where('posts.operator_id', orange)
        ->where('posts.show_date', '<=', \Carbon\Carbon::now()->format('Y-m-d'))
        ->orderBy("created_at", "desc")
        ->first();
        $url = url('view_content/' . $orange_get_today_content_link->video_id . '/?OpID=' . $orange_get_today_content_link->operator_id);
        $orange_get_today_content_link = get_title_today_orange_link($orange_get_today_content_link->video_id) ." ". $url;
        return $orange_get_today_content_link ;
    }


    public function orange_today_link(Request $request)
    {

      $orange_get_today_content_link = Post::select(
      'posts.id as post_id',
      'contents.title as content_title',
      'contents.id as video_id',
      'posts.operator_id as operator_id'  ,
      'posts.show_date as show_date' ,
      'posts.active as active' ,
      'posts.created_at as created_at')
        ->join('contents', 'contents.id', '=', 'posts.video_id')
        ->where('posts.operator_id', orange)
        ->where('posts.show_date', '<=', \Carbon\Carbon::now()->format('Y-m-d'))
        ->orderBy("created_at", "desc")
        ->first();
        $url = url('view_content/' . $orange_get_today_content_link->video_id . '/?OpID=' . $orange_get_today_content_link->operator_id);
        return redirect( $url) ;
    }



}
