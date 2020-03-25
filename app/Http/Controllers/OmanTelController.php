<?php

namespace App\Http\Controllers;

use http\Url;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;
use Illuminate\Support\Facades\File;
use Session;

class OmanTelController extends Controller
{
    //
    public function index(){
        return view('mondia_landing.landing');
    }

    public function log_action($actionName, $Url, $parameters_arr)
    {
        date_default_timezone_set("Africa/Cairo");
        $date = date("Y-m-d");
        $log = new Logger($actionName);
        // to create new folder with current date  // if folder is not found create new one
        if (!File::exists(storage_path('logs/' . $date . '/' . $actionName))) {
            File::makeDirectory(storage_path('logs/' . $date . '/' . $actionName), 0775, true, true);
        }

        $log->pushHandler(new StreamHandler(storage_path('logs/' . $date . '/' . $actionName . '/logFile.log', Logger::INFO)));
        $log->addInfo($Url, $parameters_arr);
    }


    public function create_token()
    {
        $url = 'http://gateway.mondiamedia.com/v0/api/gateway/token/client';

        $headers = array(
            "accept: application/json",
            "content-type: application/x-www-form-urlencoded",
            "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8"
        );
        
        $json = '';

        $response = $this->SendRequestPost($url, $json, $headers);
        $response = json_decode($response, true);
        // make log
        $actionName = "Create Token";
        $parameters_arr = array(
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'response' => $response,
        );

        $this->log_action($actionName, $url, $parameters_arr);

        return $response;
    }


    public function redirect(Request $request)
    {
        $token = $this->create_token()['accessToken'];

        $Url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/web/auth/dialog?access_token=$token&redirect=" . url('test_omantel_login');
       
        // make log
        $actionName = "Redirect";
        $parameters_arr = array(
            'token' => $token,
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'Url' => $Url,
        );

        $this->log_action($actionName, '', $parameters_arr);
        return redirect($Url);
    }

    public function testOmanTelLogin(Request $request){

        $userToken = $request->userToken;
        $refreshToken = $request->refreshToken;
        $expiresIn = $request->expiresIn;
        $status = $request->status;

        $response = $this->check_status($userToken);

        if(empty($response)){
            return $this->pin_code($userToken);
        }else{
            return $this->delete_subscription($response['id'], $userToken);
        }

    }

    public function check_status($userToken)
    {
        
        $curl = curl_init();
        
        $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription?disableFiltering=false&subsTypeId=59160008&inclCancelled=false&inclSubscriptionType=false&subscriptionProvider=MONDIA_MEDIA";

        $headers = array(
            "accept: application/json",
            "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
            "Authorization: Bearer ".$userToken
        );

        $json = '';

        $response = $this->SendRequestGet($url, $json, $headers);
        $response = json_decode($response, true);

        // make log
        $actionName = "Check Status";
        $parameters_arr = array(
            'token' => $userToken,
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'response' => $response,
        );
        $this->log_action($actionName, $url, $parameters_arr);

        return $response;
    }

    public function pin_code ($userToken)
    {
        $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/subscribe/sendSubPin";

        $headers = array(
            "Content-Type: application/json",
            "accept: application/json",
            "X-MM-GATEWAY-KEY: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
            "Authorization: Bearer ".$userToken
        );

        $vars['subscriptionTypeId'] = 59160008;
        $vars['userAgent'] = 'IVAS';
        $vars['agency'] = 'IVAS';
        $json = json_encode($vars);

        $response = $this->SendRequestPost($url, $json, $headers);
        $response = json_decode($response, true);

        // make log
        $actionName = "Send PinCode";
        $parameters_arr = array(
            'token' => $userToken,
            "response" => $response,
        );

        $this->log_action($actionName, $url, $parameters_arr);

        Session::put('requestId', $response['custRequestId']);
        Session::put('userToken', $userToken);

        return view('mondia_landing.pincode', compact('userToken'));
    }


    public function verify_pin(Request $request)
    {
        $requestId = session('requestId');
        $userToken = session('userToken');
        $pin = $request->pincode;

        $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/subscribe/verifyPinAndSubscribe";

        $headers = array(
            "content-type: application/json",
            "accept: application/json",
            "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
            "Authorization: Bearer ".$userToken
        );

        $vars['requestId'] = $requestId;
        $vars['pin'] = $pin;
        $vars['refererLink'] = 'http://omantelmyworld.com';
        $vars['subscriptionTypeId'] = 59160008;

        $json = json_encode($vars);

        $response = $this->SendRequestPost($url, $json, $headers);
        $response = json_decode($response, true);

        // make log
        $actionName = "Verify Pin";
        $parameters_arr = array(
            'token' => $userToken,
            'requestId' => $requestId,
            'pin' => $pin,
            "response" => $response,
        );

        $this->log_action($actionName, $url, $parameters_arr);

        return $response;
    }

    public function delete_subscription($requestId, $userToken)
    {
        $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/$requestId";

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "DELETE",
            CURLOPT_HTTPHEADER => array(
                "accept: application/json",
                "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
                "authorization: Bearer $userToken"
            ),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);

        $response = json_decode($response, true);

        // make log
        $actionName = "Delete Subscription";
        $parameters_arr = array(
            "response" => $response,
        );
        $this->log_action($actionName, $url, $parameters_arr);

        if ($err) {
            return $err;
        } else {
            return $response;
        }
    }

    public function SendRequestPost($URL, $JSON, $headers)
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
    
    public function SendRequestGet($URL, $JSON, $headers)
    {
        $ch = curl_init();
        
        curl_setopt($ch, CURLOPT_URL, $URL);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_TIMEOUT, 100);
        curl_setopt($ch, CURLOPT_ENCODING, "");
        curl_setopt($ch, CURLOPT_MAXREDIRS, 10);
        curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

        $sOutput = curl_exec($ch);
        curl_close($ch);

        return $sOutput;
    }
    //
}
