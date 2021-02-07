<?php

use App\Post;
use App\Video;
use App\Service;
use App\Setting;
use App\Provider;
use App\MbcContent;

function get_setting($key)
{
    $value = '';
    $setting = Setting::where('key', $key)->first();
    if ($setting)
        $value = $setting->value;

    return $value;
}

function get_providers()
{

    $providers = null;
    $providers = Provider::where('title', 'not like', '%دليل المسلم%')->where('id', '<>', 28)->orderBy('index', 'asc')->get();
    return $providers;
}

function provider_service($id)
{

    $services = $id;
    $services = Service::where('provider_id', $id)->orderBy('index', 'asc')->get();
    return $services;
}

function provider_menu()
{
    if (isset($_REQUEST['OpID'])) {
        $provider_ids = Video::select('*', 'providers.id as provider_id')
            ->join('services', 'services.id', '=', 'contents.service_id')
            ->join('providers', 'providers.id', '=', 'services.provider_id')
            ->join('posts', 'posts.video_id', '=', 'contents.id')
            ->where('posts.operator_id', request()->get('OpID'))
            ->where('posts.show_date', '<=', \Carbon\Carbon::now()->format('Y-m-d'))
            ->pluck('provider_id');
        if (count($provider_ids)) {
            $provide_menu = Provider::whereIn('id', $provider_ids)->where('id', '<>', 28)->orderBy('index', 'asc')->get();
        } else {
            $provide_menu = Provider::where('id', '<>', 28)->orderBy('index', 'asc')->get();
        }
    } else {
        $provide_menu = get_providers();
    }
    return $provide_menu;
}

function get_pageLength()
{
    $length = 5;
    if (get_setting('pageLength'))
        $length = get_setting('pageLength');
    return $length;
}

function general_service()
{
    $generalProvider = Provider::where('title', 'like', '%دليل المسلم%')->first();
    $generalService = null;
    if ($generalProvider) {
        $generalService = Service::where('provider_id', $generalProvider->id)->get();
    }
    return $generalService;
}

function getCode()
{
    $code = session()->get('applocale');
    return $code;
}

function get_title($id)
{
    $content = Video::find($id);
    return $content->getTranslation('title', getCode());
}

function get_title_today_orange_link($id)
{
    $content = Video::find($id);
    return $content->getTranslation('title', "ar");
}

function get_salah($value, $lang)
{
    if (($lang == 'en' || $lang == '') && strpos($value, 'الظهر') !== false) {
        return 'Dhuhr';
    }
    if (($lang == 'en' || $lang == '') && strpos($value, 'العصر') !== false) {
        return 'Asr';
    }
    if (($lang == 'en' || $lang == '') && strpos($value, 'المغرب') !== false) {
        return "Maghrib";
    }
    if (($lang == 'en' || $lang == '') && strpos($value, 'العشاء') !== false) {
        return 'Isha';
    }
    if (($lang == 'en' || $lang == '') && strpos($value, 'الفجر') !== false) {
        return 'Al-fajr';
    }
    if (($lang == 'en' || $lang == '') && strpos($value, 'امساك') !== false) {
        return 'Al-Imsak';
    }
    if (($lang == 'en' || $lang == '') && strpos($value, 'الشروق') !== false) {
        return 'Sunrise';
    }

    if ($lang == 'ur' && strpos($value, 'الظهر') !== false) {
        return 'ظہر';
    }
    if ($lang == 'ur' && strpos($value, 'العصر') !== false) {
        return 'آسار';
    }
    if ($lang == 'ur' && strpos($value, 'مغرب') !== false) {
        return "مغرب";
    }
    if ($lang == 'ur' && strpos($value, 'العشاء') !== false) {
        return 'عشاء';
    }
    if ($lang == 'ur' && strpos($value, 'الفجر') !== false) {
        return 'الفجر';
    }
    if ($lang == 'ur' && strpos($value, 'امساك') !== false) {
        return 'غروب';
    }
    if ($lang == 'ur' && strpos($value, 'الشروق') !== false) {
        return 'طلوع آفتاب';
    }

    return $value;

}


function get_contents($id)
{
    $contents = Video::select('*', 'contents.id as content_id');
    if ($id) {
        $contents = $contents->where('service_id', $id);
    }
    if (request()->has('OpID') && request()->get('OpID') != '') {
        $content = $contents->join('posts', 'posts.video_id', '=', 'contents.id')
            ->where('posts.operator_id', request()->get('OpID'))
            ->where('posts.show_date', '<=', \Carbon\Carbon::now()->toDateString());
    }
    if (request()->has('search') && request()->get('search') != '') {
        $contents = $contents->join('translatables', 'translatables.record_id', '=', 'contents.id')
            ->join('tans_bodies', 'tans_bodies.translatable_id', 'translatables.id')
            ->where('translatables.table_name', 'contents')
            ->where('translatables.column_name', 'title')
            ->where(function ($q) {
                $q->where('contents.title', 'like', '%' . request()->get('search') . '%');
                $q->orWhere('tans_bodies.body', 'like', '%' . request()->get('search') . '%');
            });
    }

    $contents = $contents->orderBy('contents.index', 'asc')->limit(6)->get();

    return $contents;
}

function SendRequestPost($URL, $JSON, $headers)
{
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $URL);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 100);
    curl_setopt($ch, CURLOPT_TIMEOUT, 100);
    curl_setopt($ch, CURLOPT_VERBOSE, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $JSON);
    $sOutput = curl_exec($ch);
    curl_close($ch);

    return $sOutput;
}

function get_mbc_sub($msisdn)
{
    $vars["msisdn"] = $msisdn;
    $vars["service_id"] = 2;
    $sub = SendRequestPost(GU_CHECKSUB_URL, $vars, ["Accept: application/json"]);
    $sub = json_decode($sub);

    return $sub;
}

function get_providers_mbc($sub)
{
    if($sub->country == 'KSA' && $sub->operator == 'STC'){
      $sub_operator = 'ksa-stc';
    }else{
      $sub_operator = 'all';
    }

    $providers = Provider::select('providers.*')
        ->join('services', 'providers.id', 'services.provider_id')
        ->join('contents', 'services.id', 'contents.service_id')
        ->join('mbc_contents', 'contents.id', 'mbc_contents.content_id')
        ->where('mbc_contents.subscription_day', '<=', $sub->content)
        ->where('mbc_contents.operator', $sub_operator)
        ->groupBy('providers.id')
        ->get();

    return $providers;
}

function get_service_mbc($sub, $provider)
{
    if($sub->country == 'KSA' && $sub->operator == 'STC'){
      $sub_operator = 'ksa-stc';
    }else{
      $sub_operator = 'all';
    }

    $services = Service::select('services.*')
        ->join('providers', 'services.provider_id', 'providers.id')
        ->join('contents', 'services.id', 'contents.service_id')
        ->join('mbc_contents', 'contents.id', 'mbc_contents.content_id')
        ->where('mbc_contents.subscription_day', '<=', $sub->content)
        ->where('mbc_contents.operator', $sub_operator)
        ->where('providers.id', $provider->id)
        ->groupBy('services.id')
        ->get();

    return $services;
}

function get_content_mbc($sub, $service)
{
    if($sub->country == 'KSA' && $sub->operator == 'STC'){
      $sub_operator = 'ksa-stc';
    }else{
      $sub_operator = 'all';
    }

    $mbcContent = MbcContent::select('mbc_contents.*')
        ->join('contents', 'contents.id', 'mbc_contents.content_id')
        ->join('services', 'services.id', 'contents.service_id')
        ->where('mbc_contents.subscription_day', '<=', $sub->content)
        ->where('mbc_contents.operator', $sub_operator)
        ->where('services.id', $service->id)
        ->get();

    return $mbcContent;
}

function get_friday_mbc()
{
    $mbcContents = MbcContent::where('type', 'friday')->get();

    return $mbcContents;
}

function get_occasion_mbc()
{
    $occassion_date_format = date('Y-m-d');

    $mbcContent = MbcContent::where('occasion_date', $occassion_date_format)->get();

    return $mbcContent;
}

function filter_time($time){
  $arabic_number = array('٠','١','٢','٣','٤','٥','٦','٧','٨','٩');
  $english_number = array('0','1','2','3','4','5','6','7','8','9');
  if(getCode() == 'ar'){
    $time = str_replace('am','ص',$time);
    $time = str_replace('pm','م',$time);
    $time = str_replace($english_number, $arabic_number, $time);
  }
  return $time;
}

  /**
   * Method checkStatus
   *
   * @param string $msisdn
   *
   * @return Boolean
   */
  function checkStatus($msisdn)
  {
    $vars["msisdn"] = $msisdn;

    $JSON = json_encode($vars);

    $actionName = "Gu Check Status";

    $URL = GU_CHECKSUB_URL;
    $ReqResponse = SendRequestPost($URL, $vars, ["Accept: application/json"]);
    $ReqResponse = json_decode($ReqResponse);
    $status = 0;

    if($msisdn && $ReqResponse) {
      logGuInfo($ReqResponse, $URL, $msisdn);
      switch ($ReqResponse->status) {
        case 'ACTIVE':
          $status = 1;
          break;
        case 'NEW':
          $status =  1;
          break;
        default:
          $status =  0;
          break;
      }
    }
    return ['status' => $status , 'response' => $ReqResponse];
  }

  /**
   * Method logGuInfo
   *
   * @param mixed  $response
   * @param string $url
   * @param string $msisdn
   *
   * @return void
   */
  function logGuInfo($response, $url, $msisdn)
  {
    // dd($response);
    $data['url']      = $url;
    $data['msisdn']   = $msisdn;
    $data['response'] = json_encode($response);
    $data['country']  = $response->country;
    $data['operator'] = $response->operator;
    $data['status']   = $response->status;
    $data['day']      = $response->content;

    $gu_status = \App\GuCheckStatus::create($data);

    $data['gu_check_status_id'] = $gu_status->id;

    \App\GuSubscriber::updateOrCreate(['msisdn' => $data['msisdn']] ,Arr::except($data, ['url', 'response']));

  }

