<?php

namespace App\Http\Controllers;

use App\MbcNotification;
use App\MbcSendMt;
use App\MbcSubscribe;
use App\Message;
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
            "service_id" => "required",
        ]);

        $notification['msisdn'] = $request->msisdn;
        $notification['action'] = $request->action;
        $notification['country'] = $request->country;
        $notification['operator'] = $request->operator;
        $notification['short_code'] = $request->shortcode;
        $notification['service_id'] = $request->service_id;

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

        $this->mbc_subscribe($request, $MbcNotification->id);

        return json_encode($response);

    }

    /**
     * mbc_subscribe , check notification if subscribe and create sunbsribe number in subscribe table
     *
     * @param  Request $request
     * @param  int $sms_id
     * @return void
     */
    public function mbc_subscribe($request, $sms_id)
    {
        $data['msisdn'] = $request->msisdn;
        $data['service_id'] = $request->service_id;
        $data['status'] = 0; //init unsub
        $data['notification_id'] = $sms_id;
        if ($request->action == "S" || $request->action == "RS") { // S = subscribe || RS = Renew succeed
            $data['status'] = 1; //subscribe
            //send today message
            $message = $this->getTodayMessage($data['service_id']);
            if($message != ""){
                $this->mbc_send_mt($request, $sms_id, $message);
            }
        }
        MbcSubscribe::updateOrCreate(['msisdn' => $request->msisdn], $data);
    }

    public function getTodayMessage($service_id)
    {
        $date = date('Y-m-d');

        $message = Message::where('service_id', $service_id)->where('date', $date)->first();

        if($message){
            $message_body = optional($message)->MTBody . '  ' . optional($message)->ShortnedURL;
        }

        return $message_body ?? '';
    }

    public function mbc_send_mt($request, $sms_id, $message)
    {
        $URL = 'http://mbc.mobc.com:8030/SourceSmsOut/SmsIN.asmx?WSDL';

        $UserName = 'webSourceOut';
        $UserPass = '2015Source@SMS_mbc';

        $Xmldoc['sms_id'] = $sms_id;
        $Xmldoc['mobile_no'] = $request->msisdn;
        $Xmldoc['country'] = $request->country;
        $Xmldoc['operator'] = $request->operator;
        $Xmldoc['short_code'] = $request->shortcode;
        $Xmldoc['lang'] = mb_ereg('[\x{0600}-\x{06FF}]', $message) ? 'A' : 'E';
        if($Xmldoc['lang'] == 'A'){
           // echo $message;
            $message = mb_convert_encoding($message, 'UTF-16');
            $message = bin2hex($message);
           // echo '<br>';
           // echo $message;
        }
       // die;
        $Xmldoc['msg_txt'] = $message;
        $Xmldoc['service_id'] = $request->service_id;
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
                        <SmsID>" . $Xmldoc['sms_id'] . "</SmsID>
                        <MobileNo>" . $Xmldoc['mobile_no'] . "</MobileNo>
                        <Country>" . $Xmldoc['country'] . "</Country>
                        <Operator>" . $Xmldoc['operator'] . "</Operator>
                        <Shortcode>" . $Xmldoc['short_code'] . "</Shortcode>
                        <Msgtxt>" . $Xmldoc['msg_txt'] . "</Msgtxt>
                        <Lang>" . $Xmldoc['lang'] . "</Lang>
                        <ServiceID>" . $Xmldoc['service_id'] . "</ServiceID>
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
        $response = curl_exec($ch);
        curl_close($ch);

        $doc = new \DOMDocument('1.0', 'utf-8');
        $clean_xml = str_ireplace(['SOAP-ENV:', 'SOAP:', 'soap:Body', '<?xml version="1.0" encoding="utf-8"?>'], '', $response);

       // print($clean_xml);

        $xmlres = simplexml_load_string($clean_xml);

        $xml2 = $xmlres->Body->GetSmsINResponse->GetSmsINResult;
        $xml3 = simplexml_load_string($xml2);
        $code = $xml3->SMS->Code;

        if ($code == "Success") {
            $code_status = 1;
        } else {
            $code_status = 0;
        }

        $log_url = url('mbc_sent_mt');
        $logAction = 'Mbc Sent Mt Api';
        $log_array = array();
        $log_array['response '] = $response;
        $log_array['xmlres '] = $xmlres;
        $log_array['xml2 '] = $xml2;
        $log_array['xml3 '] = $xml3;
        $log_array['code '] = $code;
        $log_array['code_status '] = $code_status;

        $this->log_action($logAction, $log_url, $log_array);

        $Xmldoc['request'] = $xml_data;
        $Xmldoc['response'] = $response;
        $Xmldoc['response_code'] = $code;

        MbcSendMt::create($Xmldoc);

    }

    public function test_mbc_send_mt()
    {
        $URL = 'http://mbc.mobc.com:8030/SourceSmsOut/SmsIN.asmx?WSDL';

        $xml_data = '<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:tem="http://tempuri.org/">
            <soap:Header/>
            <soap:Body>
            <tem:GetSmsIN>
                <!--Optional:-->
                <tem:UserName>webSourceOut</tem:UserName>
                <!--Optional:-->
                <tem:UserPass>2015Source@SMS_mbc</tem:UserPass>
                <!--Optional:-->
                <tem:xmldoc>
                <Packet>
                    <SMS>
                        <SmsID>3</SmsID>
                        <MobileNo>201092093709</MobileNo>
                        <Country>Egypt</Country>
                        <Operator>VodafoneEgypt</Operator>
                        <Shortcode>95450</Shortcode>
                        <Msgtxt>text 3</Msgtxt>
                        <lang>E</lang>
                        <ServiceID>2</ServiceID>
                    </SMS>
                </Packet>
                </tem:xmldoc>
            </tem:GetSmsIN>
            </soap:Body>
        </soap:Envelope>';

        $ch = curl_init($URL);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: text/xml'));
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, "$xml_data");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $response = curl_exec($ch);
        curl_close($ch);

        $doc = new \DOMDocument('1.0', 'utf-8');
        $clean_xml = str_ireplace(['SOAP-ENV:', 'SOAP:', 'soap:Body', '<?xml version="1.0" encoding="utf-8"?>'], '', $response);

        print($clean_xml);

        $xmlres = simplexml_load_string($clean_xml);

        $xml2 = $xmlres->Body->GetSmsINResponse->GetSmsINResult;
        $xml3 = simplexml_load_string($xml2);
        $code = $xml3->SMS->Code;

        print('<br>');
        print($code);

        $Xmldoc['sms_id'] = '3';
        $Xmldoc['mobile_no'] = '201092093709';
        $Xmldoc['country'] = 'Egypt';
        $Xmldoc['operator'] = 'VodafoneEgypt';
        $Xmldoc['short_code'] = '95450';
        $Xmldoc['msg_txt'] = 'text 3';
        $Xmldoc['lang'] = mb_ereg('[\x{0600}-\x{06FF}]', $Xmldoc['msg_txt']) ? 'A' : 'E';
        $Xmldoc['service_id'] = '2';
        $Xmldoc['request'] = $xml_data;
        $Xmldoc['response'] = $response;
        $Xmldoc['response_code'] = $code;

        MbcSendMt::create($Xmldoc);
    }

}
