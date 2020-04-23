<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Msisdn;
use Carbon\Carbon;
use App\Notify;
use Session;
use Monolog\Logger;
use Illuminate\Support\Facades\File;
use Monolog\Handler\StreamHandler;

class StcController extends Controller
{

  //===============================Viva Integration "David" ==========================================//

  public function viva_login(request $request)
  {
    if (isset($_REQUEST['msisdn']) && $_REQUEST['msisdn'] != "") {
      $msisdn = preg_replace('/^965/', '', $_REQUEST['msisdn']);
    } else {
      $msisdn = "";
    }


    if (isset($_REQUEST['ads']) && $_REQUEST['ads'] != "") {
      $ads = $_REQUEST['ads'];
      session(['ads' => $ads]);
    } else {
      $ads = "";
    }

    // new case after user confirms his pin and subscribe he will redirect to this link :    http://localhost:8080/urdu_php7/landing_stc?CGSTATUS=0&CGMSISDN=96551747685

    if (isset($_REQUEST['CGMSISDN']) && $_REQUEST['CGMSISDN'] != "" && isset($_REQUEST['CGSTATUS']) && $_REQUEST['CGSTATUS'] != "") {
      $CGMSISDN =  $_REQUEST['CGMSISDN'];
      $CGSTATUS = $_REQUEST['CGSTATUS'];
      if ($CGSTATUS == 0 ||  $CGSTATUS == 5) {   // Note( CGSTATUS 0 means successful subscription and CGSTATUS 5 means already sub)

        if ($CGSTATUS == 0) {
          $action = "new_sub";
        } elseif ($CGSTATUS == 5) {
          $action = "old_sub";
        }

        //  viva notify = all notification history
        $notify = new Notify();
        $notify->complete_url = \Request::fullUrl();
        $notify->msisdn = $CGMSISDN;
        $notify->action = $action;
        $notify->status = $CGSTATUS;
        $notify->save();


        // update my database
        // update msisdn status
        $URL = \Request::fullUrl();
        $today = date("Y-m-d");
        $time = strtotime($today);

        $Msisdn = Msisdn::where('msisdn', '=', $CGMSISDN)->orderBy('id', 'DESC')->first();
        if ($Msisdn) {
          $Msisdn->final_status = 1;
          $Msisdn->subscribe_date = $today;
          $Msisdn->renew_date = date("Y-m-d", strtotime("+1 day", $time));
          $Msisdn->plan = "d";  // weekly
          $Msisdn->plan_id = 2;  // prepaid
          $Msisdn->save();
        } else {
          $Msisdn = new Msisdn();
          $Msisdn->final_status = 1;
          $Msisdn->msisdn = $CGMSISDN;
          $Msisdn->operator_id = stc; // viva
          $Msisdn->ad_company = "DF";

          $Msisdn->ooredoo_notify_id = $notify->id;
          $Msisdn->subscribe_date = $today;
          $Msisdn->renew_date = date("Y-m-d", strtotime("+1 day", $time));
          $Msisdn->plan = "d";  // weekly
          $Msisdn->plan_id = 2;  // prepaid
          $Msisdn->save();
        }

        $msisdn = preg_replace('/^965/', '', $CGMSISDN);
        session(['MSISDN' => $msisdn, 'status' => 'active' , 'stc_op_id' => stc]);
        return redirect('/?OpID=' . stc);
      }
    }

    // new case for paramter msisdn http://localhost:8080/mondia_php7/landing_stc?msisdn=96512345678
      if($request->has('msisdn') && $request->msisdn != ''){
        $Msisdn = Msisdn::where('msisdn', '=',$request->msisdn)->where('final_status', '=', 1)->where('operator_id', '=', stc)->orderBy('id', 'DESC')->first();
        if ($Msisdn) {
          session(['MSISDN' => $msisdn, 'status' => 'active', 'stc_op_id' => stc]);
          return redirect('/?OpID=' . stc);
        } else {
          $ivas_portal_link = urlencode(SNAP_VIVA_URL);  // here we can append ads parameter
          $pended_url = "&msisdn=" . $request->msisdn;
          $URL = "http://cg.mobi-mind.net/?ID=357,bae9d56d,661,8061,3,IVAS,$ivas_portal_link$pended_url";
          return redirect($URL);
        }
      }

    return view('landing_v2.stc.viva_landing', compact('msisdn'));
  }


  public function viva_login_action(request $request)
  {
    $msisdn = $request->input('number');
    if (!preg_match('/^[0-9]{8}$/', $msisdn)) {
      $request->session()->flash('failed', 'يجب ان يكون يحتوى الرقم على 8 ارقام');
      return back();
    }

    // check subscribe
    $Msisdn = Msisdn::where('msisdn', '=', "965" . $msisdn)->where('final_status', '=', 1)->where('operator_id', '=', stc)->orderBy('id', 'DESC')->first();
    if ($Msisdn) {
      session(['MSISDN' => $msisdn, 'status' => 'active', 'stc_op_id' => stc]);
      return redirect('/?OpID='.stc);
    } else {

      if (Session::has('ads')) {
        $ads = Session::get('ads');
        $pend = "&ads=" . $ads;
      } else {
        $pend = "";
      }


      return redirect(url('/landing_stc_1?msisdn=965' . $msisdn . $pend));
    }
  }


  public function subscribeViva_1(request $request)
  {
    date_default_timezone_set("Africa/Cairo");
    $ivas_portal_link = urlencode(SNAP_VIVA_URL);  // here we can append ads parameter


    if (isset($_REQUEST['msisdn']) && $_REQUEST['msisdn'] != "") {
      $msisdn = $_REQUEST['msisdn'];
      $pended_url = "&msisdn=" . $msisdn;

      // ads part append
      if (isset($_REQUEST['ads']) && $_REQUEST['ads'] != "") {
        $ads = $_REQUEST['ads'];
        $pended_url = "&ads=" . $ads;
      }
    } else {
      $msisdn = "";
      $pended_url = "";
    }

    $URL = "http://cg.mobi-mind.net/?ID=357,bae9d56d,661,8061,3,IVAS,$ivas_portal_link$pended_url";

    // make log
    $actionName = "STC Kuwait Subscribe Track";
    $parameters_arr = array(
      'date' => Carbon::now()->format('Y-m-d H:i:s'),
      'URL' => $URL
    );
    $this->log($actionName, $URL, $parameters_arr);

    return redirect($URL);
  }

  public function notification(request $request)
  {


    /*

          Activation: https://filters.digizone.com.kw/notification?ChannelID=4493&ServiceID=808&User=kuwait@idex&Password=kuwait@!dex&STATUS=ACT-SB&OperatorID=41904&MSISDN=96555410856&RequestID=303263614

          First Failed billing: https://filters.digizone.com.kw/notification?Password=kuwait@!dex&ServiceID=808&OperatorID=41904&ChannelID=4493&STATUS=FFL-BL&User=kuwait@idex&MSISDN=96555410856&RequestID=303270353

          renewal success: https://filters.digizone.com.kw/notification?Password=kuwait@!dex&ServiceID=808&OperatorID=41904&ChannelID=4493&STATUS=RSC-BL&User=kuwait@idex&MSISDN=96555410856&RequestID=303270353

          Viva Service link :   https://filters.digizone.com.kw/

          Other possible status:

          RSC-BL: renewal success
          FSC-BL: fist success billing
          BLD-SB: unsubscription


          // dalil muslim norification (ChannelID=11142) :
             https://islamic.digizone.com.kw/notification?Password=kuwait@!dex&ServiceID=808&OperatorID=41904&ChannelID=11142&STATUS=ACT-BL&User=kuwait@idex&MSISDN=96555410856&RequestID=..


         */


    date_default_timezone_set("Africa/Cairo");
    $URL = \Request::fullUrl();
    $today = date("Y-m-d");
    $time = strtotime($today);




    $msisdn = $request->input('MSISDN');
    $STATUS = $request->input('STATUS');  // // "success" if successfully billed or "Fail"
    $message = "";

    // make check
    $ChannelID = $request->input('ChannelID');
    $ServiceID = $request->input('ServiceID');
    $User = $request->input('User');
    $Password = $request->input('Password');
    $OperatorID = $request->input('OperatorID');

    $ad_company = "DF";
    // ads part append
    if (isset($_REQUEST['ads']) && $_REQUEST['ads'] != "") {
      $ads = $_REQUEST['ads'];
      $ad_company =  "headway";
    }

    if ($User == "kuwait@idex" && $Password == "kuwait@!dex") {


      /*
              - summary :
              1- user subscribed but not billed yet   =   ACT-SB  // user is subscribe but not billed yet
              2-fist success billing  = FSC-BL      /   First Failed billing  =  FFL-BL
              3- renewal success   = RSC-BL
              4- BLD-SB: unsubscription
              5-  ACT-BL   //  activation   here sepical case as  there is a free week trial



             */
      if ($STATUS == "ACT-SB" || $STATUS == "FSC-BL" || $STATUS == "RSC-BL" || $STATUS == "FFL-BL") { //  USER want to subscribe or renew
        $action = "sub";
      } else {
        $action = "usub";
      }

      $parameters_arr = array(
        'link' => $URL,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'action' => $action
      );


      // log for all history
      $actionName = "Stc Kuwait Notification Url";
      $this->log($actionName, $URL, $parameters_arr);



      if (isset($msisdn) && !is_null($msisdn) && isset($STATUS) && !is_null($STATUS)) {

        //  viva notify = all notification history
        $notify = new Notify();
        $notify->complete_url = \Request::fullUrl();
        $notify->msisdn = $msisdn;
        $notify->action = $action;
        $notify->status = $STATUS;
        $notify->save();


        // update msisdn status
        $Msisdn = Msisdn::where('msisdn', '=', $msisdn)->orderBy('id', 'DESC')->first();
        if ($Msisdn) {

          if ($STATUS == "ACT-SB") {
            $Msisdn->final_status = 0;
            $message = "user is subscribe but not billed yet";
          } elseif ($STATUS == "FFL-BL") { // First Failed billing
            $Msisdn->final_status = 0;
            $message = "First Failed billing";
          } elseif ($STATUS == "BLD-SB") {
            $Msisdn->final_status = 0;
            $message = "unsubscription";
          } elseif ($STATUS == "FSC-BL") {
            $Msisdn->final_status = 1;
            $message = "fist success billing";
          } elseif ($STATUS == "RSC-BL") { // First Failed billing   OR   unsubscription
            $Msisdn->final_status = 1;
            $message = "renewal success ";
          } elseif ($STATUS == "ACT-BL") {  // ACT-BL
            $Msisdn->final_status = 1;
            $message = "activation and the user will enjoya free week trial";
          }

          $Msisdn->ooredoo_notify_id = $notify->id;
          $Msisdn->subscribe_date = $today;
          $Msisdn->renew_date = date("Y-m-d", strtotime("+1 day", $time));
          $Msisdn->plan = "d";  // weekly
          $Msisdn->plan_id = 2;  // prepaid
          $Msisdn->save();
        } else {


          $Msisdn = new Msisdn();
          $Msisdn->msisdn = $msisdn;
          $Msisdn->operator_id = stc; // viva
          $Msisdn->ad_company = $ad_company;
          if ($STATUS == "ACT-SB") {
            $Msisdn->final_status = 1;
            $message = "user subscribed and will enjoy 1 week free";
          } elseif ($STATUS == "FFL-BL") { // First Failed billing
            $Msisdn->final_status = 0;
            $message = "First Failed billing";
          } elseif ($STATUS == "BLD-SB") {
            $Msisdn->final_status = 0;
            $message = "unsubscription";
          } elseif ($STATUS == "FSC-BL") {
            $Msisdn->final_status = 1;
            $message = "first success billing";
          } elseif ($STATUS == "RSC-BL") { // First Failed billing   OR   unsubscription
            $Msisdn->final_status = 1;
            $message = "renewal success ";
          } elseif ($STATUS == "ACT-BL") {  // ACT-BL
            $Msisdn->final_status = 1;
            $message = "activation and the user will enjoya free week trial";
          }


          $Msisdn->ooredoo_notify_id = $notify->id;
          $Msisdn->subscribe_date = $today;
          $Msisdn->renew_date = date("Y-m-d", strtotime("+1 day", $time));
          $Msisdn->plan = "d";  // weekly
          $Msisdn->plan_id = 2;  // prepaid
          $Msisdn->save();
        }
      }

      $result = array();
      $result['status'] = "Success";
      $result['type'] = "viva_notification_url";
      $result['url'] = $URL;
      $result['status'] = $STATUS;
      $result['message'] = $message;
    } else {
      $result = array();
      $result['status'] = "Fail";
      $result['type'] = "viva_notification_url";
      $result['url'] = $URL;
      $result['message'] = "wrong credentials";
    }

    return Response(array('result' => $result));
  }

  public function viva_profile($uid)
  {
    $phone =  \Session::get('MSISDN');
    if (isset($phone)) {
      $msisden = Msisdn::where('msisdn', '=', "965" . \Session::get('MSISDN'))->where('final_status', '=', 1)->first();
      if ($msisden) {
        return view('front.newdesign.viva_profile', compact('msisden'));
      } else {
        return redirect(url('/landing_stc_1?msisdn=965' . \Session::get('MSISDN')));
      }
    } else {
      return redirect(url('/landing_stc'));
    }
  }
  public function logout()
  {
    \Session::flush();
    return redirect('landing_stc');
  }


  public function log($actionName, $URL, $parameters_arr)
  {
    date_default_timezone_set("Africa/Cairo");
    $date = date("Y-m-d");
    $log = new Logger($actionName);
    // to create new folder with current date  // if folder is not found create new one
    if (!File::exists(storage_path('logs/' . $date . '/' . $actionName))) {
      File::makeDirectory(storage_path('logs/' . $date . '/' . $actionName), 0775, true, true);
    }

    $log->pushHandler(new StreamHandler(storage_path('logs/' . $date . '/' . $actionName . '/logFile.log', Logger::INFO)));
    $log->addInfo($URL, $parameters_arr);
  }

  //===============================Viva Integration "David" ==========================================//


}
