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
}
