<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\MbcNotification;

class MbcController extends Controller
{
    public function mbc_notifications(Request $request)
    {

        $notification['msisdn'] = $request->msisdn;
        $notification['action'] = $request->action;

        $url = $request->fullUrl();
        $logAction = 'Mbc Notification';

        $this->log_action($logAction, $url, $notification);

        $notification['url'] = $url;

        $MbcNotification = MbcNotification::create($notification);

        $response = json_encode(['response' => 'success']);

        return $response;

    }
}
