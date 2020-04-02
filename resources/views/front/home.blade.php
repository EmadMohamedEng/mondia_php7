@extends('front.master')
@section('page_title') Home @endsection
@section('content')
@php
    $count = (int)(count(provider_menu())/2);
    $menu  = provider_menu();
@endphp
<div class="col-md-12 col-lg-12 col-xl-9 col-12 no_padding close_nav">
    @include('front.search')
    <section class="img_carousel">
        <div class="owl_one owl-carousel owl-theme" dir="ltr">
        @foreach($latest as $content)
        <div class="item">
            <a class="owl_one_img w-100 link_href" href="{{route('front.inner',['id' => $content->content_id])}}">
            <img class="m-auto d-block" src="{{$content->type == 1 ? $content->image_preview : $content->video}}" alt="banner_slider">
            </a>

            <div class="btn_subscribe w-100">
                <button onclick="" class="btn text-capitalize">
                  <a href="{{route('front.inner',['id' => $content->content_id])}}">{{get_title($content->content_id)}}</a>
                </button>
            </div>
        </div>
        @endforeach
        </div>
    </section>

    @foreach ($menu->slice(0,$count) as $item)
    <section class="content_carousel">
        <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
            <div class="col-6 p-0">
            <a class="link_title link_href" href="{{route('front.service',['provider_id' => $item->id])}}">
                <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
            </a>
            </div>

            <div class="col-6 no_padding">
            <a href="{{route('front.service',['id' => $item->id])}}" class="btn btn_more text-capitalize link_href">@lang('front.more')</a>
            </div>
        </div>
        </div>

        <div class="owl_content owl-carousel owl-theme" dir="ltr">
        @foreach ($item->services as $service)
        <div class="item">
            <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{route('front.list',['service_id' => $service->id])}}">
                <img class="w-100" src="{{url($service->image)}}" alt="{{$service->getTranslation('title',getCode())}}">
                <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
            </a>

            <div class="card-body">
                <h4 class="card-title text-capitalize">{{$service->getTranslation('title',getCode())}}</h4>
            </div>
            </div>
        </div>
        @endforeach
        </div>
    </section>
    @endforeach

    <section class="content_carousel">
        <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
            <div class="col-6 p-0">
            <a class="link_title" href="#">
                <h6 class="">@lang('front.muslim_guide')</h6>
            </a>
            </div>
        </div>
        </div>

        <div class="owl_content owl-carousel owl-theme" dir="ltr">
        <div class="item">
            <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('sebha')}}">
                <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/01.png')}}" alt="Card image cap">
                <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
            </a>

            <div class="card-body">
                <h4 class="card-title text-capitalize">@lang('front.sebha')</h4>
            </div>
            </div>
        </div>

        <div class="item">
            <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('mosque')}}">
                <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/02.png')}}" alt="Card image cap">
                <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
            </a>

            <div class="card-body">
                <h4 class="card-title text-capitalize">@lang('front.mosque')</h4>
            </div>
            </div>
        </div>

        <div class="item">
            <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('zakah')}}">
                <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/07.png')}}" alt="Card image cap">
                <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
            </a>

            <div class="card-body">
                <h4 class="card-title text-capitalize">@lang('front.zakah')</h4>
            </div>
            </div>
        </div>

        <div class="item">
            <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('merath')}}">
                <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/04.png')}}" alt="Card image cap">
                <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
            </a>

            <div class="card-body">
                <h4 class="card-title text-capitalize">@lang('front.merath')</h4>
            </div>
            </div>
        </div>

        <div class="item">
            <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('salah_time')}}">
                <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/03.png')}}" alt="Card image cap">
                <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
            </a>

            <div class="card-body">
                <h4 class="card-title text-capitalize">@lang('front.prayer')</h4>
            </div>
            </div>
        </div>
        </div>
    </section>

    @foreach ($menu->slice($count,count($menu)) as $item)
    <section class="content_carousel">
        <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
            <div class="col-6 p-0">
            <a class="link_title link_href" href="{{route('front.service',['provider_id' => $item->id])}}">
                <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
            </a>
            </div>

            <div class="col-6 no_padding">
            <a href="{{route('front.service',['id' => $item->id])}}" class="btn btn_more text-capitalize link_href">@lang('front.more')</a>
            </div>
        </div>
        </div>

        <div class="owl_content owl-carousel owl-theme" dir="ltr">
        @foreach ($item->services as $service)
        <div class="item">
            <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{route('front.list',['service_id' => $service->id])}}">
                <img class="w-100" src="{{url($service->image)}}" alt="{{$service->getTranslation('title',getCode())}}">
                <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
            </a>

            <div class="card-body">
                <h4 class="card-title text-capitalize">{{$service->getTranslation('title',getCode())}}</h4>
            </div>
            </div>
        </div>
        @endforeach
        </div>
    </section>
    @endforeach
</div>
@stop
