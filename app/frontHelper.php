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
