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
      $URL = 'http://mbc.mobc.com:8030/SourceSmsOut/SmsIN.asmx?WSDL';

      $UserName ='webSourceOut';
      $UserPass = '2015Source@SMS_mbc';

      $Xmldoc['SmsID'] = '3';
      $Xmldoc['MobileNo'] = '966535550107';
      $Xmldoc['Country'] = 'KSA';
      $Xmldoc['Operator'] = 'STC';
      $Xmldoc['Shortcode'] = '88888';
      $Xmldoc['Msgtxt'] = 'text 3';
      $Xmldoc['Lang'] = 'E';
      $Xmldoc['ServiceID'] = '2';

      $xml_data = "<soap:Envelope xmlns:soap='http://www.w3.org/2003/05/soap-envelope' xmlns:tem='http://tempuri.org/'>
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
      curl_setopt($ch, CURLOPT_POSTFIELDS, "$xml_data");
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
      $output = curl_exec($ch);
      curl_close($ch);

      $response = simplexml_load_string($output);

      print_r( $response );die;

      return $response['response']['sms']['code'];
    }






}
