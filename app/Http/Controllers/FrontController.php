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
        return view('front.index');
    }

    public function index_mobile()
    {
        return view('front.index_');
    }

    public function home(Request $request)
    {

        if ($request->has('OpID')) {
            $opID = $request->OpID;
            $main_video = Post::join('contents', 'contents.id', '=', 'posts.video_id')
                ->where('posts.operator_id', $opID)
                ->where('posts.show_date', '<=', date('y-m-d'))
                ->where('contents.type', 1)
                ->orderBy('contents.created_at', 'Desc')->first();
        } else {
            $main_video = Video::where('type', 1)
                ->where(function ($query) {
                    return $query->where('created_at', 'like', date('Y-m-d') . '%')
                        ->orWhere('created_at', '<=', date('Y-m-d'));
                })->orderBy('created_at', 'Desc')->first();
        }

        $providers = get_providers();
        $generalService = general_service();
        // dd($generalService);
        $topics = Service::orderByRaw("RAND()")->get();
        $hjrri_date = $this->hjrri_date_cal();
        $prayer_times = $this->prayTimesCal();
        $new_pt = array();
        $en = ['am', 'pm'];
        $ar = ['صباحا', 'مساء'];
        foreach ($prayer_times as $key => $value) {
            array_push($new_pt, str_replace($en, $ar, $value));
        }

        return view('front.home', compact('main_video', 'providers', 'generalService', 'topics', 'prayer_times', 'hjrri_date', 'new_pt'));
    }


    public function services($id)
    {

        $provider = Provider::FindOrFail($id);
        return view('front.services', compact('provider'));
    }

    public function contents($id, Request $request)
    {
        $service = Service::FindOrFail($id);
        $title = $service->title;
        if ($request->has('OpID')) {
            $opID = $request->OpID;
            $contents = Post::join('contents', 'contents.id', '=', 'posts.video_id')
            ->where('service_id', $id)
            ->where('posts.operator_id', $opID)
            ->where('posts.show_date', '<=', date('y-m-d'))
            ->get();
        } else {
            $enable_test = \DB::table('settings')->where('key', 'like', 'enable_testing')->first()->value;
            if ($enable_test == 1) {
                $contents = Video::where('service_id', $id)->get();
            } else {
                return view('errors.404');
            }
        }
        if ($service->type == 1) {
            return view('front.videos', compact('contents', 'title'));
        } elseif ($service->type == 2) {
            return view('front.audios', compact('contents', 'title'));
        } elseif ($service->type == 3) {
            return view('front.images_service', compact('contents', 'title'));
        }
    }

    public function view_content($id)
    {

        $content = Video::FindOrFail($id);
        $title = $content->service->title;
        $rbt = null;
        $prayer_times = $this->prayTimesCal();
        $hjrri_date = $this->hjrri_date_cal();
        if ($content->type == 1) {
            $rbt = Audio::where('video_id', $id)->first();
            return view('front.play_video', compact('content', 'title', 'prayer_times', 'hjrri_date', 'rbt'));
        } elseif ($content->type == 2) {
            return view('front.inner_audio', compact('content', 'title', 'prayer_times', 'hjrri_date'));
        } elseif ($content->type == 3) {
            return view('front.inner_image', compact('content', 'title'));
        }
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

    public function list_azan(Request $request)
    {
        if ($request->has('OpID')) {
            $opID = $request->OpID;
            $audios = Audio::where('provider_id', $request->id)->where('operator_id', $opID)->where('azan_flage', 1)->get();
        } else {
            $audios = Audio::where('provider_id', $request->id)->where('azan_flage', 1)->get();
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



    /* ======================= new landing =================== */

    public $front_view = "front.";
    // --------------Live -----------------//
    private $privateKey = "6g8UUH6mlUilXpOSssp8";
    private $publicKey = "fhCP5KoWwDET9G9N9odF";
    private $subscriptionPlanId = 514;
    private $service_name = "yallawaffar";
    public $customerAccountNumber = "customer159635721";
    private $status = "live";


    public function unsub(Request $request)
    {

        Session::forget('contract_id'); // to remove any contract_id from session
        Session::forget('phone_number'); // to remove any contract_id from session

        if (isset($_GET['operator_id']) && !empty($_GET['operator_id']))
            $operator_id = $_GET['operator_id'];
        return view('front.unsub', compact('operator_id', 'request'));
    }


    public function new_landing(Request $request)
    {
        // if (Session::has('phone_number') && Session::has('status') && Session::get('status') == "active") {
        //     return redirect('/');
        // }else{
        // header inrichemnt DETECT
        $result = array();
        // get client ip
        $ip = $_SERVER["REMOTE_ADDR"];

        if (filter_var(@$_SERVER['HTTP_X_FORWARDED_FOR'], FILTER_VALIDATE_IP))
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        if (filter_var(@$_SERVER['HTTP_CLIENT_IP'], FILTER_VALIDATE_IP))
            $ip = $_SERVER['HTTP_CLIENT_IP'];


        if (isset($_SERVER['HTTP_USER_AGENT'])) {
            $deviceModel = $_SERVER['HTTP_USER_AGENT'];
        } else {
            $deviceModel = "";
        }


        $country_from_ip = $this->ip_info("Visitor", "Country");
        $result['date'] = Carbon::now()->format('Y-m-d H:i:s');
        $result['ip'] = $ip;
        $result['country'] = $country_from_ip;
        $result['deviceModel'] = $deviceModel;
        $result['AllHeaders'] = $_SERVER;


        $actionName = "Hits";
        $URL = $request->fullUrl();
        $parameters_arr = $result;
        $this->log($actionName, $URL, $parameters_arr);  // log in

        return view($this->front_view . 'new_landing');
        //    }
    }

    function ip_info($ip = NULL, $purpose = "location", $deep_detect = TRUE)
    {
        $output = NULL;
        if (filter_var($ip, FILTER_VALIDATE_IP) === FALSE) {
            $ip = $_SERVER["REMOTE_ADDR"];
            if ($deep_detect) {
                if (filter_var(@$_SERVER['HTTP_X_FORWARDED_FOR'], FILTER_VALIDATE_IP))
                    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
                if (filter_var(@$_SERVER['HTTP_CLIENT_IP'], FILTER_VALIDATE_IP))
                    $ip = $_SERVER['HTTP_CLIENT_IP'];
            }
        }
        $purpose = str_replace(array("name", "\n", "\t", " ", "-", "_"), NULL, strtolower(trim($purpose)));
        $support = array("country", "countrycode", "state", "region", "city", "location", "address");
        $continents = array(
            "AF" => "Africa",
            "AN" => "Antarctica",
            "AS" => "Asia",
            "EU" => "Europe",
            "OC" => "Australia (Oceania)",
            "NA" => "North America",
            "SA" => "South America"
        );
        if (filter_var($ip, FILTER_VALIDATE_IP) && in_array($purpose, $support)) {
            $ipdat = @json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=" . $ip));
            // dd($ipdat);
            if (@strlen(trim($ipdat->geoplugin_countryCode)) == 2) {
                switch ($purpose) {
                    case "location":
                        $output = array(
                            "city" => @$ipdat->geoplugin_city,
                            "state" => @$ipdat->geoplugin_regionName,
                            "country" => @$ipdat->geoplugin_countryName,
                            "country_code" => @$ipdat->geoplugin_countryCode,
                            "continent" => @$continents[strtoupper($ipdat->geoplugin_continentCode)],
                            "continent_code" => @$ipdat->geoplugin_continentCode
                        );
                        break;
                    case "address":
                        $address = array($ipdat->geoplugin_countryName);
                        if (@strlen($ipdat->geoplugin_regionName) >= 1)
                            $address[] = $ipdat->geoplugin_regionName;
                        if (@strlen($ipdat->geoplugin_city) >= 1)
                            $address[] = $ipdat->geoplugin_city;
                        $output = implode(", ", array_reverse($address));
                        break;
                    case "city":
                        $output = @$ipdat->geoplugin_city;
                        break;
                    case "state":
                        $output = @$ipdat->geoplugin_regionName;
                        break;
                    case "region":
                        $output = @$ipdat->geoplugin_regionName;
                        break;
                    case "country":
                        $output = @$ipdat->geoplugin_countryName;
                        break;
                    case "countrycode":
                        $output = @$ipdat->geoplugin_countryCode;
                        break;
                }
            }
        }
        return $output;
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




    public function get_content_post($URL, $param)
    {

        $content = json_encode($param);

        //   print_r($content); die;

        $ch = curl_init($URL);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-type: application/json"));
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $content);
        $result = curl_exec($ch);
        curl_close($ch);

        return $result;
    }

    public function JICindex()
    {
        return view('JIC.index');
    }
    public function logoutadmin(Request $request)
    {
        Session::flush();
        return redirect('/login');
    }


    public function du_landing(request $request)
    {
        $peroid = isset($request->peroid)  ?  $request->peroid  : "daily";
        $lang =  isset($request->lang) ? $request->lang : "ar";
        return view('landing_v2.du_landing', compact("peroid", "lang"));
    }

    public function du_landing_success()
    {
        date_default_timezone_set("Africa/Cairo");
        $URL = \Request::fullUrl();
        // make log
        $actionName = "DU SecureD Pincode Success";
        $parameters_arr = array(
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'URL' => $URL
        );
        $this->log($actionName, $URL, $parameters_arr);


        return view('landing_v2.du_landing_success');
    }

    public function DuSecureRedirect(request $request)
    {
        date_default_timezone_set("Africa/Cairo");

        if (isset($_REQUEST['number']) && $_REQUEST['number'] != "") {
            $msisdn = $_REQUEST['number'];
            $msisdn = "971" . $msisdn;
        } else {
            $msisdn = "";
        }


        require('uuid/UUID.php');
        $trxid = \UUID::v4();

        if (isset($_REQUEST['peroid']) && $_REQUEST['peroid'] != "") {
            $plan = $_REQUEST['peroid'];

            if ($plan  == "daily") {
                $serviceid = "duelkheirdaily";
                $price = 2;
                $num = 1;
            } elseif ($plan  == "weekly") {
                $serviceid = "duelkheirweekly";
                $price = 14;
                $num = 7;
            } else {
                $serviceid = "duelkheirdaily";
                $price = 2;
                $num = 1;
            }
        } else { // default is daily
            $serviceid = "duelkheirdaily";
            $plan = "daily";
            $price = 2;
            $num = 1;
        }


        if (isset($_REQUEST['lang']) && $_REQUEST['lang'] != "") {
            $local = $_REQUEST['lang'];
        } else { // default is arabic
            $local = "ar";
        }

        $redirectUrl =  url('/home');



        // activation api :   http://pay-with-du.ae/20/digizone/digizone-flaterdaily-1-ar-doi-web?origin=digizone&uid=971555802322&trxid=56833e8d-c21b-453b-9e2a-f33f20415ae2&serviceProvider=secured&serviceid=flaterdaily&plan=daily&price=2&locale=ar
        //  f5d1048a-995e-11e7-abc4-cec278b6b50a
        //http://pay-with-du.ae/20/digizone/digizone-{$serviceid}-{$num}-{$local}-doi-web?
        $URL = "http://pay-with-du.ae/20/digizone/digizone-{$serviceid}-{$num}-{$local}-doi-web?origin=digizone&uid=$msisdn&trxid=$trxid&serviceProvider=secured&serviceid=$serviceid&plan=$plan&price=$price&locale=$local&redirectUrl=";

        // make log
        $actionName = "DU SecureD Pincode Send";
        $parameters_arr = array(
            'date' => Carbon::now()->format('Y-m-d H:i:s'),
            'URL' => $URL
        );
        $this->log($actionName, $URL, $parameters_arr);

        $DuIntgration =    new DuIntgration();
        $DuIntgration->url = $URL;
        $DuIntgration->trxid = $trxid;
        $DuIntgration->uid = $msisdn;
        $DuIntgration->serviceid = $serviceid;
        $DuIntgration->plan = $plan;
        $DuIntgration->price = $price;
        $DuIntgration->local = $local;
        $DuIntgration->save();

        return redirect($URL);
    }
}
