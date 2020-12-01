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
use App\MondiaSubscriber;
use App\MondiaUnsubscriber;

use Monolog\Logger;
use Carbon\Carbon;
use Illuminate\Support\Facades\File;
use Monolog\Handler\StreamHandler;
use Illuminate\Support\Facades\Session;
use App\DuIntgration;

class FrontController extends Controller
{

  public function index(Request $request)
  {

    if ($request->has('OpID')) {
      session()->put('current_op_id', $request->get('OpID'));
    }

    $latest = Video::select('*', 'contents.id as content_id');
    if (request()->has('OpID') && request()->get('OpID') != '') {
      $latest = $latest->join('posts', 'posts.video_id', '=', 'contents.id')
        ->where('posts.operator_id', request()->get('OpID'))
        ->join('services', 'services.id', '=', 'contents.service_id')
        ->join('providers', 'providers.id', '=', 'services.provider_id')
        ->where('posts.slider', 1)
        ->where('posts.show_date', '<=', \Carbon\Carbon::now()->format('Y-m-d'));
    } else {
      $latest = $latest->latest('contents.created_at');
    }

    // $latest = $latest->join('services','services.id','=','contents.service_id')
    //           ->join('providers','providers.id','=','services.provider_id')
    //           ->where('providers.id',26);

    // $ramdan = $latest ;

    if (!$latest->count()) {
      $latest = $latest->orWhereNotNull('providers.id')->groupBy('service_id');
    }

    $latest = $latest->whereIn('contents.type', [1, 3])->limit(3)->get(); // video or images


    $health = Video::select('*', 'contents.id as content_id');
    if (request()->has('OpID') && request()->get('OpID') != '') {
      $health = $health->join('posts', 'posts.video_id', '=', 'contents.id')
        ->where('posts.operator_id', request()->get('OpID'))
        ->join('services', 'services.id', '=', 'contents.service_id')
        ->join('providers', 'providers.id', '=', 'services.provider_id')
        ->where('providers.id', 28)
        ->where('posts.slider', 1)
        ->where('posts.show_date', '<=', \Carbon\Carbon::now()->format('Y-m-d'));
    }

    $health = $health->get();


    return view('front.home', compact('latest', 'health'));
  }

  public function services(Request $request)
  {
    $services = Service::select('services.*', 'services.id as service_id');
    $provider = null;
    if (request()->has('OpID') && request()->get('OpID') != '') {
      $services = $services->whereHas('videos', function ($q) {
        $q->join('posts', 'posts.video_id', '=', 'contents.id')
          ->where('posts.operator_id', request()->get('OpID'))
          ->where('posts.show_date', '<=', \Carbon\Carbon::now()->format('Y-m-d'));
      });
    }
    if ($request->has('provider_id') && $request->provider_id != '') {
      $services = $services->where('provider_id', $request->provider_id);
      $provider = Provider::whereId($request->provider_id)->first();
    }

    if ($request->has('search') && $request->search != '') {
      $services = $services->join('translatables', 'translatables.record_id', '=', 'services.id')
        ->join('tans_bodies', 'tans_bodies.translatable_id', 'translatables.id')
        ->where('translatables.table_name', 'services')
        ->where('translatables.column_name', 'title')
        ->where(function ($q) use ($request) {
          $q->where('services.title', 'like', '%' . $request->search . '%');
          $q->orWhere('tans_bodies.body', 'like', '%' . $request->search . '%');
        });
    }
    $services = $services->orderBy('services.index', 'asc')->get();
    return view('front.service', compact('services', 'provider'));
  }

  public function contents(Request $request)
  {

      $service = '';
      if (request()->has('OpID') && request()->get('OpID') != '') {
      $contents = Video::select('*', 'contents.id as content_id','posts.free');
      }else{
        $contents = Video::select('*', 'contents.id as content_id');
      }
      if ($request->has('service_id') && $request->service_id != '') {
      $contents = $contents->where('service_id', $request->service_id);
      $service = Service::find($request->service_id);
    }
    if (request()->has('OpID') && request()->get('OpID') != '') {
      $content = $contents->join('posts', 'posts.video_id', '=', 'contents.id')
        ->where('posts.operator_id', request()->get('OpID'))
        ->where('posts.show_date', '<=', Carbon::now()->toDateString());
    }
    if ($request->has('search') && $request->search != '') {
      $contents = $contents->join('translatables', 'translatables.record_id', '=', 'contents.id')
        ->join('tans_bodies', 'tans_bodies.translatable_id', 'translatables.id')
        ->where('translatables.table_name', 'contents')
        ->where('translatables.column_name', 'title')
        ->where(function ($q) use ($request) {
          $q->where('contents.title', 'like', '%' . $request->search . '%');
          $q->orWhere('tans_bodies.body', 'like', '%' . $request->search . '%');
        });
    }
    // dd($contents);
    $contents = $contents->groupBy('contents.id')->orderBy('contents.index', 'asc')->limit(get_pageLength())->get();

    if (!request()->has('OpID') && !get_setting('enable_testing')) {
      return view('errors.404');
    }

    return view('front.list_content', compact('contents', 'service'));
  }

  public function load_contents(Request $request)
  {
    $contents = Video::select('*', 'contents.id as content_id');
    if ($request->has('service_id') && $request->service_id != '') {
      $contents = $contents->where('service_id', $request->service_id);
    }
    if (request()->has('OpID') && request()->get('OpID') != '') {
      $content = $contents->join('posts', 'posts.video_id', '=', 'contents.id')
        ->where('posts.operator_id', request()->get('OpID'))
        ->where('posts.show_date', '<=', Carbon::now()->format('Y-m-d'));
    }
    if ($request->has('search') && $request->search != '') {
      $contents = $contents->where('contents.title', 'like', '%' . $request->search . '%');
    }

    $contents = $contents->groupBy('contents.id')->orderBy('contents.index', 'asc')->offset($request->start)->limit(get_pageLength())->get();

    $view = view('front.load_content', compact('contents'))->render();
    return Response(array('html' => $view));
  }

  public function view_content($id, Request $request)
  {

    $current_url =    \Request::fullUrl();
    session()->put('current_url', $current_url);

    $view_coming_post = get_setting('view_coming_post');
    $enable = get_setting('enable_testing');
    $content = Video::select('contents.*', 'contents.id as content_id');
    // if ($view_coming_post) {
    //   $content = $content->whereId($id)->first();
    // } else {
      if ($request->has('OpID') && $request->OpID != '') {
        $content = Video::select('contents.*', 'contents.id as content_id', 'posts.free');
        $content = $content->join('posts', 'posts.video_id', '=', 'contents.id')
          ->where('posts.show_date', '<=', Carbon::now()->toDateString())
          ->where('posts.operator_id', $request->OpID)
          ->where('contents.id', $id)
          ->latest()->first();
      } else {
        $content = $content->whereId($id)->latest()->first();
      }
    // }
    if (!$content) {
      return view('errors.404');
    }
    $contents = video::select('contents.*', 'contents.id as content_id')
      ->where('contents.service_id', $content->service->id)
      ->whereNotIn('contents.id', [$content->id]);
    if ($request->OpID) {
      $contents = $contents->join('posts', 'posts.video_id', '=', 'contents.id')
        ->where('posts.operator_id', $request->OpID)
        ->where('posts.show_date', '<=', Carbon::now()->toDateString());
    }
    $contents = $contents->orderBy('contents.index', 'asc')->limit(4)->get();

    if ($request->has('OpID') && $request->OpID == stc) {  // enable testing from backend
      if ($enable || (session()->get('stc_op_id') == stc && session()->get('status') == 'active' && session()->has('MSISDN'))) {
        return view('front.inner_enable_testing', compact('content', 'contents'));
      }
      return redirect('landing_stc');
    }

    if ($request->has('OpID') && $request->OpID == ooredoo) {  // enable testing from backend
      if ($enable || (session()->get('ooredoo_op_id') == ooredoo && session()->get('status') == 'active' && session()->has('MSISDN'))) {
        return view('front.inner_enable_testing', compact('content', 'contents'));
      }
      return redirect('ooredoo_q_login');
    }

    if ($request->has('OpID') && $request->OpID == imi_op_id()) {  // enable testing from backend
      if ($enable || (session()->get('imi_op_id') == imi_op_id() && session()->get('status') == 'active' && session()->has('MSISDN'))) {
        return view('front.inner_enable_testing', compact('content', 'contents'));
      }
      return redirect('imi/login');
    }
    if($request->has('OpID') && $request->OpID == MBC_OP_ID){  //mbc
      $enable_free = get_setting('enable_free');
        if($enable || $content->free || (session()->get('mbc_op_id') == MBC_OP_ID && session()->get('status') == 'active' && session()->has('MSISDN'))){
          if($enable_free == "1" || (session()->has('MSISDN') && $this->checkStatus(session()->get('MSISDN'),2))){
          return view('front.inner_enable_testing', compact('content','contents'));
          }
        }
      return redirect('mbc_portal_landing');
    }



    if($request->has('OpID') && $request->OpID == orange){  //mbc
          return view('front.inner_enable_testing', compact('content','contents'));
    }


    // if($request->has('OpID') && $request->OpID == omantel){ // test omantel inner
    //     return view('front.inner', compact('content', 'contents'));
    // }





    if ($request->has('userToken')) { // subscribe for the first time


      //   session()->put('userToken',$request->get('userToken'));

      if ($request->OpID == omantel) {
        session()->put('userToken_omantel', $request->get('userToken'));
      } elseif ($request->OpID == du) {
        session()->put('userToken_du', $request->get('userToken'));
      }


      $userToken = $request->userToken;
      $refreshToken = $request->refreshToken;
      $expiresIn = $request->expiresIn;
      $status = $request->status;
    } else { // login for scond time
      if (session()->has('userToken_omantel') && session()->get('userToken_omantel') != '') { // if our server session is expire
        $userToken_omantel =  session()->get('userToken_omantel');
      } elseif (session()->has('userToken_du') && session()->get('userToken_du') != '') {
        $userToken_du =  session()->get('userToken_du');
      } else { // make Mondia login again by create new token
        if ($request->OpID == omantel) {
          return redirect(url("/omantel/redirect?redirect_url=" . $current_url));
        } elseif ($request->OpID == du) {
          return redirect(url("/du_redirect?redirect_url=" . $current_url));
        }
      }
    }




    if ($request->OpID == omantel) {
      session()->put('OpID', omantel);

      $response = $this->check_status(session()->get('userToken_omantel'));
      if (empty($response)) {
        // return $this->pin_code($userToken);
        session()->put('status', 'not_active');
        session()->put('menu_unsub_omantel', 'not_active');
        return view('front.inner_confirm', compact('content', 'contents'));
      } else {
        session()->put('status', 'active');
        session()->put('menu_unsub_omantel', 'active');

        $subscriber['check_status_id'] = session()->get('check_status_id');

        $subCheck = MondiaSubscriber::where('check_status_id', $subscriber['check_status_id'])->where('operator_id', omantel)->first();

        if (!$subCheck) {
          $subscriber['operator_id'] = omantel;

          MondiaSubscriber::create($subscriber);
        }

        return view('front.inner', compact('content', 'contents'));
      }
    }

    if ($request->OpID == du) {
      session()->put('OpID', du);
      $response = $this->du_check_status(session()->get('userToken_du'));


      if (empty($response)) {
        // return $this->du_pin_code($userToken);
        session()->put('status', 'not_active');
        session()->put('menu_unsub_du', 'not_active');
        return view('front.inner_confirm', compact('content', 'contents'));
      } else {
        session()->put('status', 'active');
        session()->put('menu_unsub_du', 'active');

        $subscriber['check_status_id'] = session()->get('check_status_id');

        $subCheck = MondiaSubscriber::where('check_status_id', $subscriber['check_status_id'])->where('operator_id', du)->first();

        if (!$subCheck) {
          $subscriber['operator_id'] = du;

          MondiaSubscriber::create($subscriber);
        }

        return view('front.inner', compact('content', 'contents'));
      }
    }


    return view('front.inner', compact('content', 'contents'));
  }

  public function mbcTodayLink($msisdn)
  {
    // first post for mbc
    $content = Video::select('contents.*', 'contents.id as content_id', 'posts.free')
      ->join('posts', 'posts.video_id', '=', 'contents.id')
      ->where('posts.show_date', '<=', Carbon::now()->toDateString())
      ->where('posts.operator_id', MBC_OP_ID)
      ->where('posts.active', 1)
      ->orderBy('posts.show_date','desc')
      ->first();
    $contents = video::select('contents.*', 'contents.id as content_id')
      ->join('posts', 'posts.video_id', '=', 'contents.id')
     // ->where('contents.service_id', $content->service->id)
      ->whereNotIn('contents.id', [$content->id])
      ->where('posts.operator_id', MBC_OP_ID)
      ->where('posts.active', 1)
      ->where('posts.show_date', '<=', Carbon::now()->toDateString())
      ->orderBy('contents.index', 'asc')->limit(6)->get();
    $msisdn = $this->decryptMobileNumber($msisdn);
    if($this->checkStatus($msisdn,2)){
      session(['MSISDN' => $msisdn, 'status' => 'active', 'mbc_op_id' => MBC_OP_ID]);
      return view('front.inner_enable_testing', compact('content', 'contents'));
    }
    return redirect('mbc_portal_landing');
  }

  /**
   * Method decryptMobileNumber
   *
   * @param String $phone
   *
   * @return String
   */
  public function decryptMobileNumber($phone)
  {
    $key = 'arpuIvasKey' ;
    $key = hash('md5', $key, true);  // here key not fixed
    $iv = str_repeat(chr(0), 16);
    $mobile = openssl_decrypt($phone, 'aes-128-cbc', $key, 0, $iv);
    return $mobile;
  }

  /**
   * Method checkStatus
   *
   * @param String $msisdn
   * @param int $service_id
   *
   * @return Boolean
   */
  public function checkStatus($msisdn, $service_id)
  {

    $vars["msisdn"] = $msisdn;
    $vars["service_id"] = $service_id;

    $JSON = json_encode($vars);

    $actionName = "MBC Check Status";

    $URL = CHECKSUB_URL;
    $ReqResponse = $this->SendRequestPost($URL, $vars, ["Accept: application/json"]);
    $ReqResponse = json_decode($ReqResponse, true);

    //log request and response
    $result['request'] = $vars;
    $result['response'] = $ReqResponse;
    $result['date'] = date('Y-m-d H:i:s');

    return $ReqResponse;
  }

  public function search(Request $request)
  {
    $services = Service::select('services.*', 'services.id as service_id')
      ->join('translatables', 'translatables.record_id', '=', 'services.id')
      ->join('tans_bodies', 'tans_bodies.translatable_id', 'translatables.id')
      ->where('translatables.table_name', 'services')
      ->where('translatables.column_name', 'title')
      ->where(function ($q) use ($request) {
        $q->where('services.title', 'like', '%' . $request->search . '%');
        $q->orWhere('tans_bodies.body', 'like', '%' . $request->search . '%');
      });

    $contents = Video::select('contents.*', 'contents.id as content_id')
      ->join('translatables', 'translatables.record_id', '=', 'contents.id')
      ->join('tans_bodies', 'tans_bodies.translatable_id', 'translatables.id')
      ->where('translatables.table_name', 'contents')
      ->where('translatables.column_name', 'title')
      ->where(function ($q) use ($request) {
        $q->where('contents.title', 'like', '%' . $request->search . '%');
        $q->orWhere('tans_bodies.body', 'like', '%' . $request->search . '%');
      });

    if (request()->has('OpID') && request()->get('OpID') != '') {
      $content = $contents->join('posts', 'posts.video_id', '=', 'contents.id')
        ->where('posts.operator_id', request()->get('OpID'))
        ->where('posts.show_date', '<=', Carbon::now()->toDateString());
    }
    if (request()->has('OpID') && request()->get('OpID') != '') {
      $services = $services->whereHas('videos', function ($q) {
        $q->join('posts', 'posts.video_id', '=', 'contents.id')
          ->where('posts.operator_id', request()->get('OpID'))
          ->where('posts.show_date', '<=', \Carbon\Carbon::now()->format('Y-m-d'));
      });
    }

    $services = $services->groupBy('service_id')->get();
    $contents = $contents->groupBy('content_id')->get();
    return view('front.search_result', compact('services', 'contents'));
  }


  public function Omantel_send_pincode()
  {
    $userToken = session()->get('userToken_omantel');
    return $this->pin_code($userToken);
  }


  public function du_goto_pincode()
  {
    $userToken = session()->get('userToken_du');
    return $this->du_pin_code($userToken);
  }


  public function sebha(Request $request)
  {
    if(request()->filled("OpID") && request()->get("OpID") == mbc) {
      if(!(session()->get('mbc_op_id') == MBC_OP_ID && session()->get('status') == 'active' && session()->has('MSISDN'))) {
        return back();
      }
    }
    return view('front.sebha');
  }

  public function zakah(Request $request)
  {
    if (request()->get("OpID") == mbc || request()->get("OpID") == orange ) {
      return view('front.zakah_v2');
    }
    return view('front.zakah');
  }

  public function zakah_v2(Request $request)
  {
    return view('front.zakah_v2');
  }

  public function merath(Request $request)
  {
    return view('front.merath');
  }

  public function merath_calc(Request $request)
  {
    return view('front.merath_calc');
  }


  public function mosque(Request $request)
  {

    return view('front.mosque');
  }


  public function muslim_inner(Request $request)
  {

    session()->put('current_url', $request->crl_url);
    return view('front.muslim_inner_confirm');
  }

  // salah time
  public function salah_time()
  {
    $prayer_times = $this->prayTimesCal();
    $hjrri_date = $this->hjrri_date_cal();

    return view('front.salah_time', compact('prayer_times', 'hjrri_date'));
  }

  public function salah_time2(Request $request)
  {
    $timezone = $this->get_time_zone();

    $hjrri_date = $this->hjrri_date_cal();

    return view('front.salah_time2', compact('timezone', 'hjrri_date'));
  }

  public function get_time_zone()
  {
    $ip = !empty($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR'];
    $URL = 'http://www.geoplugin.net/php.gp?ip=' . $ip;
    $new_arr = unserialize(file_get_contents($URL));

    $actionName = 'Salah time';
    $url = url('/');

    if (!empty($new_arr['geoplugin_timezone'])) {
      $parameters_arr['Timezone'] = $new_arr['geoplugin_timezone'];
      $parameters_arr['Latitude'] = $new_arr['geoplugin_latitude'];
      $parameters_arr['Longitude'] = $new_arr['geoplugin_longitude'];

      $this->log_action($actionName, $url, $parameters_arr);

      $timezone = timezone_open($new_arr['geoplugin_timezone']);

      $datetime_eur = date_create("now", timezone_open("utc"));
      return timezone_offset_get($timezone, $datetime_eur) / 3600;
    } else {
      $parameters_arr['Timezone'] = ['default egypt'];
      $parameters_arr['Latitude'] = ['null'];
      $parameters_arr['Longitude'] = ['null'];

      $this->log_action($actionName, $url, $parameters_arr);

      return 2; // default egypt
    }
  }

  public function salah_time3(Request $request)
  {

    if ($request->has('OpID')) {
      session()->put('current_op_id', $request->get('OpID'));
    }

    $hjrri_date = $this->hjrri_date_cal();
    $prayer_times = $this->prayTimesCal_v2();

    if (request()->get('OpID') == mbc) {
    } else {
      $fajr = strtotime($prayer_times['الفجر']);
      $imsak = date("h:i a", strtotime('-10 minutes', $fajr));
      $prayer_times['امساك'] = $imsak;
    }



    if (request()->get('OpID') == 9) {
      foreach ($prayer_times as $key => $value) {
        $prayer_times[$key] = date("h:i a", strtotime('+1 minutes', strtotime($prayer_times[$key])));
      }
    }

    return view('front.salah_time', compact('prayer_times', 'hjrri_date'));
  }

  public function prayTimesCal()
  {
    $ip = !empty($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR'];
    $URL = 'http://www.geoplugin.net/php.gp?ip=' . $ip;
    // $new_arr = file_get_contents($URL );
    // $new_arr = curl_init($URL);
    // curl_setopt($new_arr, CURLOPT_HEADER, false);
    // curl_setopt($new_arr, CURLOPT_RETURNTRANSFER, true);
    // curl_setopt($new_arr, CURLOPT_HTTPHEADER, array("Content-type: application/json"));
    // curl_setopt($new_arr, CURLOPT_POST, true);
    // $result = curl_exec($new_arr);
    // curl_close($new_arr);
    $new_arr = unserialize(file_get_contents($URL));
    // echo "Latitude:".$new_arr['geoplugin_latitude']." and Longitude:".$new_arr['geoplugin_longitude'];
    // die;
    // dd($new_arr);
    if (isset($new_arr['geoplugin_latitude']) && isset($new_arr['geoplugin_longitude'])) {
      $latitude = $new_arr['geoplugin_latitude'];
      $longitude = $new_arr['geoplugin_longitude'];
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

  public function prayTimesCal_v2()
  {
    // $ip1       = "91.72.180.37";      //emirate
    //  $ip2       = "105.181.117.137";   //Egypt
    $ip3 =   "62.231.247.72"; //oman
    if (request()->get('OpID') == 9) {
      $location  =  $this->ip_info($ip3, "location");
    } else {
      $location  =  $this->ip_info('visitor', "location");
    }
    // return $location;
    if ($location['geoplugin_longitude'] || $location['geoplugin_latitude']) {
      $latitude = $location['geoplugin_latitude'];
      $longitude = $location['geoplugin_longitude'];
    } else {
      $latitude = "30";
      $longitude = "31";
    }

    try {
      $dtz = new \DateTimeZone($location['time_zone']);
    } catch (\Throwable $e) {
      $dtz = new \DateTimeZone('Africa/cairo');
    }

    $time_in_sofia = new \DateTime('now', $dtz);
    $offset = $dtz->getOffset($time_in_sofia) / (1 * 60 * 60);
    // return $offset;

    include(public_path('plugins/PrayTime.php'));
    $method = $location['country'] == 'Egypt' ? 5 : 4;
    $timeZone = $offset < 0 ? $offset : "+" . $offset;
    $date = strtotime(date("Y-n-j"));  // php date month and day without leading zero   ... Use j instead of d and n instead of m:

    $prayTime = new \PrayTime($method);
    $prayTime->timeFormat = 1;  // 12-hour format
    $times = $prayTime->getPrayerTimes($date, $latitude, $longitude, $timeZone);

    $prayer_times = array();
    foreach ($times as $key => $value) {
      if ($prayTime->timeNames_ar[$key] == "Sunset") {
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

    if (session()->has('current_op_id')  && session()->get('current_op_id') == omantel) {
      $current_date = date("Y-m-d", strtotime("-1 day"));
    } else {
      $current_date = date("Y-m-d");
    }


    $hijri = new \HijriDate(strtotime($current_date));

    $day = $hijri->get_day();
    $month = (getCode() == 'ar') ? $hijri->get_month_name_ar($hijri->get_month()) : $hijri->get_month_name($hijri->get_month());
    $year = $hijri->get_year();

    $hjrri_date_object = new \stdClass();
    $hjrri_date_object->day = $day;
    $hjrri_date_object->month = $month;
    $hjrri_date_object->year = $year;

    return $hjrri_date_object;
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

  public function list_azan($id, Request $request)
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

    $Url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/web/auth/dialog?access_token=$token&redirect=" . urlencode($request->redirect_url) . "&auto=false&authMode=AUTO&distributionChannel=APP";


    session()->put('success_url', $request->redirect_url);
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
    $current_url = session()->get('current_url');
    return redirect(url("/omantel/redirect?redirect_url=" . $current_url));
  }

  public function check_status($userToken)
  {

    $curl = curl_init();

    $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription?disableFiltering=false&subsTypeId=59160008&inclCancelled=false&inclSubscriptionType=false&subscriptionProvider=MONDIA_MEDIA";

    $headers = array(
      "accept: application/json",
      "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
      "Authorization: Bearer " . $userToken
    );

    $json = '';

    $response = $this->SendRequestGet($url, $json, $headers);
    $response = json_decode($response, true);


    if (isset($response['error']) && $response['error'] == "TOKEN_NOT_VALID") { // Token expire So create new one
      $current_url = session()->get('current_url');

      // make log
      $actionName = "Omantel Check Status with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      //  return redirect(url("/du_redirect?redirect_url=".$current_url)) ;
      $Url = url("/omantel/redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }


    if (isset($response['error']) && $response['error'] == "PARTNER_KEY_NOT_MATCHES") { // after switch between Omantel and Du
      $current_url = session()->get('current_url');

      // make log
      $actionName = "Omantel Check Status with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      // return redirect("/du_redirect?redirect_url=".$current_url);
      $Url = url("/omantel/redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }


    if (isset($response[0]['id']) && $response[0]['id'] != "") {
      $check_status_id = $response[0]['id'];
      session()->put('check_status_id', $response[0]['id']);
    } else {
      $check_status_id = "";
    }

    // make log
    $actionName = "Omantel Check Status";
    $parameters_arr = array(
      'token' => $userToken,
      'date' => Carbon::now()->format('Y-m-d H:i:s'),
      'headers' => $headers,
      'response' => $response,
      'check_status_id' => $check_status_id,
    );
    $this->log_action($actionName, $url, $parameters_arr);

    if (!empty($response)) {
      session()->put('check_status_id', $response[0]['id']);
      session()->put('userToken_omantel', $userToken);
    }

    return $response;
  }

  public function pin_code($userToken)
  {
    $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/subscribe/sendSubPin";

    $headers = array(
      "Content-Type: application/json",
      "accept: application/json",
      "X-MM-GATEWAY-KEY: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
      "Authorization: Bearer " . $userToken
    );

    $vars['subscriptionTypeId'] = 59160008;
    $vars['userAgent'] = 'IVAS';
    $vars['agency'] = 'IVAS';
    $json = json_encode($vars);

    $response = $this->SendRequestPost($url, $json, $headers);
    $response = json_decode($response, true);


    if (isset($response['error']) && $response['error'] == "TOKEN_NOT_VALID") { // Token expire So create new one
      $current_url = session()->get('current_url');

      // make log
      $actionName = "Omantel Check Status with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      //  return redirect(url("/du_redirect?redirect_url=".$current_url)) ;
      $Url = url("/omantel/redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }


    if (isset($response['error']) && $response['error'] == "PARTNER_KEY_NOT_MATCHES") { // after switch between Omantel and Du
      $current_url = session()->get('current_url');

      // make log
      $actionName = "Omantel Check Status with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      // return redirect("/du_redirect?redirect_url=".$current_url);
      $Url = url("/omantel/redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }


    // make log
    $actionName = "Omantel Send PinCode";
    $parameters_arr = array(
      'userToken' => $userToken,
      'headers' => $headers,
      "response" => $response,
    );

    $this->log_action($actionName, $url, $parameters_arr);

    Session::put('requestId', $response['custRequestId']);
    Session::put('userToken', $userToken);

    //  $current_url =  session()->get('current_url');
    //  return redirect(url($current_url)) ;
    return redirect(route('front.pincode', ['OpID' => omantel]));
  }

  public function pincode(Request $request)
  {
    return view('front.pin_code');
  }

  public function verify_pin(Request $request)
  {
    $requestId = session('requestId');
    $userToken = session('userToken_omantel');
    $pin = $request->pincode;

    $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/subscribe/verifyPinAndSubscribe";

    $headers = array(
      "content-type: application/json",
      "accept: application/json",
      "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
      "Authorization: Bearer " . $userToken
    );

    $vars['requestId'] = $requestId;
    $vars['pin'] = $pin;
    $vars['refererLink'] = 'http://omantelmyworld.com';
    $vars['subscriptionTypeId'] = 59160008;

    $json = json_encode($vars);

    $response = $this->SendRequestPost($url, $json, $headers);
    $response = json_decode($response, true);


    if (isset($response['error']) && $response['error'] == "TOKEN_NOT_VALID") { // Token expire So create new one
      $current_url = session()->get('current_url');

      // make log
      $actionName = "Omantel Check Status with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      //  return redirect(url("/du_redirect?redirect_url=".$current_url)) ;
      $Url = url("/omantel/redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }


    if (isset($response['error']) && $response['error'] == "PARTNER_KEY_NOT_MATCHES") { // after switch between Omantel and Du
      $current_url = session()->get('current_url');

      // make log
      $actionName = "Omantel Check Status with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      // return redirect("/du_redirect?redirect_url=".$current_url);
      $Url = url("/omantel/redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }


    // make log
    $actionName = "Omantel Verify Pin";
    $parameters_arr = array(
      'userToken' => $userToken,
      'requestId' => $requestId,
      'pin' => $pin,
      'headers' => $headers,
      "response" => $response,
    );

    $this->log_action($actionName, $url, $parameters_arr);

    if ($response['responseCode'] == 670) {
      return back()->with('faild', 'not success pincode');
    }
    session()->put('status', 'active');
    return redirect(session()->get('current_url'));
  }

  public function delete_subscription(Request $request)
  {
    $userToken = session()->get('userToken_omantel');
    $check_status_id = session()->get('check_status_id');

    $url = "http://gateway.mondiamedia.com/omantel-om-lcm-v1/api/subscription/$check_status_id ";

    $headers = array(
      "accept: application/json",
      "x-mm-gateway-key: G703a1c14-0afb-7c9e-bcb3-2854e471f8e8",
      "authorization: Bearer $userToken"
    );

    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $url,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "DELETE",
      CURLOPT_HTTPHEADER => $headers,
    ));


    $response = curl_exec($curl);
    $err = curl_error($curl);
    curl_close($curl);

    $response = json_decode($response, true);


    if (isset($response['error']) && $response['error'] == "TOKEN_NOT_VALID") { // Token expire So create new one
      $current_url = session()->get('current_url');

      // make log
      $actionName = "Omantel Check Status For Delete with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      //  return redirect(url("/du_redirect?redirect_url=".$current_url)) ;
      $Url = url("/omantel/redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }


    if (isset($response['error']) && $response['error'] == "PARTNER_KEY_NOT_MATCHES") { // after switch between Omantel and Du
      $current_url = session()->get('current_url');

      // make log
      $actionName = "Omantel Check Status For Delete with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      // return redirect("/du_redirect?redirect_url=".$current_url);
      $Url = url("/omantel/redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }


    // make log
    $actionName = "Omantel Delete Subscription";
    $parameters_arr = array(
      'userToken' => $userToken,
      'check_status_id' => $check_status_id,
      "response" => $response,
    );
    $this->log_action($actionName, $url, $parameters_arr);


    // if(isset( $response['text']) && $response['text'] == "UNSUB_OK" ){ // Unsub succcess
    // session()->flush();
    Session::forget(['menu_unsub_omantel']);
    Session::flash('unsub_success', 'You are unsubscribe success');
    //  }else{
    //    Session::flash('unsub_fail', 'There is error in unsubscribe');
    //  }

    // Make Ubsub DB
    $subscriber = MondiaSubscriber::where('check_status_id', $check_status_id)->where('operator_id', omantel)->first();

    if ($subscriber) {
      $subscriber->destroy();
    }

    $unsubscriber['check_status_id'] = $check_status_id;
    $unsubscriber['operator_id'] = omantel;

    MondiaUnsubscriber::create($unsubscriber);


    return redirect("?OpID=9");
  }


  public function logout()
  {
    if (session()->has('OpID') && session()->get('OpID') != '') {
      $Url = url("/?OpID=" . session()->get('OpID'));
      // session()->flush();
      Session::forget(['userToken_omantel', 'menu_unsub_omantel']);
      return redirect($Url);
    } else {
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
      'headers' => $headers,
      'response' => $response,
    );

    $this->log_action($actionName, $url, $parameters_arr);

    return $response;
  }


  public function du_redirect(Request $request)
  {


    $token = $this->du_create_token()['accessToken'];
    $redirect_url = $request->redirect_url;
    $Url = "http://du-portal-lcm.mondiamedia.com/du-portal-lcm-v1/web/auth/dialog?access_token=$token&redirect=" . urlencode($request->redirect_url) . "&auto=false&authMode=AUTO&distributionChannel=APP";

    session()->put('success_url', $redirect_url);

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
      "Authorization: Bearer " . $userToken
    );

    $json = '';

    $response = $this->SendRequestGet($url, $json, $headers);
    $response = json_decode($response, true);

    // print_r($response); die;

    if (isset($response['error']) && $response['error'] == "TOKEN_NOT_VALID") { // Token expire So create new one
      $current_url = session()->get('current_url');
      //  return redirect(url("/du_redirect?redirect_url=".$current_url)) ;

      // make log
      $actionName = "DU Check Status with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'userToken' => $userToken,
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      $Url = url("/du_redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }

    if (isset($response['error']) && $response['error'] == "PARTNER_KEY_NOT_MATCHES") { // after switch between Omantel and Du
      $current_url = session()->get('current_url');

      // make log
      $actionName = "DU Check Status with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'userToken' => $userToken,
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      // return redirect("/du_redirect?redirect_url=".$current_url);
      $Url = url("/du_redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }


    if (isset($response[0]['id']) && $response[0]['id'] != "") {
      $check_status_id = $response[0]['id'];
      session()->put('check_status_id', $response[0]['id']);
    } else {
      $check_status_id = "";
    }

    // make log
    $actionName = "DU Check Status";
    $parameters_arr = array(
      'token' => $userToken,
      'date' => Carbon::now()->format('Y-m-d H:i:s'),
      'userToken' => $userToken,
      'headers' => $headers,
      'response' => $response,
      'check_status_id' => $check_status_id,
    );
    $this->log_action($actionName, $url, $parameters_arr);

    if (!empty($response)) {
      session()->put('check_status_id', $response[0]['id']);
      session()->put('userToken_du', $userToken);
    }
    return $response;
  }


  public function du_pin_code()
  {


    if (app()->getLocale() != NULL) {
      $current_lang = app()->getLocale();
    } else {
      $current_lang = "en";
    }

    if (app()->getLocale() == "ur") {
      $current_lang = "en";
    }


    $x = 12;

    $trxid = $randomNum = substr(str_shuffle("123456789123456789123456789"), 0, $x);

    $url = "http://pay-with-du.ae/16/mondiamedia/mondia-duelkheer-1-$current_lang-doi-web?serviceProvider=mondiamedia&serviceid=duelkheer&trxid=" . $trxid . "&redirectUrl=" . urlencode(session()->get('current_url'));

    // make log
    $actionName = "DU Send PinCode";
    $parameters_arr = array(
      'trxid' => $trxid,
    );

    $this->log_action($actionName, $url, $parameters_arr);

    return redirect($url);
  }

  public function du_delete_subscription_old(Request $request)
  {

    $userToken = session()->get('userToken');
    $check_status_id = session()->get('check_status_id');

    $url = "http://gateway.mondiamedia.com/du-portal-lcm-v1/api/subscription/$check_status_id";

    $headers = array(
      "accept: application/json",
      "x-mm-gateway-key: G94193561-6669-1626-76fd-b7b02fe6b216",
      "authorization: Bearer $userToken"
    );

    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $url,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "DELETE",
      CURLOPT_HTTPHEADER => $headers,
    ));
    $response = curl_exec($curl);
    $err = curl_error($curl);
    curl_close($curl);

    $response = json_decode($response, true);

    // make log
    $actionName = "DU Delete Subscription";
    $parameters_arr = array(
      'userToken' => $userToken,
      'check_status_id' => $check_status_id,
      'headers' => $headers,
      "response" => $response,
    );
    $this->log_action($actionName, $url, $parameters_arr);


    // session()->flush();
    Session::flash('unsub_success', 'You are unsubscribe success');
    return redirect("?OpID=10");
  }


  public function du_delete_subscription(Request $request)
  {

    $userToken = session()->get('userToken_du');
    $check_status_id = session()->get('check_status_id');

    $url = "http://gateway.mondiamedia.com/du-portal-lcm-v1/api/subscription/unsubscribe/56830063?sendSms=true";

    $headers = array(
      "accept: application/json",
      "x-mm-gateway-key: G94193561-6669-1626-76fd-b7b02fe6b216",
      "authorization: Bearer $userToken"
    );


    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $url,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "DELETE",
      CURLOPT_HTTPHEADER => $headers,
    ));
    $response = curl_exec($curl);
    $err = curl_error($curl);
    curl_close($curl);

    $response = json_decode($response, true);

    /*
          {
            "responseCode": 200,
            "text": "UNSUB_OK",
            "description": "Successfully unsubbed."
        }
        */


    if (isset($response['error']) && $response['error'] == "TOKEN_NOT_VALID") { // Token expire So create new one
      $current_url = session()->get('current_url');
      //  return redirect(url("/du_redirect?redirect_url=".$current_url)) ;

      // make log
      $actionName = "DU Check Status with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'userToken' => $userToken,
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);


      $Url = url("/du_redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }

    if (isset($response['error']) && $response['error'] == "PARTNER_KEY_NOT_MATCHES") { // after switch between Omantel and Du
      $current_url = session()->get('current_url');

      // make log
      $actionName = "DU Check Status with Error";
      $parameters_arr = array(
        'token' => $userToken,
        'date' => Carbon::now()->format('Y-m-d H:i:s'),
        'userToken' => $userToken,
        'headers' => $headers,
        'response' => $response,
        'error' => $response['error'],
      );
      $this->log_action($actionName, $url, $parameters_arr);

      // return redirect("/du_redirect?redirect_url=".$current_url);
      $Url = url("/du_redirect?redirect_url=" . $current_url);
      header("Location: $Url");
      die();
    }


    // make log
    $actionName = "DU Delete Subscription";
    $parameters_arr = array(
      'userToken' => $userToken,
      'check_status_id' => $check_status_id,
      'headers' => $headers,
      "response" => $response,
    );
    $this->log_action($actionName, $url, $parameters_arr);


    if (isset($response['text']) && $response['text'] == "UNSUB_OK") { // Unsub succcess
      // session()->flush();
      Session::forget(['menu_unsub_du']);
      Session::flash('unsub_success', 'You are unsubscribe success');

      // Unsub DB
      $subscriber = MondiaSubscriber::where('check_status_id', $check_status_id)->where('operator_id', du)->first();

      if ($subscriber) {
        $subscriber->destroy();
      }

      $unsubscriber['check_status_id'] = $check_status_id;
      $unsubscriber['operator_id'] = du;

      MondiaUnsubscriber::create($unsubscriber);
    } else {
      Session::flash('unsub_fail', 'There is error in unsubscribe');
    }

    return redirect("?OpID=10");
  }


  public function du_logout()
  {
    if (session()->has('OpID') && session()->get('OpID') != '') {

      $Url = url("/?OpID=" . session()->get('OpID'));
      // session()->flush();
      Session::forget(['userToken_du', 'menu_unsub_du']);
      return redirect($Url);
    } else {
      return redirect(url('/'));
    }
  }


  public function du_set_session()
  {
    session()->put('userToken', "U597c0e5b-c351-4044-9ce2-f99e39fcc671");
    echo session()->get('userToken');
  }

  public function Todayquran()
  {
    if (request()->get('OpID') == stc) {
      $ApiHandler = new ApiController();
      $latestpost = $ApiHandler->TodayStc();
      return view('front.today_stc', compact('latestpost'));
    } else {
      return view('errors.404');
    }
  }

  public function Latesquran()
  {
    if (request()->get('OpID') == stc) {
      $ApiHandler = new ApiController();
      $allVideo = $ApiHandler->LatestStc();
      return view('front.list_stc', compact('allVideo'));
    } else {
      return view('errors.404');
    }
  }

  public function landingquran($id)
  {
    if (request()->get('OpID') == stc) {
      $ApiHandler = new ApiController();
      $landingPost = $ApiHandler->InnerStc($id);
      $allVideo = $ApiHandler->LatestStc();
      return view('front.inner_stc', compact('landingPost', 'allVideo'));
    } else {
      return view('errors.404');
    }
  }

}
