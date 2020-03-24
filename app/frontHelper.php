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
        $opID = $_REQUEST['OpID'];

        $posts = Post::where('operator_id', $opID)->get();
        if (count($posts) > 0) {
            foreach ($posts as $post) {
                $contents = Video::where('id', $post->video_id)->get();
            }
            foreach ($contents as $content) {
                $services = Service::where('id', $content->service_id)->get();
            }
            foreach ($services as $service) {
                $provide_menu = Provider::where('id', $service->provider_id)->get();
            }
        } else {
            $provide_menu = [];
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
