<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MbcController extends Controller
{
    public function mbc_notifications(Request $request)
    {

        $notification['msisdn'] = $request->msisdn;
        $notification['action'] = $request->action;

        $url = url()->full();
        $logAction = 'Mbc Notification';

        return $this->log_action($logAction, $url, $notification);



    }
}
