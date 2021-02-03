<?php

namespace App\Http\Controllers;

use SoapClient;
use App\MbcSendMt;
use App\MbcNotification;
use Illuminate\Http\Request;
use Artisaninweb\SoapWrapper\SoapWrapper;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use Monolog\Handler\StreamHandler;
use Monolog\Logger;
use Illuminate\Support\Facades\File;
use App\TimWe;
use App\timweUnsubscriber;
use App\timweSubscriber;


class MbcController extends Controller
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

      $UserName ='webSourceOut';
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
                    <SmsID>".$Xmldoc['SmsID']."</SmsID>
                    <MobileNo>".$Xmldoc['MobileNo']."</MobileNo>
                    <Country>".$Xmldoc['Country']."</Country>
                    <Operator>".$Xmldoc['Operator']."</Operator>
                    <Shortcode>".$Xmldoc['Shortcode']."</Shortcode>
                    <Msgtxt>".$Xmldoc['Msgtxt']."</Msgtxt>
                    <Lang>".$Xmldoc['Lang']."</Lang>
                    <ServiceID>".$Xmldoc['ServiceID']."</ServiceID>
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
      $soap->add('mbc',function ($service) use($URL) {
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
      $lang =  isset($request->lang) ? $request->lang : "en";
      session::put('lang', $lang);
      return view('landing_v2.mbc.timwe_landing', compact("lang"));
    }

    public function pincode()
    {
      $lang =  session::get('lang');
      return view('landing_v2.mbc.timwe_pinCode', compact("lang"));
    }

    public function unsubscribe()
    {
      $lang =  session::get('lang');
      return view('landing_v2.mbc.timwe_unsub', compact("lang"));
    }

    public function login(Request $request)
    {
      $lang =  isset($request->lang) ? $request->lang : "en";
      session::put('lang', $lang);
      return view('landing_v2.mbc.timwe_login', compact('lang'));
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

    public function subscriptionOptIn(Request $request, $partnerRole)
    {
      $msisdn = $request->number ?? session('pinMsisdn');
      $service_id = 2;

      $check = $this->checkStatus($msisdn, $service_id);
      if ($check) {

        session(['MSISDN' => $msisdn, 'status' => 'active', 'mbc_op_id' => MBC_OP_ID]);
        return redirect(url('/?OpID=' . MBC_OP_ID));

      } else {

        date_default_timezone_set('Asia/Qatar');

        $partnerRoleId = $partnerRole;

        require_once('uuid/UUID.php');
        $trxid = \UUID::v4();

        $headers = array(
          "Content-Type: application/json",
          "apikey: " . apikeysubscription,
          "authentication: " . $this->generateKey(presharedkeysubscription),
          "external-tx-id: " . $trxid
        );

        $now = strtotime(now());
        $sendDate = gmdate(DATE_W3C, $now);

        $vars["userIdentifier"] = '966' . $msisdn;
        session()->put('userIdentifier', '966' . $msisdn);
        session()->put('pinMsisdn',  $msisdn);
        $vars["userIdentifierType"] = "MSISDN";
        $vars["productId"] = productId;
        $vars["mcc"] = "427";
        $vars["mnc"] = "01";
        $vars["entryChannel"] = "WEB";
        $vars["largeAccount"] = largeAccount;
        $vars["subKeyword"] = "";
        // $vars["trackingId"] = "12637414527";
        // $vars["clientIP"] = "127.0.0.1";
        // $vars["campaignUrl"] = "";
        // $vars["optionalParams"] = "";

        $JSON = json_encode($vars);

        $actionName = "Timwe Subscription OptIn";
        $URL = url()->current();

        $URL = "https://qao.timwe.com/external/v2/subscription/optin/" . $partnerRoleId;
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
        //dd($ReqResponse);
        if ($ReqResponse['responseData']['subscriptionResult'] == 'OPTIN_ALREADY_ACTIVE') {
          $this->checksub('subscribe', '966' . $msisdn, $timewe->id);

          session(['MSISDN' => session('userIdentifier'), 'status' => 'active', 'ooredoo_op_id' => ooredoo]);
          return redirect(url('/?OpID=' . ooredoo));
        } else {
          if (true) {
            $lang =  session::get('lang');
            if ($request->has('prev_url'))
              return redirect('alkenz_portal_pin');
            if ($lang == 'ar')
              return redirect('alkenz_portal_pin')->with('success', '!تم ارسال رمز التحقق');

            return redirect('alkenz_portal_pin')->with('success', 'Pincode Sent!');
          } else {
            $lang =  session::get('lang');
            if ($lang == "ar") {
              return redirect('alkenz_portal_landing/' . $lang)->with('failed', 'لقد حدث خطأ, برجاء المحاولة لاحقا');
            } else {
              return redirect('alkenz_portal_landing/' . $lang)->with('failed', 'An error has occurred, please try again later');
            }
          }
        }
      }
    }

    public function subscriptionConfirm(Request $request, $partnerRole)
    {
      date_default_timezone_set('Asia/Qatar');

      $partnerRoleId = $partnerRole;

      require_once('uuid/UUID.php');
      $trxid = \UUID::v4();

      $headers = array(
        "Content-Type: application/json",
        "apikey: " . apikeysubscription,
        "authentication: " . $this->generateKey(presharedkeysubscription),
        "external-tx-id: " . $trxid
      );

      $now = strtotime(now());
      $sendDate = gmdate(DATE_W3C, $now);

      if (session()->has('userIdentifier')) {
        $vars["userIdentifier"] = session('userIdentifier');
      } else {
        $vars["userIdentifier"] = 'no session found';
      }
      $vars["userIdentifierType"] = "MSISDN";
      $vars["productId"] = productId;
      $vars["mcc"] = "427";
      $vars["mnc"] = "01";
      $vars["entryChannel"] = "WEB";
      $vars["clientIp"] = "";
      $vars["transactionAuthCode"] = $request->pincode;

      $JSON = json_encode($vars);

      $actionName = "Timwe subscription Confirm";
      $URL = url()->current();

      $URL = "https://qao.timwe.com/external/v2/subscription/optin/confirm/" . $partnerRoleId;
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

      session(['MSISDN' => $vars["userIdentifier"], 'status' => 'active', 'mbc_op_id' => MBC_OP_ID]);

      $lang =  session::get('applocale');
      if($lang == 'ar'){
        $message = 'تم الاشتراك بنجاح';
      }else{
        $message = 'Subscribed succesfully';
      }

      return redirect(url('?OpID=' . MBC_OP_ID))->with(['success' => $message]);

      // if ($ReqResponse['code'] == 'SUCCESS') {

      //   if ($ReqResponse['responseData']['subscriptionResult'] == 'OPTIN_CONF_WRONG_PIN') {
      //     return redirect('mbc_portal_pin')->with('failed', 'رقم التحقق خاطئ يرجي المحاولة مرة اخري');
      //   }

        // $this->checksub('subscribe', session('userIdentifier'), $timewe->id);
        // session(['MSISDN' => session('userIdentifier'), 'status' => 'active', 'ooredoo_op_id' => ooredoo]);
        // $sendMT = new Request();
        // $sendMT->msisdn = session('userIdentifier');
        // $sendMT->sms = url('/?OpID='.ooredoo);
        //send mt with link
        // $this->sendMt($sendMT); // should be fire after receive first charging success

        // return redirect(url('/?OpID=' . ooredoo));
      // } else {

      //   $lang =  session::get('lang');
      //   if ($lang == "ar") {
      //     return redirect('mbc_portal_pin')->with('failed', 'لقد حدث خطأ, برجاء المحاولة لاحقا');
      //   } else {
      //     return redirect('mbc_portal_pin')->with('failed', 'An error has occurred, please try again later');
      //   }
      // }
    }

    public function subscriptionOptOut(Request $request, $partnerRole)
    {
      date_default_timezone_set('Asia/Qatar');

      $partnerRoleId = $partnerRole;

      require_once('uuid/UUID.php');
      $trxid = \UUID::v4();

      $headers = array(
        "Content-Type: application/json",
        "apikey: " . apikeysubscription,
        "authentication: " . $this->generateKey(presharedkeysubscription),
        "external-tx-id: " . $trxid
      );

      $now = strtotime(now());
      $sendDate = gmdate(DATE_W3C, $now);

      $vars["userIdentifier"] = '966' . $request->number;
      $vars["userIdentifierType"] = "MSISDN";
      $vars["productId"] = productId;
      $vars["mcc"] = "427";
      $vars["mnc"] = "01";
      $vars["entryChannel"] = "WEB";
      $vars["largeAccount"] = largeAccount;
      $vars["subKeyword"] = "SUB";
      // $vars["trackingId"] = "12637414527";
      // $vars["clientIP"] = "127.0.0.1";
      // $vars["controlKeyword"] = "";
      // $vars["controlServiceKeyword"] = "";
      // $vars["subId"] = "";
      // $vars["cancelReason"] = "";
      // $vars["cancelSource"] = "";

      $JSON = json_encode($vars);

      $actionName = "Timwe subscription OptOut";
      $URL = url()->current();

      $URL = "https://qao.timwe.com/external/v2/subscription/optout/" . $partnerRoleId;
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

      // dd($ReqResponse['responseData']['subscriptionResult']);
      if ($ReqResponse['responseData']['subscriptionResult'] == 'OPTOUT_CANCELED_OK') {
        $this->checksub('unsubscribe', '966' . $request->number, $timewe->id);

        return redirect('alkenz_portal_unsub')->with('success', 'تم الغاء الاشتراك بنجاح');
      } else {
        return redirect('alkenz_portal_unsub')->with('failed', 'هذا الرقم غير مشترك بالخدمة');
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

    public function checkStatusLogin(Request $request)
    {

      $msisdn = $request->number;
      $service_id = 2;

      $check = $this->checkStatus($msisdn, $service_id);

      if ($check) {

        session(['MSISDN' => $msisdn, 'status' => 'active', 'mbc_op_id' => MBC_OP_ID]);
        $lang =  session::get('applocale');
        if($lang == 'ar'){
          $message = 'تم تسجيل الدخول بنجاح';
        }else{
          $message = 'Login succesfully';
        }
        return redirect(url('?OpID=' . MBC_OP_ID))->with(['success' => $message]);

      } else {
        $lang =  session::get('applocale');
        if($lang == 'ar'){
          $message = 'انت غير مشترك, برجاء الاشتراك';
        }else{
          $message = 'you are not a subscriber Please subscribe Now';
        }

        return redirect('alkenz_portal_landing')->with(['failed' => $message]);
      }
    }

    public function logout()
    {
      session()->forget('userIdentifier');
      session()->forget('status');
      session()->forget('ooredoo_op_id');

      session()->forget('MSISDN');
      session()->forget('mbc_op_id');

      return redirect('alkenz_portal_login');
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


}
