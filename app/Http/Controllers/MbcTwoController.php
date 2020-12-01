<?php

namespace App\Http\Controllers;

use App\TimWe;
use App\Video;
use SoapClient;
use App\Country;
use App\Filters;
use App\Pincode;
use App\Operator;
use App\MbcSendMt;
use Carbon\Carbon;
use Monolog\Logger;
use App\FilterPosts;
use App\ResendPincode;
use App\MbcNotification;
use App\timweSubscriber;
use App\timweUnsubscriber;
use App\ResponseSendMessage;
use Illuminate\Http\Request;
use Monolog\Handler\StreamHandler;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;
use Artisaninweb\SoapWrapper\SoapWrapper;
use Illuminate\Support\Facades\Validator;

class MbcTwoController extends Controller
{
  public function mbc_notifications(Request $request)
  {

    $validator = Validator::make($request->all(), [
      "msisdn" => "required",
      "action" => "required",
      "country" => "required",
      "operator" => "required",
      "shortcode" => "required",
    ]);

    $notification['msisdn'] = $request->msisdn;
    $notification['action'] = $request->action;
    $notification['country'] = $request->country;
    $notification['operator'] = $request->operator;
    $notification['shortcode'] = $request->shortcode;

    $url = $request->fullUrl();
    $logAction = 'Mbc Notification';

    $this->log_action($logAction, $url, $notification);

    if ($validator->fails()) {
      $response['status'] = 'FAILED';
      $response['errors'] = $validator->messages();
      return response()->json($response, 200);
    }

    $notification['url'] = $url;

    $MbcNotification = MbcNotification::create($notification);

    $response['status'] = 'SUCCESS';
    $response['notification_id'] = $MbcNotification->id;

    return json_encode($response);
  }



  public function MO_SMS_Posting()
  {
    $URL = 'http://mbc.mobc.com:8030/SourceSmsOut/SmsIN.asmx?WSDL';

    $UserName = 'webSourceOut';
    $UserPass = '2015Source@SMS_mbc';

    $Xmldoc['SmsID'] = '3';
    $Xmldoc['MobileNo'] = '962782777131';
    $Xmldoc['Country'] = 'jordan';
    $Xmldoc['Operator'] = 'umniah';
    $Xmldoc['Shortcode'] = '94099';
    $Xmldoc['Msgtxt'] = 'text 3';
    $Xmldoc['Lang'] = 'E';
    $Xmldoc['ServiceID'] = '2';

    $Xmldoc['Request'] = "<soap:Envelope xmlns:soap='http://www.w3.org/2003/05/soap-envelope' xmlns:tem='http://tempuri.org/'>
      <soap:Header/>
        <soap:Body>
         <tem:GetSmsIN>
            <!--Optional:-->
            <tem:UserName>$UserName</tem:UserName>
            <!--Optional:-->
            <tem:UserPass>$UserPass</tem:UserPass>
            <!--Optional:-->
            <tem:xmldoc>
            <Packet>
                <SMS>
                    <SmsID>" . $Xmldoc['SmsID'] . "</SmsID>
                    <MobileNo>" . $Xmldoc['MobileNo'] . "</MobileNo>
                    <Country>" . $Xmldoc['Country'] . "</Country>
                    <Operator>" . $Xmldoc['Operator'] . "</Operator>
                    <Shortcode>" . $Xmldoc['Shortcode'] . "</Shortcode>
                    <Msgtxt>" . $Xmldoc['Msgtxt'] . "</Msgtxt>
                    <Lang>" . $Xmldoc['Lang'] . "</Lang>
                    <ServiceID>" . $Xmldoc['ServiceID'] . "</ServiceID>
                </SMS>
            </Packet>
            </tem:xmldoc>
         </tem:GetSmsIN>
        </soap:Body>
      </soap:Envelope>";

    $ch = curl_init($URL);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: text/xml'));
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $Xmldoc['Request']);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($ch);
    curl_close($ch);

    $Xmldoc['Response'] = $output;
    $Xmldoc['ResponseCode'] = $output;
    $logAction = 'Mbc Send Mt';

    $this->log_action($logAction, $URL, $Xmldoc);

    MbcSendMt::create($Xmldoc);

    // return $output;

    $soap = new SoapWrapper;
    $soap->add('mbc', function ($service) use ($URL) {
      $service->wsdl($URL)->trace(true);
    });

    $data = [
      'UserName' => $UserName,
      'UserPass' => $UserPass,
      'Xmldoc'   => '<?xml version="1.0" encoding="utf-8"?>
        <Packet>
         <SMS>
         <SmsID>2</SmsID>
         <MobileNo>966535550107</MobileNo>
         <Country>KSA</Country>
         <Operator>STC</Operator>
         <Shortcode>88888</Shortcode>
         <Msgtxt>text 2</Msgtxt>
         <Lang>E</Lang>
         <ServiceID>1</ServiceID>
         </SMS>
        </Packet>'
    ];
    // Using the added service
    $soap->client('mbc', function ($service) use ($data) {
      dd($service->call('GetSmsIN', [$data]));
    });
  }

  public function index(Request $request)
  {

    $get_url_country  = $this->get_country($ip = NULL, $purpose = "location", $deep_detect = TRUE);
    $get_url_country = "KSA";  // KSA  -   Egypt  - Kuwait  - United Arab Emirates
    $country = Country::where('title',$get_url_country)->first();
    $operators = Operator::where('country_id',$country->id)->get();
    // dd($operators);

    $lang =  Session::get('applocale');
      if (Session::get('applocale') == 'ur') {
        $lang = 'ar';
      }
    session::put('lang', $lang);

    return view('landing_v2.mbcTwo.landing', compact("lang",'country','operators'));
  }

  public function pincode()
  {
    $lang =  session::get('lang');
    return view('landing_v2.mbcTwo.pinCode', compact("lang"));
  }

  public function unsubscribe()
  {
    $lang =  session::get('lang');
    return view('landing_v2.mbcTwo.unsub', compact("lang"));
  }

  public function login(Request $request)
  {
    $lang =  session::get('lang');
    $get_url_country  = $this->get_country($ip = NULL, $purpose = "location", $deep_detect = TRUE);
    $get_url_country = "KSA";  // KSA  -   Egypt  - Kuwait  - United Arab Emirates
    $country = Country::where('title',$get_url_country)->first();
    $operators = Operator::where('country_id',$country->id)->get();
    return view('landing_v2.mbcTwo.login', compact('lang','country','operators'));
  }

  public function gen_uuid()
  {
    return sprintf(
      '%04x%04x-%04x-%04x-%04x-%04x%04x%04x',
      mt_rand(0, 0xffff),
      mt_rand(0, 0xffff),
      mt_rand(0, 0xffff),
      mt_rand(0, 0x0fff) | 0x4000,
      mt_rand(0, 0x3fff) | 0x8000,
      mt_rand(0, 0xffff),
      mt_rand(0, 0xffff),
      mt_rand(0, 0xffff)
    );
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

  public function generateKey($presharedKey)
  {
    date_default_timezone_set('Asia/Qatar');

    // dd(time());

    $presharedKey = $presharedKey; //PSK shared by TIMWE
    $phrasetoEncrypt = TimweServiceId . "#" . round(microtime(true) * 1000); // Service Id shared by TIMWE

    // $encryptionAlgorithm = "AES/ECB/PKCS5Padding";
    $encrypted = "";

    if ($presharedKey != null && $phrasetoEncrypt != "") {
      $method = "aes-128-ecb";
      $encrypted = openssl_encrypt($phrasetoEncrypt, $method, $presharedKey, OPENSSL_PKCS1_PADDING);
      $result = base64_encode($encrypted);
      return $result;
    } else {
      return "String to encrypt, Key is required.";
    }
  }

  public function testMT()
  {
    $sendMT = new Request();
    $sendMT->msisdn = session('userIdentifier');
    $sendMT->sms = url('/?OpID=' . ooredoo);
    return $this->sendMt($sendMT);
  }

  public function sendMt(Request $request)
  {
    date_default_timezone_set('Asia/Qatar');

    $channel = 'sms';
    $partnerRoleId = partnerRoleId;

    require_once('uuid/UUID.php');
    $trxid = \UUID::v4();

    $headers = array(
      "Content-Type: application/json",
      "apikey: " . apikeysendMt,
      "authentication: " . $this->generateKey(presharedkeysendMt),
      "external-tx-id: " . $trxid
    );

    $now = strtotime(now());
    $sendDate = gmdate(DATE_W3C, $now);

    $vars["productId"] = productId;
    $vars["pricepointId"] = MTFreePricepointId;
    $vars["mcc"] = "427";
    $vars["mnc"] = "01";
    $vars["text"] = $request->sms;
    $vars["msisdn"] = $request->msisdn;
    $vars["largeAccount"] = largeAccount;
    $vars["sendDate"] = "'.$sendDate.'";
    $vars["priority"] = "NORMAL";
    $vars["timezone"] = "Asia/Qatar";
    $vars["context"] = "STATELESS";
    $vars["moTransactionUUID"] = "";

    $JSON = json_encode($vars);

    $actionName = "Send MT";
    $URL = url()->current();

    $URL = "https://qao.timwe.com/external/v2/" . $channel . "/mt/" . $partnerRoleId . "/";
    $ReqResponse = $this->SendRequest($URL, $JSON, $headers);
    $ReqResponse = json_decode($ReqResponse, true);

    //log request and response
    $result = [];
    $result['request'] = $vars;
    $result['headers'] = $headers;
    $result['response'] = $ReqResponse;
    $result['date'] = date('Y-m-d H:i:s');

    $this->log($actionName, $URL, $result);

    $timewe = TimWe::create([
      'api_request' => $URL,
      'payload' => json_encode($vars),
      'response' => json_encode($ReqResponse),
      'header' => json_encode($headers),
      'type'  => $actionName
    ]);

    return $ReqResponse;
  }

  public function subscriptionOptIn(Request $request) //register
  {
    // dd("omar");
    date_default_timezone_set("Africa/Cairo");
    // format number
    $get_url_country  = $this->get_country($ip = NULL, $purpose = "location", $deep_detect = TRUE);
    $get_url_country = "KSA";  // KSA  -   Egypt  - Kuwait  - United Arab Emirates
    $number = "";
    if($get_url_country == "Egypt"){
     if(isset($request->number)) {
      $number = ltrim($request->number,"0");
      $number = ltrim($request->number,"20");
     }
    }else{
      if(isset($request->number)) {
        $number = $request->number ;
      }else{
        $number = "" ;
      }

    }

    $msisdn = $request->code ?  $request->code.$number : session()->get('Msisdn');
    $operator = $request->operator ?? session()->get('operator');

    Session::put('Msisdn', $msisdn);
    Session::put('operator', $operator);



 // check user status
    $service_id = 2;
    $check = $this->checkStatus($msisdn, $service_id);

    if ($check == "true") {
      session(['MSISDN' => $msisdn, 'status' => 'active', 'mbc_op_id' => MBC_OP_ID]);
      $lang =  session::get('lang');
      if ($lang == 'ar') {
        $message = 'تم تسجيل الدخول بنجاح';
      } else {
        $message = 'Login succesfully';
      }
      return redirect(url('?OpID=' . MBC_OP_ID))->with(['success' => $message]);

    }
    $lang =  session::get('lang');
      $resend_pincode = ResendPincode::where('msisdn',$msisdn)->where('date',date('Y-m-d'))->first();
      if ($resend_pincode && $resend_pincode->count == 3) {
        if ($lang == 'ar'){
          return redirect('mbc_portal_landing')->with('failed', 'لقد تم تجاوز الحد الاقصي لمحاولات اعاده ارسال  كود التحقق');
        }
        return redirect('mbc_portal_landing')->with('failed', 'The maximum number of retries to resend the verification code has been exceeded
        ');
      }elseif($resend_pincode && $resend_pincode->count < 3){
        $resend_pincode->count = $resend_pincode->count +1;
      }else{
        $resend_pincode = new ResendPincode;
        $resend_pincode->msisdn = $msisdn;
        $resend_pincode->count = 1;
        $resend_pincode->date = Carbon::now()->format('Y-m-d');
      }
      $resend_pincode->save();

     $URL = "http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=$msisdn&OP=$operator";
    $response = $this->SendRequestGet($URL);
    $request_type = 'Send Pincode';

    $send_massage = new ResponseSendMessage();
    $send_massage->request = $URL;
    $send_massage->response = $response;
    $send_massage->request_type = $request_type;
    $send_massage->save();




    if ($response == "OK") {
      if ($lang == 'ar'){
        return redirect('mbc_portal_pin')->with('success', '!تم ارسال رمز التحقق');
      }
      return redirect('mbc_portal_pin')->with('success', 'Pincode Sent!');
    } else {
      if ($lang == 'ar'){
        return redirect('mbc_portal_landing')->with('failed', 'يوجد خطأ');
      }
      return redirect('mbc_portal_landing')->with('failed', 'There is an error');
    }
  }

  public function subscriptionConfirm(Request $request) //pincode
  {
    date_default_timezone_set("Africa/Cairo");

    $pincode = $request->input('pincode');
    $msisdn = Session::get('Msisdn');
    $operator = Session::get('operator');

    $URL = "http://mbc.mobc.com:8030/ALkanz_PIN/Confirm.aspx?Mobileno=$msisdn&OP=$operator&PinCode=$pincode";

    $response = $this->SendRequestGet($URL);
    $request_type = 'Confirm Pincode';

    $send_massage = new ResponseSendMessage();
    $send_massage->request = $URL;
    $send_massage->response = $response;
    $send_massage->request_type = $request_type;
    $send_massage->save();

    $lang =  session::get('lang');

    if ($response == 'Success') {
      if ($lang == 'ar'){
        return redirect('mbc_portal_pin')->with('success','تم الاشتراك بنجاح وارسال رابط الدخول لجوالك');
      }
      return redirect('mbc_portal_pin')->with('success','Subscribed successfully and login url is sent to your phone');
    }elseif($response = 'CodeHasExpired'){
      if ($lang == 'ar'){
        return redirect('mbc_portal_pin')->with('failed','يوجد خطأ يرجى الضغط علي اعاده ارسال كود التحقق');
      }
      return redirect('mbc_portal_pin')->with('failed','There is an error, please click to resend the pincode');
    }else{
      if ($lang == 'ar'){
        return redirect('mbc_portal_pin')->with('failed','خطأ في كود التفعيل برجاء ادخال كود التفعيل الصحيح');
      }
      return redirect('mbc_portal_pin')->with('failed','Activation error. Please enter the correct activation code');
    }

  }



  public function SendRequest($URL, $JSON, $headers)
  {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $URL);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 100);
    curl_setopt($ch, CURLOPT_TIMEOUT, 100);
    curl_setopt($ch, CURLOPT_VERBOSE, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $JSON);
    $sOutput = curl_exec($ch);
    curl_close($ch);

    return $sOutput;
  }

  public function checkStatus($msisdn, $service_id)
  {
    $vars["msisdn"] = $msisdn;
    $vars["service_id"] = $service_id;
    $JSON = json_encode($vars);
    $actionName = "MBC Check Status";
    $URL = CHECKSUB_URL;
    $ReqResponse = $this->SendRequest($URL, $vars, ["Accept: application/json"]);
    $ReqResponse = json_decode($ReqResponse, true);
    //log request and response
    $result['request'] = $vars;
    $result['response'] = $ReqResponse;
    $result['date'] = date('Y-m-d H:i:s');
    $this->log($actionName, $URL, $result);
    return $ReqResponse;
  }

  public function mbc_create_sub($msisdn, $service_id)
  {
    $vars["msisdn"] = $msisdn;
    $vars["service_id"] = $service_id;
    $JSON = json_encode($vars);
    $actionName = "MBC Check Status";
    $URL = MBC_CREATE_SUB;
    $ReqResponse = $this->SendRequest($URL, $vars, ["Accept: application/json"]);
    $ReqResponse = json_decode($ReqResponse, true);
    //log request and response
    $result['request'] = $vars;
    $result['response'] = $ReqResponse;
    $result['date'] = date('Y-m-d H:i:s');
    $this->log($actionName, $URL, $result);
    return $ReqResponse;
  }




  public function checkStatusLogin(Request $request)
  {
    $get_url_country  = $this->get_country($ip = NULL, $purpose = "location", $deep_detect = TRUE);
    $get_url_country = "KSA";  // KSA  -   Egypt  - Kuwait  - United Arab Emirates
    if($get_url_country == "Egypt"){
      if(isset($request->number)) {
       $number = ltrim($request->number,"0");
       $number = ltrim($request->number,"20");
      }
     }else{
       if(isset($request->number)) {
         $number = $request->number ;
       }else{
         $number = "" ;
       }

     }
    $msisdn = $request->code.$number;
    // $msisdn = str_replace("200","20",$msisdn);
    // $msisdn = str_replace("2020","20",$msisdn);
    // dd($msisdn);
    $service_id = 2;
    // $msisdn = str_replace("+0","",$msisdn);
    // $msisdn = trim($msisdn,"+");

    $check = $this->checkStatus($msisdn, $service_id);

    if ($check == "true") {

      session(['MSISDN' => $msisdn, 'status' => 'active', 'mbc_op_id' => MBC_OP_ID]);
      $lang =  session::get('lang');
      if ($lang == 'ar') {
        $message = 'تم تسجيل الدخول بنجاح';
      } else {
        $message = 'Login succesfully';
      }
      return redirect(url('?OpID=' . MBC_OP_ID))->with(['success' => $message]);

    } else {
      $lang =  session::get('lang');
      if ($lang == 'ar') {
        $message = 'انت غير مشترك, برجاء الاشتراك';
      } else {
        $message = 'you are not a subscriber Please subscribe Now';
      }

      return redirect('mbc_portal_landing')->with(['failed' => $message]);
    }
  }

  public function resend_pincode(Request $request, $partnerRole) //resend_pincode
  {
    $msisdn = Session::get('Msisdn');
    $service_id = 2;
    $random = mt_rand(1000, 9999);
    $pincode_random = $random;
    $pincode = new Pincode();
    $pincode->msisdn = $msisdn;
    $pincode->pincode = $pincode_random;
    $date = Carbon::now()->format('Y-m-d H:i:s');
    $pincode->expire_date_time = Carbon::parse($date)->addHour();
    $pincode->operator_id = Session::get('operator_id');
    $pincode->save();
    Session::put('Msisdn', $msisdn);
    // $resend_pincode = ResendPincode::where('msisdn',$msisdn)->first();
    // dd($resend_pincode);
    //send massage
    $URL = "http://mbc.mobc.com:8030/Alkanz_URL_IN/SMSIN.aspx?"."Mobileno=$msisdn&MsgBody=$pincode_random";
    $ch = curl_init();
    $timeout = 500;
    curl_setopt($ch, CURLOPT_URL, $URL);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
    curl_setopt($ch, CURLOPT_POSTREDIR, 3);
    $response = curl_exec($ch);
    curl_close($ch);
    $send_massage = new ResponseSendMessage();
    $send_massage->link = $URL;
    $send_massage->response = $response;
    $send_massage->save();
    $lang =  session::get('lang');
    if ($response == "OK") {
      if ($lang == 'ar'){
        return redirect('mbc_portal_pin')->with('success', '!تم ارسال رمز التحقق');
      }
      return redirect('mbc_portal_pin')->with('success', 'Pincode Sent!');
    } else {
      if ($lang == 'ar'){
        return redirect('mbc_portal_pin')->with('failed', 'يوجد خطأ يرجى الضغط علي اعاده ارسال كود التحقق');
      }
      return redirect('mbc_portal_pin')->with('failed', 'There is an error, please click to resend the verification code');
    }
  }





  public function subscriptionOptOut(Request $request, $partnerRole)
  {
        $lang =  session::get('lang');
          if ($lang == "ar") {
            return redirect('mbc_portal_landing/' . $lang)->with('success', 'تم الغاء الاشتراك بنجاح');
          } else {
            return redirect('mbc_portal_landing/' . $lang)->with('success', 'The service has been canceled successfully');
          }
  }



  public function logout()
  {
    session()->forget('userIdentifier');
    session()->forget('status');
    session()->forget('ooredoo_op_id');

    return redirect('mbc_portal_landing');
  }


  public function terms(Request $request)
  {
    if (request()->get('OpID') == mbc_op_id()) {
      return view('front.terms');
    } else {
      return view('errors.404');
    }
  }

  public function faq(Request $request)
  {
    if (request()->get('OpID') == mbc_op_id()) {
      return view('front.f_q');
    } else {
      return view('errors.404');
    }
  }

  public function profile(Request $request)
  {
    if ($request->has('OpID') && $request->OpID == MBC_OP_ID) {  //mbc
      if ((session()->get('mbc_op_id') == MBC_OP_ID && session()->get('status') == 'active' && session()->has('MSISDN'))) {
        return view('front.profile');
      }
      return redirect('mbc_portal_login');
    }
  }

  function get_country($ip = NULL, $purpose = "location", $deep_detect = TRUE)
  {
      $output = NULL;
      if (filter_var($ip, FILTER_VALIDATE_IP) === FALSE) {
          $ip = $_SERVER["REMOTE_ADDR"];
          if ($deep_detect) {
              if (filter_var(@$_SERVER['HTTP_X_FORWARDED_FOR'], FILTER_VALIDATE_IP))
                  $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
              if (filter_var(@$_SERVER['HTTP_CLIENT_IP'], FILTER_VALIDATE_IP))
                  $ip = $_SERVER['HTTP_CLIENT_IP'];
          }
      }
      $purpose = str_replace(array("name", "\n", "\t", " ", "-", "_"), NULL, strtolower(trim($purpose)));
      $support = array("country", "countrycode", "state", "region", "city", "location", "address");
      if (filter_var($ip, FILTER_VALIDATE_IP) && in_array($purpose, $support)) {
          $ipdat  = @json_decode($this->GetPageData("http://www.geoplugin.net/json.gp?ip=" . $ip));

          if (@strlen(trim($ipdat->geoplugin_countryCode)) == 2) {
              switch ($purpose) {
                  case "location":
                      $output = @$ipdat->geoplugin_countryName;
                      break;
                  case "address":
                      $address = array($ipdat->geoplugin_countryName);
                      if (@strlen($ipdat->geoplugin_regionName) >= 1)
                          $address[] = $ipdat->geoplugin_regionName;
                      if (@strlen($ipdat->geoplugin_city) >= 1)
                          $address[] = $ipdat->geoplugin_city;
                      $output = implode(", ", array_reverse($address));
                      break;
                  case "country":
                      $output = @$ipdat->geoplugin_countryName;
                      break;
              }
          }
      }


     if( $output == NULL) $output = "Egypt";
      return $output;
  }


  public static function GetPageData($URL)
    {

        $ch = curl_init();
        $timeout = 500;
        curl_setopt($ch, CURLOPT_URL, $URL);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
        curl_setopt($ch, CURLOPT_POSTREDIR, 3);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        $data = curl_exec($ch);
        curl_close($ch);
        return $data;
    }


    public function mbc_filter_list()
  {
    $operator = Operator::find(mbc);

    $filters = $operator->filterPosts->load('filter');

    return view('front.mbc_filter.list', compact('filters'));
  }

    public function mbc_filter_inner(Request $request)
  {
    $filter = FilterPosts::find($request->id)->filter;

    return view('front.mbc_filter.inner', compact('filter'));
  }

}
