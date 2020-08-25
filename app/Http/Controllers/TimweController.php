<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Monolog\Handler\StreamHandler;
use Monolog\Logger;
use Illuminate\Support\Facades\File;
use App\TimWe;
use App\timweUnsubscriber;
use Illuminate\Support\Facades\Session;
use App\timweSubscriber;

class TimweController extends Controller
{

  public function login()
  {
    return view('landing_v2.timwe_landing.timwe_login');
  }

  public function index(Request $request)
  {
    $lang =  isset($request->lang) ? $request->lang : "ar";
    session::put('lang', $lang);
    //dd(Session::get('lang', $lang));
    return view('landing_v2.timwe_landing.timwe_landing', compact("lang"));
  }

  public function pincode()
  {
    $lang =  session::get('lang');
    return view('landing_v2.timwe_landing.timwe_pinCode', compact("lang"));
  }

  public function unsubscribe()
  {
    $lang =  session::get('lang');
    return view('landing_v2.timwe_landing.timwe_unsub', compact("lang"));
  }

  public function notificationMo(Request $request, $partnerRole)
  {
    $partnerRoleId = $partnerRole;

    $validator = Validator::make($request->all(), [
      'productId' => 'required',
      'pricepointId' => 'required',
      'mcc' => 'required',
      'mnc' => 'required',
      'text' => 'required',
      'msisdn' => 'required',
      'largeAccount' => 'required',
      'transactionUUID' => 'required',
      'tags' => 'required',
    ]);

    if ($validator->fails()) {
      return $validator->errors()->toJson();
    }

    $headers = array(
      "Content-Type: application/json",
      "external-tx-id: " . $this->gen_uuid()
    );

    $vars['productId'] = (int)$request->productId;
    $vars['pricepointId'] = (int)$request->pricepointId;
    $vars['mcc'] = $request->mcc;
    $vars['mnc'] = $request->mnc;
    $vars['text'] = $request->text;
    $vars['msisdn'] = $request->msisdn;
    $vars['largeAccount'] = $request->largeAccount;
    $vars['transactionUUID'] = $request->transactionUUID;
    $vars['tags'] = $request->tags;

    // here json
    $JSON = $vars;

    $actionName = "Notification MO";
    $URL = $request->fullUrl();
    $this->log($actionName, $URL, $vars);

    $ReqResponse['requestId'] = '44:1507734322453';
    $ReqResponse['code'] = 'SUCCESS';
    $ReqResponse['inError”'] = 'false';
    $ReqResponse['message'] = 'string';
    $ReqResponse['partnerNotifResponseBody'] = array('test1', 'test2');

    $timewe = TimWe::create([
      'api_request' => $URL,
      'payload' => json_encode($vars),
      'response' => json_encode($ReqResponse),
      'header' => json_encode($headers),
      'type'  => $actionName
    ]);

    return json_encode($ReqResponse);
  }

  public function notificationMtDn(Request $request, $partnerRole)
  {
    $partnerRoleId = $partnerRole;

    $validator = Validator::make($request->all(), [
      'productId' => 'required',
      'pricepointId' => 'required',
      'mcc' => 'required',
      'mnc' => 'required',
      'transactionUUID' => 'required',
      'userIdentifier' => 'required',
      'largeAccount' => 'required',
      'mnoDeliveryCode' => 'required',
      'tags' => 'required',
    ]);

    if ($validator->fails()) {
      return $validator->errors()->toJson();
    }

    $headers = array(
      "Content-Type: application/json",
      "external-tx-id: " . $this->gen_uuid()
    );

    $vars['productId'] = (int)$request->productId;
    $vars['pricepointId'] = (int)$request->pricepointId;
    $vars['mcc'] = $request->mcc;
    $vars['mnc'] = $request->mnc;
    $vars['transactionUUID'] = $request->transactionUUID;
    $vars['userIdentifier'] = $request->userIdentifier;
    $vars['largeAccount'] = $request->largeAccount;
    $vars['mnoDeliveryCode'] = $request->mnoDeliveryCode;
    $vars['tags'] = $request->tags;

    // here json
    $JSON = $vars;

    $actionName = "Notification MT DN";
    $URL = $request->fullUrl();
    $this->log($actionName, $URL, $vars);

    $ReqResponse['requestId'] = '44:1507734322453';
    $ReqResponse['code'] = 'SUCCESS';
    $ReqResponse['inError”'] = 'false';
    $ReqResponse['message'] = 'string';
    $ReqResponse['partnerNotifResponseBody'] = array('test1', 'test2');

    $timewe = TimWe::create([
      'api_request' => $URL,
      'payload' => json_encode($vars),
      'response' => json_encode($ReqResponse),
      'header' => json_encode($headers),
      'type'  => $actionName
    ]);
    return json_encode($ReqResponse);
  }

  public function notificationUserOptin(Request $request, $partnerRole)
  {
    $partnerRoleId = $partnerRole;

    $validator = Validator::make($request->all(), [
      'productId' => 'required',
      'pricepointId' => 'required',
      'mcc' => 'required',
      'mnc' => 'required',
      'text' => 'required',
      'msisdn' => 'required',
      'entryChannel' => 'required',
      'largeAccount' => 'required',
      'transactionUUID' => 'required',
      'tags' => 'required',
    ]);

    if ($validator->fails()) {
      return $validator->errors()->toJson();
    }

    $headers = array(
      "Content-Type: application/json",
      "external-tx-id: " . $this->gen_uuid()
    );

    $vars['productId'] = (int)$request->productId;
    $vars['pricepointId'] = (int)$request->pricepointId;
    $vars['mcc'] = $request->mcc;
    $vars['mnc'] = $request->mnc;
    $vars['text'] = $request->text;
    $vars['msisdn'] = $request->msisdn;
    $vars['entryChannel'] = $request->entryChannel;
    $vars['largeAccount'] = $request->largeAccount;
    $vars['transactionUUID'] = $request->transactionUUID;
    $vars['tags'] = $request->tags;

    // here json
    $JSON = $vars;

    $actionName = "Notification User Optin";
    $URL = $request->fullUrl();
    $this->log($actionName, $URL, $vars);

    $ReqResponse['requestId'] = '44:1507734322453';
    $ReqResponse['code'] = 'SUCCESS';
    $ReqResponse['inError”'] = 'false';
    $ReqResponse['message'] = 'string';
    $ReqResponse['partnerNotifResponseBody'] = array('test1', 'test2');

    $timewe = TimWe::create([
      'api_request' => $URL,
      'payload' => json_encode($vars),
      'response' => json_encode($ReqResponse),
      'header' => json_encode($headers),
      'type'  => $actionName
    ]);

    return json_encode($ReqResponse);
  }

  public function notificationUserOptout(Request $request, $partnerRole)
  {
    $partnerRoleId = $partnerRole;

    $validator = Validator::make($request->all(), [
      'productId' => 'required',
      'pricepointId' => 'required',
      'mcc' => 'required',
      'mnc' => 'required',
      'msisdn' => 'required',
      'entryChannel' => 'required',
      'largeAccount' => 'required',
      'transactionUUID' => 'required',
      'tags' => 'required',
    ]);

    if ($validator->fails()) {
      return $validator->errors()->toJson();
    }

    $headers = array(
      "Content-Type: application/json",
      "external-tx-id: " . $this->gen_uuid()
    );

    $vars['productId'] = (int)$request->productId;
    $vars['pricepointId'] = (int)$request->pricepointId;
    $vars['mcc'] = $request->mcc;
    $vars['mnc'] = $request->mnc;
    $vars['text'] = $request->text;
    $vars['entryChannel'] = $request->entryChannel;
    $vars['largeAccount'] = $request->largeAccount;
    $vars['transactionUUID'] = $request->transactionUUID;
    $vars['tags'] = $request->tags;

    // here json
    $JSON = $vars;

    $actionName = "Notification User Optout";
    $URL = $request->fullUrl();
    $this->log($actionName, $URL, $vars);

    $ReqResponse['requestId'] = '44:1507734322453';
    $ReqResponse['code'] = 'SUCCESS';
    $ReqResponse['inError”'] = 'false';
    $ReqResponse['message'] = 'string';
    $ReqResponse['partnerNotifResponseBody'] = array('test1', 'test2');

    $timewe = TimWe::create([
      'api_request' => $URL,
      'payload' => json_encode($vars),
      'response' => json_encode($ReqResponse),
      'header' => json_encode($headers),
      'type'  => $actionName
    ]);

    return json_encode($ReqResponse);
  }

  public function notificationUserRenewed(Request $request, $partnerRole)
  {
    $partnerRoleId = $partnerRole;

    $validator = Validator::make($request->all(), [
      'productId' => 'required',
      'pricepointId' => 'required',
      'mcc' => 'required',
      'mnc' => 'required',
      'msisdn' => 'required',
      'entryChannel' => 'required',
      'largeAccount' => 'required',
      'transactionUUID' => 'required',
      'text' => 'required',
      'tags' => 'required',
    ]);

    if ($validator->fails()) {
      return $validator->errors()->toJson();
    }

    $headers = array(
      "Content-Type: application/json",
      "external-tx-id: " . $this->gen_uuid()
    );

    $vars['productId'] = (int)$request->productId;
    $vars['pricepointId'] = (int)$request->pricepointId;
    $vars['mcc'] = $request->mcc;
    $vars['mnc'] = $request->mnc;
    $vars['text'] = $request->text;
    $vars['entryChannel'] = $request->entryChannel;
    $vars['largeAccount'] = $request->largeAccount;
    $vars['transactionUUID'] = $request->transactionUUID;
    $vars['text'] = $request->text;
    $vars['tags'] = $request->tags;

    // here json
    $JSON = $vars;

    $actionName = "Notification User Renewed";
    $URL = $request->fullUrl();
    $this->log($actionName, $URL, $vars);

    $ReqResponse['requestId'] = '44:1507734322453';
    $ReqResponse['code'] = 'SUCCESS';
    $ReqResponse['inError”'] = 'false';
    $ReqResponse['message'] = 'string';
    $ReqResponse['partnerNotifResponseBody'] = array('test1', 'test2');

    $timewe = TimWe::create([
      'api_request' => $URL,
      'payload' => json_encode($vars),
      'response' => json_encode($ReqResponse),
      'type'  => $actionName
    ]);

    return json_encode($ReqResponse);
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

    $check = $this->checkStatus($request->number);

    if ($check['subscriptionResult'] == 'GET_STATUS_OK') {

      $this->checksub('subscribe', '974' . $request->number, $check['timweId']);

      session(['MSISDN' => session('userIdentifier'), 'status' => 'active', 'ooredoo_op_id' => ooredoo]);
      return redirect(url('/?OpID=' . ooredoo));
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

      $vars["userIdentifier"] = '974' . $request->number;
      session()->put('userIdentifier', '974' . $request->number);
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

      if ($ReqResponse['responseData']['subscriptionResult'] == 'OPTIN_ALREADY_ACTIVE') {
        $this->checksub('subscribe', '974' . $request->number, $timewe->id);

        session(['MSISDN' => session('userIdentifier'), 'status' => 'active', 'ooredoo_op_id' => ooredoo]);
        return redirect(url('/?OpID=' . ooredoo));
      } else {
        if ($ReqResponse['code'] == 'SUCCESS') {
          $lang =  session::get('lang');
          return view('landing_v2.timwe_landing.timwe_pinCode', compact('lang'));
        } else {
          $lang =  session::get('lang');
          if ($lang == "ar") {
            return redirect('ooredoo_qatar_landing/' . $lang)->with('failed', 'لقد حدث خطأ, برجاء المحاولة لاحقا');
          } else {
            return redirect('ooredoo_qatar_landing/' . $lang)->with('failed', 'An error has occurred, please try again later');
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

    if ($ReqResponse['code'] == 'SUCCESS') {

      if ($ReqResponse['responseData']['subscriptionResult'] == 'OPTIN_CONF_WRONG_PIN') {
        return redirect('ooredoo_qatar_pin')->with('failed', 'رقم التحقق خاطئ يرجي المحاولة مرة اخري');
      }

      $this->checksub('subscribe', session('userIdentifier'), $timewe->id);
      session(['MSISDN' => session('userIdentifier'), 'status' => 'active', 'ooredoo_op_id' => ooredoo]);
      // $sendMT = new Request();
      // $sendMT->msisdn = session('userIdentifier');
      // $sendMT->sms = url('/?OpID='.ooredoo);
      //send mt with link
      // $this->sendMt($sendMT); // should be fire after receive first charging success

      return redirect(url('/?OpID=' . ooredoo));
    } else {

      $lang =  session::get('lang');
      if ($lang == "ar") {
        return redirect('ooredoo_qatar_pin')->with('failed', 'لقد حدث خطأ, برجاء المحاولة لاحقا');
      } else {
        return redirect('ooredoo_qatar_pin')->with('failed', 'An error has occurred, please try again later');
      }
    }
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

    $vars["userIdentifier"] = '974' . $request->number;
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
      $this->checksub('unsubscribe', '974' . $request->number, $timewe->id);

      return redirect('ooredoo_qatar_unsub')->with('success', 'تم الغاء الاشتراك بنجاح');
    } else {
      return redirect('ooredoo_qatar_unsub')->with('failed', 'هذا الرقم غير مشترك بالخدمة');
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

  public function checkStatus($number)
  {
    $partnerRoleId = partnerRoleId;

    require_once 'uuid/UUID.php';
    $trxid = \UUID::v4();

    $headers = array(
      "Content-Type: application/json",
      "apikey: " . apikeysubscription,
      "authentication: " . $this->generateKey(presharedkeysubscription),
      "external-tx-id: " . $trxid,
    );

    $vars["userIdentifier"] = '974' . $number;
    session()->put('landing_msisdn', $number);
    $vars["userIdentifierType"] = 'MSISDN';
    $vars["productId"] = productId;
    $vars["mcc"] = "427";
    $vars["mnc"] = "01";
    $vars["entryChannel"] = 'WEB';

    $JSON = json_encode($vars);

    $actionName = "Check Status";

    $URL = "https://qao.timwe.com/external/v2/subscription/status/" . $partnerRoleId . "/";
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
      'type' => $actionName,
    ]);

    $response['subscriptionResult'] = $ReqResponse['responseData']['subscriptionResult'];
    $response['timweId'] = $timewe->id;
    return $response;
  }

  public function checkStatusLogin(Request $request)
  {

    $check = $this->checkStatus($request->number);

    if ($check['subscriptionResult'] == 'GET_STATUS_SUB_NOT_EXIST') {

      return redirect('ooredoo_qatar_landing')->with('failed', 'انت غير مشترك حاليا, برجاء الاشتراك');
    } elseif ($check['subscriptionResult'] == 'GET_STATUS_OK') {

      $this->checksub('subscribe', $request->number, $check['timweId']);

      session(['MSISDN' => session('userIdentifier'), 'status' => 'active', 'ooredoo_op_id' => ooredoo]);

      return redirect(url('/?OpID=' . ooredoo));
    } else {
      return redirect('ooredoo_qatar_login')->with('failed', 'لقد حدث خطأ, برجاء المحاولة لاحقا');
    }
  }

  public function checksub($state, $msisdn, $timeweId)
  {
    if ($state == 'subscribe') {
      $subscribe = timweSubscriber::where('msisdn', $msisdn)->where('serviceId', productId)->first();

      if (empty($subscribe)) {
        timweSubscriber::create([
          'msisdn' => $msisdn,
          'serviceId' => productId,
          'requestId' => $timeweId,
        ]);
      }
    } elseif ($state == 'unsubscribe') {
      $subscribe = timweSubscriber::where('msisdn', '974' . $msisdn)->where('serviceId', productId)->first();
      $subscribe->delete();

      timweUnsubscriber::create([
        'msisdn' => '974' . $msisdn,
        'serviceId' => productId,
        'requestId' => $timeweId,
      ]);
    }
    return 'success';
  }

  public function logout()
  {
    session()->forget('userIdentifier');
    session()->forget('status');
    session()->forget('ooredoo_op_id');

    return redirect('ooredoo_qatar_login');
  }
}
