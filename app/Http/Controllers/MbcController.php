<?php

namespace App\Http\Controllers;

use App\MbcNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

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


    public function mbc_sent_mt(Request $request){


          $soap_request = "<?xml version='1.0' encoding='utf-8'?>
          <Packet><SMS>
          <SmsID>3</SmsID>
          <MobileNo>966535550107</MobileNo>
          <Country>KSA</Country>
          <Operator>STC</Operator>
          <Shortcode>88888</Shortcode>
          <Msgtxt>text 3</Msgtxt>
          <ServiceID>2</ServiceID>
          </SMS>
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
          </Packet>";



          $header = array(

              "Content-type: text/xml;charset=\"utf-8\"",

              "Accept: text/xml",

              "Cache-Control: no-cache",

              "Pragma: no-cache",

              "SOAPAction: \"run\"",

              "Content-length: " . strlen($soap_request),
              "UserName: webSourceOut",
              "UserPass: 2015Source@SMS_mbc",

          );


          $soap_do = curl_init();

          curl_setopt($soap_do, CURLOPT_URL, "http://mbc.mobc.com:8030/SourceSmsOut/SmsIN.asmx");

          curl_setopt($soap_do, CURLOPT_CONNECTTIMEOUT, 3000);

          curl_setopt($soap_do, CURLOPT_TIMEOUT, 3000);

          curl_setopt($soap_do, CURLOPT_RETURNTRANSFER, true);

          curl_setopt($soap_do, CURLOPT_SSL_VERIFYPEER, false);

          curl_setopt($soap_do, CURLOPT_SSL_VERIFYHOST, false);

          curl_setopt($soap_do, CURLOPT_POST, true);

          curl_setopt($soap_do, CURLOPT_POSTFIELDS, $soap_request);

          curl_setopt($soap_do, CURLOPT_HTTPHEADER, $header);



          $data = curl_exec($soap_do);
          var_dump(  $data); die;



          if (curl_errno($soap_do)) {

              $error_msg = curl_error($soap_do);

          } else {

              $error_msg = "";

          }

          curl_close($soap_do);

          $xml = $data;

          $data = simplexml_load_string($data, "SimpleXMLElement", LIBXML_NOCDATA);
          $data = json_encode($data);
          $data = json_decode($data,TRUE);

          // make log for every hit

          $actionName = "MBC  Sent Mt Api";

          $not_URL = "mbc_sent_mt";

          $parameters_arr = array(

              'request' => $soap_request,

              'response' => $data,

              'date' => Carbon::now()->format('Y-m-d H:i:s'),

              'error_msg' => $error_msg

          );

          $this->log($actionName, $not_URL, $parameters_arr);





          //
          // new one //

  }

    public function MO_SMS_Posting()
    {
      $url = 'http://mbc.mobc.com:8030/SourceSmsOut/SmsIN.asmx';

      $headers['Content-Type'] = 'application/xml';
      $headers['charset'] = 'utf-8';

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


      $response = $this->SendRequestPost($url, json_encode($parameters), $headers);

      dd($response);

    }
}
