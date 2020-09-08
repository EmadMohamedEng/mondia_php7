<?php

namespace App\Http\Controllers;

use SoapClient;
use App\MbcSendMt;
use App\MbcNotification;
use Illuminate\Http\Request;
use Artisaninweb\SoapWrapper\SoapWrapper;
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
}
