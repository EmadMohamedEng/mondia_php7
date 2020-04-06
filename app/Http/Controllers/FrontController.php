<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Video;
use App\Provider;
use App\Service;
use App\Audio;
use App\Post;

use Monolog\Logger;
use Carbon\Carbon;
use Illuminate\Support\Facades\File;
use Monolog\Handler\StreamHandler;
use Illuminate\Support\Facades\Session;
use App\DuIntgration;

class FrontController extends Controller
{

    public function index()
    {

        $latest = Video::select('*', 'contents.id as content_id');
        if (request()->has('OpID') && request()->get('OpID') != '')
        {
            $latest = $latest->join('posts', 'posts.video_id', '=', 'contents.id')
            ->where('posts.operator_id', request()->get('OpID'))
            ->where('posts.show_date', '<=', \Carbon\Carbon::now()->format('Y-m-d'))
            ->orderBy('posts.show_date', 'desc');
        }

        $latest = $latest->whereIn('contents.type',[1,3])->limit(10)->latest('contents.created_at')->get();// video or images
        return view('front.home',compact('latest'));
    }

    public function services($id)
    {

        $services = Service::query();
        if(request()->has('OpID') && request()->get('OpID') != ''){
            $services = $services->whereHas('videos', function($q){
                $q->join('posts','posts.video_id' , '=' , 'contents.id')
                ->where('posts.operator_id', request()->get('OpID'))
                ->where('posts.show_date', '<=', \Carbon\Carbon::now()->format('Y-m-d'));
            });
        }
        $services = $services->where('provider_id',$id)->get();
        $provider = Provider::whereId($id)->first();
        return view('front.service', compact('services','provider'));
    }

    public function contents(Request $request)
    {
      $service = '';
      $contents = Video::select('*','contents.id as content_id');
      if($request->has('service_id') && $request->service_id != '')
      {
        $contents = $contents->where('service_id', $request->service_id);
        $service = Service::find($request->service_id);
      }
      if(request()->has('OpID') && request()->get('OpID') != '')
      {
        $content = $contents->join('posts', 'posts.video_id', '=', 'contents.id')
        ->where('posts.operator_id', request()->get('OpID'))
        ->where('posts.show_date', '<=', Carbon::now()->toDateString())
        ->orderBy('posts.show_date','desc');
      }
      if($request->has('search') && $request->search != '')
      {
        $contents = $contents->join('translatables','translatables.record_id','=','contents.id')
        ->join('tans_bodies','tans_bodies.translatable_id','translatables.id')
        ->where('translatables.table_name','contents')
        ->where('translatables.column_name','title')
        ->where(function($q) use ($request){
          $q->where('contents.title', 'like', '%' . $request->search . '%');
          $q->orWhere('tans_bodies.body', 'like', '%' . $request->search . '%');
        });
      }

      $contents = $contents->limit(get_pageLength())->get();

      if(!request()->has('OpID') && !get_setting('enable_testing')){
        return view('errors.404');
      }

      return view('front.list_content', compact('contents','service'));
    }

    public function load_contents(Request $request)
    {
      $contents = Video::select('*','contents.id as content_id');
      if($request->has('service_id') && $request->service_id != '')
      {
        $contents = $contents->where('service_id', $request->service_id);
      }
      if(request()->has('OpID') && request()->get('OpID') != '')
      {
        $content = $contents->join('posts', 'posts.video_id', '=', 'contents.id')
        ->where('posts.operator_id', request()->get('OpID'))
        ->where('posts.show_date', '<=', Carbon::now()->format('Y-m-d'))
        ->orderBy('posts.show_date','desc');
      }
      if($request->has('search') && $request->search != '')
      {
        $contents = $contents->where('contents.title', 'like', '%' . $request->search . '%');
      }

      $contents = $contents->offset($request->start)->limit(get_pageLength())->get();

      $view = view('front.load_content', compact('contents'))->render();
      return Response(array('html' => $view));
    }

    public function view_content($id,Request $request)
    {
     $current_url =    \Request::fullUrl()  ;
     session()->put('current_url',$current_url);

        $view_coming_post = get_setting('view_coming_post');
        $enable = get_setting('enable_testing');
        $content = Video::select('contents.*', 'contents.id as content_id');
        if($view_coming_post)
        {
          $content = $content->whereId($id)->first();
        }
        else
        {
          if($request->has('OpID') && $request->OpID != '')
          {
            $content = $content->join('posts','posts.video_id','=','contents.id')
            ->where('posts.show_date', '<=', Carbon::now()->toDateString())
            ->where('posts.operator_id',$request->OpID)
            ->where('contents.id',$id)
            ->first();
          }
          else
          {
            $content = $content->whereId($id)->first();
          }
        }
        if(!$content){
            return view('errors.404');
        }
        $contents = video::select('contents.*', 'contents.id as content_id')
        ->where('contents.service_id', $content->service->id)
        ->whereNotIn('contents.id', [$content->id]);
        if($request->OpID)
        {
            $contents = $contents->join('posts','posts.video_id','=','contents.id')
            ->where('posts.operator_id',$request->OpID)
            ->where('posts.show_date','<=',Carbon::now()->toDateString());
        }
        $contents = $contents->orderBy('contents.created_at', 'desc')->limit(4)->get();
        if($request->has('userToken')){ // subscribe for the first time
           session()->put('userToken',$request->get('userToken'));
            $userToken = $request->userToken;
            $refreshToken = $request->refreshToken;
            $expiresIn = $request->expiresIn;
            $status = $request->status;

        }else{ // login for scond time
          if(session()->has('userToken') && session()->get('userToken') != ''){ // if our server session is expire
            $userToken =  session()->get('userToken')  ;
          }else{ // make Mondia login again by create new token
            if($request->OpID == omantel){
               return redirect(url("/omantel/redirect?redirect_url=".$current_url)) ;
           }elseif($request->OpID == du){
            return redirect(url("/du_redirect?redirect_url=".$current_url)) ;
           }

          }

    }




    if($request->OpID == omantel)
    {
       session()->put('OpID',omantel);
        $response = $this->check_status($userToken);
        if(empty($response)){
            return $this->pin_code($userToken);
        }else{
            session()->put('status','active');
            return view('front.inner', compact('content','contents'));
        }
    }

    if($request->OpID == du)
    {
       session()->put('OpID',du);
        $response = $this->du_check_status($userToken);

        if(empty($response)){
            return $this->du_pin_code($userToken);
        }
        else{
            session()->put('status','active');
            return view('front.inner', compact('content','contents'));
        }
    }


        return view('front.inner', compact('content','contents'));
    }

    public function sebha()
    {

        return view('front.sebha');
    }

    public function zakah()
    {

        return view('front.zakah');
    }

    public function merath()
    {

        return view('front.merath');
    }

    public function merath_calc()
    {

        return view('front.merath_calc');
    }

    // salah time
    public function salah_time()
    {
        $prayer_times = $this->prayTimesCal();
        $hjrri_date = $this->hjrri_date_cal();

        return view('front.salah_time', compact('prayer_times', 'hjrri_date'));
    }

    public function prayTimesCal()
    {
        $ip = !empty($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR'];
        $URL = 'http://www.geoplugin.net/php.gp?ip=' . $ip;
        $new_arr = curl_init($URL);
        curl_setopt($new_arr, CURLOPT_HEADER, false);
        curl_setopt($new_arr, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($new_arr, CURLOPT_HTTPHEADER, array("Content-type: application/json"));
        curl_setopt($new_arr, CURLOPT_POST, true);
        $result = curl_exec($new_arr);
        curl_close($new_arr);
        //  echo "Latitude:".$new_arr[0]['geoplugin_latitude']." and Longitude:".$new_arr[0]['geoplugin_longitude'];

        if (isset($new_arr[0]['geoplugin_latitude']) && isset($new_arr[0]['geoplugin_longitude'])) {
            $latitude = $new_arr[0]['geoplugin_latitude'];
            $longitude = $new_arr[0]['geoplugin_longitude'];
        } else {
            $latitude = "30";
            $longitude = "31";
        }

        include(public_path('plugins/PrayTime.php'));
        $method = 5; // Egyptian General Authority of Survey
        $timeZone = +2;
        $date = strtotime(date("Y-n-j"));  // php date month and day without leading zero   ... Use j instead of d and n instead of m:

        $prayTime = new \PrayTime($method);
        $prayTime->timeFormat = 1;  // 12-hour format
        $times = $prayTime->getPrayerTimes($date, $latitude, $longitude, $timeZone);

        $prayer_times = array();
        foreach ($times as $key => $value) {
            if ($prayTime->timeNames_ar[$key] == "Sunrise" || $prayTime->timeNames_ar[$key] == "Sunset") {
                continue;
            }
            $prayer_times[$prayTime->timeNames_ar[$key]] = $value;
        }
        return $prayer_times;
    }

    public function hjrri_date_cal()
    {
        // Hijri date
        $hjrri_date = array();
        include(public_path('plugins/HijriDate.php'));
        $hijri = new \HijriDate();
        $current_date = date("Y-m-d", strtotime("+1 day"));
        // $current_date = date("Y-m-d");
        $hijri = new \HijriDate(strtotime($current_date));

        $day = $hijri->get_day();
        $month = $hijri->get_month_name_ar($hijri->get_month());
        $year = $hijri->get_year();

        $hjrri_date_object = new \stdClass();
        $hjrri_date_object->day = $day;
        $hjrri_date_object->month = $month;
        $hjrri_date_object->year = $year;

        return $hjrri_date_object;
    }

    // end salah time
    public function mosque()
    {

        return view('front.mosque');
    }

    public function azan(Request $request)
    {

        if ($request->has('OpID')) {
            $opID = $request->OpID;
            $providers = Provider::with('audio')->get();
            $providers = Audio::with('provider')->where('azan_flage', 1)->where('operator_id', $opID)->groupBy('provider_id')->get();
        } else {
            $providers = Provider::with('audio')->get();
            $providers = Audio::with('provider')->where('azan_flage', 1)->groupBy('provider_id')->get();
        }
        return view('front.azan', compact('providers'));
    }

    public function list_azan($id,Request $request)
    {
        if ($request->has('OpID') && $request->OpID != '') {
            $opID = $request->OpID;
            $audios = Audio::where('provider_id', $id)->where('operator_id', $opID)->where('azan_flage', 1)->get();
        } else {
            $audios = Audio::where('provider_id', $id)->where('azan_flage', 1)->get();
        }
        $data = view('front.list_azan', compact('audios'))->render();

        return Response($data);
    }

    public function rbts(Request $request)
    {

        if ($request->has('OpID')) {
            $opID = $request->OpID;
            $rbts = Audio::where('operator_id', $opID)->get();
        } else {
            $rbts = Audio::get();
        }
        return view('front.rbts', compact('rbts'));
    }

    public function view_rbt($id)
    {

        $rbt = Audio::FindOrFail($id);
        $prayer_times = $this->prayTimesCal();
        $hjrri_date = $this->hjrri_date_cal();
        return view('front.inner_rbt', compact('rbt', 'prayer_times', 'hjrri_date'));
    }



    /* ======================= Oman Tel landing =================== */
    public function create_token()
    {
        $url = 'http://gateway.mondiamedia.com/v0/api/gateway/token/client';

        $headers = array(
            "accept: application/json",
            "content-type: application/x-www-form-urlencoded",
            "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8"
        );

        $json = '';

        $response = $this->SendRequestPost($url, $json, $headers);
        $response = json_decode($response, true);
        // make log
        $actionName = "Omantel Create Token";
        $parameters_arr = array(
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'response' => $response,
        );

        $this->log_action($actionName, $url, $parameters_arr);

        return $response;
    }

    public function redirect(Request $request)
    {
        $token = $this->create_token()['accessToken'];

        $Url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/web/auth/dialog?access_token=$token&redirect=".$request->redirect_url."&auto=false&authMode=AUTO&distributionChannel=APP";

        session()->put('success_url',$request->redirect_url);
        // make log
        $actionName = "OmanTel Redirect";
        $parameters_arr = array(
            'token' => $token,
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'Url' => $Url,
        );

        $this->log_action($actionName, '', $parameters_arr);
        return redirect($Url);
    }


    public function test()
    {
      $current_url =  session()->get('current_url');
      return redirect(url("/omantel/redirect?redirect_url=".$current_url)) ;
    }

    public function check_status($userToken)
    {

        $curl = curl_init();

        $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription?disableFiltering=false&subsTypeId=59160008&inclCancelled=false&inclSubscriptionType=false&subscriptionProvider=MONDIA_MEDIA";

        $headers = array(
            "accept: application/json",
            "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
            "Authorization: Bearer ".$userToken
        );

        $json = '';

        $response = $this->SendRequestGet($url, $json, $headers);
        $response = json_decode($response, true);

        if(isset($response[0]['error']) && $response[0]['error'] =="TOKEN_NOT_VALID"){ // Token expire So create new one
         $current_url =  session()->get('current_url');
          return redirect(url("/omantel/redirect?redirect_url=".$current_url)) ;
        }



        if(isset($response[0]['id']) && $response[0]['id'] !=""){
          $check_status_id = $response[0]['id']  ;
          session()->put('check_status_id',  $response[0]['id']);
        }else{
          $check_status_id = "" ;
        }

        // make log
        $actionName = "Omantel Check Status";
        $parameters_arr = array(
            'token' => $userToken,
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'headers' =>  $headers,
            'response' => $response,
            'check_status_id' =>   $check_status_id ,
        );
        $this->log_action($actionName, $url, $parameters_arr);

        return $response;
    }

    public function pin_code ($userToken)
    {
        $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/subscribe/sendSubPin";

        $headers = array(
            "Content-Type: application/json",
            "accept: application/json",
            "X-MM-GATEWAY-KEY: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
            "Authorization: Bearer ".$userToken
        );

        $vars['subscriptionTypeId'] = 59160008;
        $vars['userAgent'] = 'IVAS';
        $vars['agency'] = 'IVAS';
        $json = json_encode($vars);

        $response = $this->SendRequestPost($url, $json, $headers);
        $response = json_decode($response, true);



        if(isset($response['error']) && $response['error'] =="TOKEN_NOT_VALID"){ // Token expire So create new one
          $current_url =  session()->get('current_url');
           return redirect(url("/omantel/redirect?redirect_url=".$current_url)) ;
         }

        // make log
        $actionName = "Omantel Send PinCode";
        $parameters_arr = array(
            'userToken' => $userToken,
            'headers' =>  $headers,
            "response" => $response,
        );

        $this->log_action($actionName, $url, $parameters_arr);

        Session::put('requestId', $response['custRequestId']);
        Session::put('userToken', $userToken);

        return redirect(route('front.pincode',['OpID' => omantel]));
    }

    public function pincode(Request $request)
    {
        return view('front.pin_code');
    }

    public function verify_pin(Request $request)
    {
        $requestId = session('requestId');
        $userToken = session('userToken');
        $pin = $request->pincode;

        $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/subscribe/verifyPinAndSubscribe";

        $headers = array(
            "content-type: application/json",
            "accept: application/json",
            "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
            "Authorization: Bearer ".$userToken
        );

        $vars['requestId'] = $requestId;
        $vars['pin'] = $pin;
        $vars['refererLink'] = 'http://omantelmyworld.com';
        $vars['subscriptionTypeId'] = 59160008;

        $json = json_encode($vars);

        $response = $this->SendRequestPost($url, $json, $headers);
        $response = json_decode($response, true);


        if(isset($response['error']) && $response['error'] =="TOKEN_NOT_VALID"){ // Token expire So create new one
          $current_url =  session()->get('current_url');
           return redirect(url("/omantel/redirect?redirect_url=".$current_url)) ;
         }


        // make log
        $actionName = "Omantel Verify Pin";
        $parameters_arr = array(
            'userToken' => $userToken,
            'requestId' => $requestId,
            'pin' => $pin,
            'headers' =>  $headers,
            "response" => $response,
        );

        $this->log_action($actionName, $url, $parameters_arr);

        if($response['responseCode'] == 670){
            return back()->with('faild','not success pincode');
        }
        session()->put('status','active');
        return redirect(session()->get('current_url'));
    }

    public function delete_subscription(Request $request)
    {
         $userToken  = session()->get('userToken') ;
         $check_status_id  = session()->get('check_status_id') ;

        $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/$check_status_id ";

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "DELETE",
            CURLOPT_HTTPHEADER => array(
                "accept: application/json",
                "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
                "authorization: Bearer $userToken"
            ),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);

        $response = json_decode($response, true);

        // make log
        $actionName = "Omantel Delete Subscription";
        $parameters_arr = array(
           'userToken' => $userToken,
           'check_status_id' => $check_status_id,
            "response" => $response,
        );
        $this->log_action($actionName, $url, $parameters_arr);

        session()->flush();
        return back();
    }

    public function logout()
    {
      if( session()->has('OpID')  && session()->get('OpID') != ''  ){

        $Url = url("/?OpID=".session()->get('OpID')) ;
        session()->flush();
        return redirect($Url);
      }else{
        return redirect(url('/'));
      }

    }

    // make du integration
    public function du_create_token()
    {
        $url = 'http://gateway.mondiamedia.com/v0/api/gateway/token/client';

        $headers = array(
            "Accept: application/json",
            "Content-Type: application/x-www-form-urlencoded",
            "X-MM-GATEWAY-KEY: G94193561-6669-1626-76fd-b7b02fe6b216"
        );

        $json = '';

        $response = $this->SendRequestPost($url, $json, $headers);
        $response = json_decode($response, true);
        // make log
        $actionName = "DU Create Token";
        $parameters_arr = array(
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'headers' =>  $headers,
            'response' => $response,
        );

        $this->log_action($actionName, $url, $parameters_arr);

        return $response;
    }


    public function du_redirect(Request $request)
    {
        $token = $this->du_create_token()['accessToken'];

        $Url = "http://gateway.mondiamedia.com/du-portal-lcm-v1/web/auth/dialog?access_token=$token&redirect=" . urlencode($request->redirect_url)."&auto=false&authMode=AUTO&distributionChannel=APP";

        session()->put('success_url',$request->redirect_url);

        // make log
        $actionName = "DU Redirect";
        $parameters_arr = array(
            'token' => $token,
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'Url' => $Url,
        );

        $this->log_action($actionName, '', $parameters_arr);
        return redirect($Url);
    }



    public function du_check_status($userToken)
    {

        $curl = curl_init();

        $url = "http://gateway.mondiamedia.com/du-portal-lcm-v1/api/subscription?disableFiltering=false&subsTypeId=56830063&inclCancelled=false&inclSubscriptionType=false&subscriptionProvider=MONDIA_MEDIA";

        $headers = array(
            "accept: application/json",
            "X-MM-GATEWAY-KEY: G94193561-6669-1626-76fd-b7b02fe6b216",
            "Authorization: Bearer ".$userToken
        );

        $json = '';

        $response = $this->SendRequestGet($url, $json, $headers);
        $response = json_decode($response, true);

        if(isset($response[0]['error']) && $response[0]['error'] =="TOKEN_NOT_VALID"){ // Token expire So create new one
          $current_url =  session()->get('current_url');
           return redirect(url("/du_redirect?redirect_url=".$current_url)) ;
         }


        if(isset($response[0]['id']) && $response[0]['id'] !=""){
          $check_status_id = $response[0]['id']  ;
          session()->put('check_status_id',  $response[0]['id']);
        }else{
          $check_status_id = "" ;
        }

        // make log
        $actionName = "DU Check Status";
        $parameters_arr = array(
            'token' => $userToken,
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'userToken' =>  $userToken,
            'headers' =>  $headers,
            'response' => $response,
            'check_status_id' => $check_status_id,
        );
        $this->log_action($actionName, $url, $parameters_arr);

        if(!empty($response)){
            session()->put('requestId',$response[0]['id']);
            session()->put('userToken',$userToken);
        }
        return $response;
    }


    public function du_pin_code()
    {
        $x = 12;

        $trxid = $randomNum=substr(str_shuffle("123456789123456789123456789"), 0, $x);

        $url = "http://pay-with-du.ae/16/mondiamedia/mondia-duelkheer-1-en-doi-web?serviceProvider=mondiamedia&serviceid=duelkheer&trxid=".$trxid."&redirectUrl=".urlencode(session()->get('current_url'));

        // make log
        $actionName = "DU Send PinCode";
        $parameters_arr = array(
            'trxid' => $trxid,
        );

        $this->log_action($actionName, $url, $parameters_arr);

        return redirect($url);
    }

    public function du_delete_subscription(Request $request)
    {

      $userToken  = session()->get('userToken') ;
      $check_status_id  = session()->get('check_status_id') ;

        $url = "http://gateway.mondiamedia.com/du-portal-lcm-v1/api/subscription/$check_status_id";

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "DELETE",
            CURLOPT_HTTPHEADER => array(
                "accept: application/json",
                "x-mm-gateway-key: G94193561-6669-1626-76fd-b7b02fe6b216",
                "authorization: Bearer  $userToken"
            ),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);

        $response = json_decode($response, true);

        // make log
        $actionName = "DU Delete Subscription";
        $parameters_arr = array(
          'userToken' =>   $userToken,
          'check_status_id' =>  $check_status_id,
           "response" => $response,
        );
        $this->log_action($actionName, $url, $parameters_arr);

        session()->flush();
        return back();
    }

    public function du_logout()
    {
        if( session()->has('OpID')  && session()->get('OpID') != ''  ){

          $Url = url("/?OpID=".session()->get('OpID')) ;
          session()->flush();
          return redirect($Url);
        }else{
          return redirect(url('/'));
        }

    }

}
