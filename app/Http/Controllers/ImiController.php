<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Monolog\Handler\StreamHandler;
use Monolog\Logger;

use App\ImiRequests;
use App\Subscriber;

class ImiController extends Controller
{

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

    public function landing()
    {
        return view('landing_v2.imi.imi_landing');
    }

    public function pinCode()
    {
        return view('landing_v2.imi.imi_pinCode');
    }

    public function unsub()
    {
        return view('landing_v2.imi.imi_unsub');
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

    public function authorization()
    {
        // $Authorization = UserID . ':' . Password;
        // $Authorization1 = mb_convert_encoding($Authorization, 'ASCII');
        // $Authorization1 = mb_convert_encoding($Authorization, "UTF-8", "UTF-8");
        // $Authorization1 = iconv('ASCII', 'UTF-8//IGNORE', $Authorization);
        // $Authorization2 = '';
        // for ($i = 0; $i < mb_strlen($Authorization, 'ASCII'); $i++) {
        //     $Authorization2 .= ord($Authorization[$i]);
        // }
        // $Base64String = 'Basic ' . base64_encode($Authorization1);
        // return $Base64String;
        // return "Basic dmVuaXNvOnZlbmlzbzEyMw==";
        return authorization;
    }

    public function charging()
    {

        $headers = array(
            "Accept:: application/json",
            "Content-Type: application/json",
            "Authorization: " . $this->authorization(),
        );

        $vars['ChargeUser']["msisdn"] = session()->get('msisdn');;
        $vars['ChargeUser']["otpid"] = session()->get('otpid');;
        $vars['ChargeUser']["transid"] = microtime();
        $vars['ChargeUser']["ctype"] = "SUB";
        $vars['ChargeUser']["pcode"] = "1.00";
        $vars['ChargeUser']["chnl"] = "WAP";
        $vars['ChargeUser']["vendor"] = vendor;
        $vars['ChargeUser']["subctype"] = "01";

        $JSON = json_encode($vars);

        $URL = chargingUrl;
        $ReqResponse = $this->SendRequest($URL, $JSON, $headers);

        $result['request'] = $vars;
        $result['headers'] = $headers;
        $result['response'] = json_decode($ReqResponse, true);
        $result['date'] = date('Y-m-d H:i:s');

        $actionName = 'IMI Charging';
        $this->log($actionName, $URL, $result);

        $ReqResponse = json_decode($ReqResponse, true);

        $timewe = ImiRequests::create([
            'header' => json_encode($headers),
            'request' => $JSON,
            'response' => json_encode($ReqResponse),
            'type'  =>$actionName
        ]);

        return $ReqResponse;
    }

    public function getServices()
    {

        $headers = array(
            "Accept:: application/json",
            "Content-Type: application/json",
            "Authorization: " . $this->authorization(),
        );

        $vars['service']["reqtype"] = "SERVICES";
        $vars['service']["msisdn"] = "9741234567";
        $vars['service']["serviceid"] = serviceId;
        $vars['service']["chnl"] = "WAP";

        $JSON = json_encode($vars);

        $URL = getServicesUrl;
        $ReqResponse = $this->SendRequest($URL, $JSON, $headers);

        $result['request'] = $vars;
        $result['headers'] = $headers;
        $result['response'] = $ReqResponse;
        $result['date'] = date('Y-m-d H:i:s');

        $actionName = 'IMI GetServices';
        $this->log($actionName, $URL, $result);

        $ReqResponse = json_decode($ReqResponse, true);

        $timewe = ImiRequests::create([
            'header' => json_encode($headers),
            'request' => $JSON,
            'response' => json_encode($ReqResponse),
            'type'  =>$actionName
        ]);

        return $ReqResponse;
    }

    public function subscriptionsRequest()
    {
        $headers = array(
            "Accept:: application/json",
            "Content-Type: application/json",
            "Authorization: " . $this->authorization(),
        );

        $vars['service']["reqtype"] = "SUB";
        $vars['service']["msisdn"] = session()->get('msisdn');
        $vars['service']["serviceid"] = serviceId;
        $vars['service']["chnl"] = "WAP";
        $vars['service']["scode"] = shortCode;
        $vars['service']["otpid"] = session()->get('otpid');

        $JSON = json_encode($vars);

        $URL = subscriptionsRequestUrl;
        $ReqResponse = $this->SendRequest($URL, $JSON, $headers);

        $result['request'] = $vars;
        $result['headers'] = $headers;
        $result['response'] = json_decode($ReqResponse, true);
        $result['date'] = date('Y-m-d H:i:s');

        $actionName = 'IMI Subscription Request';
        $this->log($actionName, $URL, $result);

        $ReqResponse = json_decode($ReqResponse, true);

        $timewe = ImiRequests::create([
            'header' => json_encode($headers),
            'request' => $JSON,
            'response' => json_encode($ReqResponse),
            'type'  =>$actionName
        ]);

        if($ReqResponse['service']['status'] == 0){
            Subscriber::create([
                'msisdn' => session()->get('msisdn'),
                'serviceId' => serviceId,
                'requestId' => $timewe->id,
            ]);
           // $this->charging();
            session(['MSISDN' => session()->get('msisdn'), 'status' => 'active' , 'imi_op_id' => imi_op_id()]);
            return redirect('/?OpID='.imi_op_id());
        }else{
            return redirect('imi/pincode')->with('failed', 'لقد حدث خطأ, برجاء المحاولة مرة اخري');
        }
    }

    public function unsubscription(Request $request)
    {
        $headers = array(
            "Accept:: application/json",
            "Content-Type: application/json",
            "Authorization: " . $this->authorization(),
        );

        $vars['service']["reqtype"] = "UNSUB";
        $vars['service']["msisdn"] = phoneKey.$request->number;
        $vars['service']["serviceid"] = serviceId;
        $vars['service']["chnl"] = "WAP";
        $vars['service']["scode"] = shortCode;

        $JSON = json_encode($vars);

        $URL = unsubscriptionUrl;
        $ReqResponse = $this->SendRequest($URL, $JSON, $headers);

        $result['request'] = $vars;
        $result['headers'] = $headers;
        $result['response'] = json_decode($ReqResponse, true);
        $result['date'] = date('Y-m-d H:i:s');

        $actionName = 'IMI Unsubscription';
        $this->log($actionName, $URL, $result);

        $ReqResponse = json_decode($ReqResponse, true);

        $timewe = ImiRequests::create([
            'header' => json_encode($headers),
            'request' => $JSON,
            'response' => json_encode($ReqResponse),
            'type'  =>$actionName
        ]);

        return redirect('imi/unsubscribe')->with('success',$ReqResponse['service']['resdescription']);
    }

    public function subscriptionsCheck(Request $request)
    {

        $headers = array(
            "Accept:: application/json",
            "Content-Type: application/json",
            "Authorization: " . $this->authorization(),
        );

        $vars['service']["reqtype"] = "CHECK";
        $vars['service']["msisdn"] = phoneKey.$request->number;

        // optional params if we need a specific service id
        $vars['service']["serviceid"] = serviceId;
        $vars['service']["Status"] = "Active";
        $vars['service']["scode"] = shortCode;

        $JSON = json_encode($vars);

        $URL = subscriptionsCheckUrl;
        $ReqResponse = $this->SendRequest($URL, $JSON, $headers);

        $result['request'] = $vars;
        $result['headers'] = $headers;
        $result['response'] = json_decode($ReqResponse, true);
        $result['date'] = date('Y-m-d H:i:s');

        $actionName = 'IMI Check Status';
        $this->log($actionName, $URL, $result);

        $ReqResponse = json_decode($ReqResponse, true);

        $timewe = ImiRequests::create([
            'header' => json_encode($headers),
            'request' => $JSON,
            'response' => json_encode($ReqResponse),
            'type'  =>$actionName
        ]);

        $request->session()->put('msisdn', phoneKey.$request->number);

        if($ReqResponse['response']['status'] == 0){
            session(['MSISDN' => session()->get('msisdn'), 'status' => 'active' , 'imi_op_id' => imi_op_id()]);
            return redirect('/?OpID='.imi_op_id());
        }else{
            return $this->generateOTP();
        }
    }

    //  http://IP:Port/XXX/?msisdn=<msisdn>&serviceid=<svcid value>&chnl=XXX&action=<SUB/ UNSUB/REN>&status=<Status>
    //  &Nextrenewaldate=yyyy-MM-dd HH:mm:ss&TransactionID=!Transactionid!&price=<Billed price>
    public function subscriptionsNotification(Request $request)
    {
        $vars['msisdn'] = $request->msisdn;
        $vars['serviceid'] = $request->serviceid;
        $vars['chnl'] = $request->chnl;
        $vars['action'] = $request->action;
        $vars['status'] = $request->status;
        $vars['Nextrenewaldate'] = $request->Nextrenewaldate;
        $vars['TransactionID'] = $request->TransactionID;
        $vars['price'] = $request->price;

        $URL = '';

        $result['params'] = $vars;
        $result['date'] = date('Y-m-d H:i:s');

        $actionName = 'IMI Subscribtion Notification';
        $this->log($actionName, $URL, $result);

        $reesponse = 'success';

        $timewe = ImiRequests::create([
            'header' => '',
            'request' => json_encode($vars),
            'response' => $response,
            'type'  =>$actionName
        ]);

    }

    public function generateOTP()
    {
        $headers = array(
            "Accept:: application/json",
            "Content-Type: application/json",
            "Authorization: " . $this->authorization(),
        );

        $vars["reqtype"] = "GENOTP";
        $vars["msisdn"] = session()->get('msisdn');
        $vars["serviceid"] = serviceId;
        $vars["chnl"] = "WAP";
        $vars["scode"] = shortCode;

        $JSON = json_encode($vars);

        $URL = generateOTPUrl;
        $ReqResponse = $this->SendRequest($URL, $JSON, $headers);

        $result['request'] = $vars;
        $result['headers'] = $headers;
        $result['response'] = json_decode($ReqResponse, true);
        $result['date'] = date('Y-m-d H:i:s');

        $actionName = 'IMI Generate OTP';
        $this->log($actionName, $URL, $result);

        $ReqResponse = json_decode($ReqResponse, true);

        $timewe = ImiRequests::create([
            'header' => json_encode($headers),
            'request' => $JSON,
            'response' => json_encode($ReqResponse),
            'type'  =>$actionName
        ]);

        session()->put('otpid', $ReqResponse['response']['otpid']);

        return view("landing_v2.imi.imi_pinCode");
    }

    public function generateOTPValidate(Request $request)
    {

        $headers = array(
            "Accept:: application/json",
            "Content-Type: application/json",
            "Authorization: " . $this->authorization(),
        );

        $otpid =  $request->session()->get('otpid');
        $msisdn =  $request->session()->get('msisdn');

        $vars["reqtype"] = "VALOTP";
        $vars["msisdn"] = $msisdn;
        $vars["otpid"] = $otpid; // Otpid returned by the GenerateOTP method.
        $vars["otp"] = $request->pincode; // OTP value entered by the subscriber

        $JSON = json_encode($vars);

        $URL = generateOTPValidateUrl;
        $ReqResponse = $this->SendRequest($URL, $JSON, $headers);

        $result['request'] = $vars;
        $result['headers'] = $headers;
        $result['response'] = json_decode($ReqResponse, true);
        $result['date'] = date('Y-m-d H:i:s');

        $actionName = 'IMI Validate OTP';
        $this->log($actionName, $URL, $result);

        $ReqResponse = json_decode($ReqResponse, true);

        $timewe = ImiRequests::create([
            'header' => json_encode($headers),
            'request' => $JSON,
            'response' => json_encode($ReqResponse),
            'type'  =>$actionName
        ]);

        if($ReqResponse['response']['status'] == 0){ // true pincode
            $request->session()->put('otpid', $ReqResponse['response']['otpid']);
            return $this->subscriptionsRequest();
        }else{
            return redirect('imi/pincode')->with('failed', 'الكود خاظئ, برجاء المحاولة مرة اخري');
        }
    }
}
