<?php

use App\Setting;
use App\Post;
use App\Video;
use App\Service;
use App\Provider;

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
    $providers = Provider::where('title', 'not like', '%دليل المسلم%')->get();
    return $providers;
}

function provider_service($id)
{

    $services = $id;
    $services = Service::where('provider_id', $id)->get();
    return $services;
}

function provider_menu()
{
    if (isset($_REQUEST['OpID'])) {
        $provider_ids = Video::select('*','providers.id as provider_id')
        ->join('services','services.id','=','contents.service_id')
        ->join('providers','providers.id','=','services.provider_id')
        ->join('posts', 'posts.video_id', '=', 'contents.id')
        ->where('posts.operator_id', request()->get('OpID'))
        ->where('posts.show_date', '<=', \Carbon\Carbon::now()->format('Y-m-d'))
        ->pluck('provider_id');
        if(count($provider_ids)){
          $provide_menu = Provider::whereIn('id',$provider_ids)->get();
        } else {
            $provide_menu = Provider::where('id',0)->get();
        }
    } else {
        $provide_menu = get_providers();
    }
    return $provide_menu;
}

function get_pageLength(){
    $length = 5;
    if(get_setting('pageLength'))
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

function getCode(){
    $code = session()->get('applocale');
    return $code;
}
