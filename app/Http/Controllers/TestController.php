<?php

namespace App\Http\Controllers;

use App\MbcNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use SoapClient;
use App\MbcSendMt;

class TestController extends Controller
{


  public function mbc_sent_mt(Request $request)
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
    $response = curl_exec($ch);
    curl_close($ch);

   print(  $response   ) ;
   echo "<hr>";
   die;

    $doc = new \DOMDocument('1.0', 'utf-8');
    $clean_xml = str_ireplace(['SOAP-ENV:', 'SOAP:'], '', $response);
    $xmlres = simplexml_load_string($clean_xml);
    $result  = $xmlres;

    $xml2 = $xmlres->Body->GetSmsINResponse->GetSmsINResult ;
    $xml3 = simplexml_load_string($xml2);
    $code =   $xml3->SMS->Code ;

    if($code  == "Success"){
      $code_status = 1 ;
    }else{
      $code_status = 0 ;
    }



    $log_url = url('mbc_sent_mt');
    $logAction = 'Mbc Sent Mt Api';
    $log_array=array() ;
    $log_array['response ']= $response;
    $log_array['xmlres ']=  $xmlres ;
    $log_array['xml2 ']=  $xml2 ;
    $log_array['xml3 ']= $xml3 ;
    $log_array['code ']= $code ;
    $log_array['code_status ']= $code_status ;

    $this->log_action($logAction, $log_url, $log_array);


    $Xmldoc['Response'] =  $response;
    $Xmldoc['ResponseCode'] = $code_status;

    MbcSendMt::create($Xmldoc);



  }




    public function test_mbc()
    { // test flatter Daily

// Config
        $client = new \nusoap_client('http://mbc.mobc.com:8030/SourceSmsOut/SmsIN.asmx', 'wsdl');
        $client->soap_defencoding = 'UTF-8';
        $client->decode_utf8 = false;

// header authentication
        $username = "webSourceOut";
        $password = "2015Source@SMS_mbc";

        $client->setCredentials($username, $password);
        $error = $client->getError();

        $Packet = array(
            "SMS" => array(
                array(
                    "SmsID" => 3,
                    "MobileNo" => "966535550107",
                    "Country" => "KSA",
                    "Operator" => "STC",
                    "Shortcode" => "88888",
                    "Msgtxt" => "text 3",
                    "ServiceID" => 2,

                )

            )
        );



        if ($error) {
            echo "<h2>Constructor error</h2><pre>" . $error . "</pre>";
        }

        $result = $client->call("GetSmsIN", array(
            "UserName" => $username,
            "UserPass" => $password,
            "Packet" => $Packet

        ));



        if ($client->fault) {
            echo "<h2>Fault</h2><pre>";
            print_r($result);
            echo "</pre>";
        } else {
            $error = $client->getError();
            if ($error) {
                echo "<h2>Error</h2><pre>" . $error . "</pre>";
            } else {
                echo "<h2>Main</h2>";
                print_r($result); // MOResult

            }
        }

// show soap request and response
        echo "<h2>Request</h2>";
        echo "<pre>" . $client->request . "</pre>";
        echo '<h2>Request</h2><pre>' . htmlspecialchars($client->request, ENT_QUOTES) . '</pre>';

        echo "<h2>Response</h2>";
        echo "<pre>" . $client->response . "</pre>";
        echo '<h2>Response</h2><pre>' . htmlspecialchars($client->responseData, ENT_QUOTES) . '</pre>';

        $data["Date"] = Carbon::now()->format('Y-m-d H:i:s');
        $data["Request"] = $client->request;
        $data["Response"] = $client->responseData;


        $this->log('MBC Sent Mt Api', url('/test_mbc'), $data);

    }




}
