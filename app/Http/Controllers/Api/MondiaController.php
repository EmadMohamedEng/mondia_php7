<?php

namespace App\Http\Controllers\Api;

use http\Url;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;
use Illuminate\Support\Facades\File;


class MondiaController extends Controller
{

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
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://gateway.mondiamedia.com/v0/api/gateway/token/client",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_HTTPHEADER => array(
                "accept: application/json",
                "content-type: application/x-www-form-urlencoded",
                "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8"
            ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);
        $result = json_decode($response);
        // make log
        $actionName = "Create Token";
        $parameters_arr = array(
            'accessToken' => $result->accessToken,
            'tokenType' => $result->tokenType,
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'expiresIn' => $result->expiresIn
        );
        $Url = "http://gateway.mondiamedia.com/v0/api/gateway/token/client";
        $this->log_action($actionName, $Url, $parameters_arr);
        if ($err) {
            return $err;
        } else {
            return $response;
        }
    }


    public function redirect(Request $request)
    {

        $URL = url('/')."/api/create_token";
        $ch = curl_init($URL);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-type: application/json"));
        $result = curl_exec($ch);
        curl_close($ch);
        $result = json_decode($result);
        $token = $result->accessToken;
        $Url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/web/auth/dialog?access_token=$token&redirect=" . urlencode(url('/')) . "";
        // make log
        $actionName = "Redirect";
        $parameters_arr = array(
            'Url' => $Url,
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
        );
        $this->log_action($actionName, 'redirect', $parameters_arr);
        return redirect($Url);
    }

    public function check_status()
    {

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription?disableFiltering=false&subsTypeId=59160008&inclCancelled=false&inclSubscriptionType=false&subscriptionProvider=MONDIA_MEDIA",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => array(
                "accept: application/json",
                "authorization: Bearer U182e26ce-15e1-4966-b1ca-9efebd35d7e3",
                "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8"
            ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);


        // make log
        $actionName = "Check Status";
        $Url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription?disableFiltering=false&subsTypeId=59160008&inclCancelled=false&inclSubscriptionType=false&subscriptionProvider=MONDIA_MEDIA";
        $parameters_arr = array(
            'Data' => $response,
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
        );
        $this->log_action($actionName, $Url, $parameters_arr);

        curl_close($curl);

        if ($err) {
            return $err;
        } else {
            return $response;
        }
    }


    public function pin_code (Request $request)
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/subscribe/sendSubPin",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => "{\r\n  \"subscriptionTypeId\": 59160008,\r\n  \"userAgent\": \"IVAS\",\r\n  \"agency\": \"IVAS\"\r\n}",
            CURLOPT_HTTPHEADER => array(
                "accept: application/json",
                "authorization: Bearer U182e26ce-15e1-4966-b1ca-9efebd35d7e3",
                "content-type: application/json",
                "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8"
            ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);
        // make log
        $actionName = "Call Pin";
        $parameters_arr = array(
            "Data" => $response,
        );
        $Url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/subscribe/sendSubPin";
        $this->log_action($actionName, $Url, $parameters_arr);
        if ($err) {
            return $err;
        } else {
            return $response;
        }

    }


    public function verify_pin()
    {

        $URL = url('/')."/api/pin_code";
        $ch = curl_init($URL);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-type: application/json"));
        $result = curl_exec($ch);
        curl_close($ch);
        $result = json_decode($result);
        $requestId = $result->custRequestId;


        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/subscribe/verifyPinAndSubscribe",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => "{\r\n  \"requestId\": $requestId,\r\n  \"pin\": \"3952\",\r\n  \"refererLink\": \"http://omantelmyworld.com\",\r\n  \"subscriptionTypeId\": 59160008\r\n}",
            CURLOPT_HTTPHEADER => array(
                "accept: application/json",
                "authorization: Bearer U182e26ce-15e1-4966-b1ca-9efebd35d7e3",
                "content-type: application/json",
                "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8"
            ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);
        // make log
        $actionName = "Verify Pin";
        $parameters_arr = array(
            "Data" => $response,
        );
        $Url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/subscribe/verifyPinAndSubscribe";
        $this->log_action($actionName, $Url, $parameters_arr);

        if ($err) {
            return $err;
        } else {
            return $response;
        }

    }

    public function delete_subscription()
    {


        $URL = url('/')."/api/check_status";
        $ch = curl_init($URL);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-type: application/json"));
        $result = curl_exec($ch);
        curl_close($ch);
        $result = json_decode($result);
        /*$requestId = $result->id;*/  /*lzm hna ykon fe data fe check_status 3l4an arg3 be id ht4t5l fe check b phone number s7 "id": 168683679,*/
        $requestId = "168683679";

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/$requestId",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "DELETE",
            CURLOPT_HTTPHEADER => array(
                "accept: application/json",
                "authorization: Bearer U182e26ce-15e1-4966-b1ca-9efebd35d7e3",
                "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8"
            ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        // make log
        $actionName = "Delete Subscription";
        $parameters_arr = array(
            "Data" => $response,
        );
        $Url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/168683679";
        $this->log_action($actionName, $Url, $parameters_arr);

        if ($err) {
            return $err;
        } else {
            return $response;
        }
    }
}
