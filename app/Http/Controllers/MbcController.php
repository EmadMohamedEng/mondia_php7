<?php

namespace App\Http\Controllers;

use App\MbcNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use SoapClient;

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
       $url = 'http://mbc.mobc.com:8030/SourceSmsOut/SmsIN.asmx';

      // $headers = [
      //   'Content-Type: application/xml',
      //   'charset: utf-8'
      // ];

      $Xmldoc['SmsID'] = '3';
      $Xmldoc['MobileNo'] = '966535550107';
      $Xmldoc['Country'] = 'KSA';
      $Xmldoc['Operator'] = 'STC';
      $Xmldoc['Shortcode'] = '88888';
      $Xmldoc['Msgtxt'] = 'text 3';
      $Xmldoc['Lang'] = 'E';
      $Xmldoc['ServiceID'] = '2';

      $parameters['UserName'] = 'webSourceOut';
      $parameters['UserPass'] = '2015Source@SMS_mbc';
      $parameters['Xmldoc'] = "<?xml version='1.0' encoding='utf-8'?>
<Packet>
<SMS>
<SmsID>{$Xmldoc['SmsID']}</SmsID>
<MobileNo>{$Xmldoc['MobileNo']}</MobileNo>
<Country>{$Xmldoc['Country']}</Country>
<Operator>{$Xmldoc['Operator']}</Operator>
<Shortcode>{$Xmldoc['Shortcode']}</Shortcode>
<Msgtxt>{$Xmldoc['Msgtxt']}</Msgtxt>
<Lang>{$Xmldoc['Lang']}</Lang>
<ServiceID>{$Xmldoc['ServiceID']}</ServiceID>
</SMS>
</Packet>";


      // $response = $this->SendRequestPost($url, json_encode($parameters), $headers);
      // libxml_disable_entity_loader(false);
      $opts = array(
          'http' => array(
              'user_agent' => 'PHPSoapClient'
          )
      );
      $context = stream_context_create($opts);

      $soapClientOptions = array(
          'stream_context' => $context,
          'cache_wsdl' => WSDL_CACHE_NONE
      );

      $client = new SoapClient($url, $soapClientOptions);

      $response = $client->GetSmsIN($parameters);

      return $response;

    }
}
