@extends('front.master')
@section('page_title') Home @endsection
@section('content')
@php
    $count = (int)(count(provider_menu())/2);
    $menu  = provider_menu();
@endphp
<div class="col-md-12 col-lg-12 col-xl-9 col-12 no_padding close_nav">
    @include('front.search')

    @if(session()->has('unsub_success') && session()->get('unsub_success') != '')
    <div class="alert alert-success" role="alert">
      @lang('front.unsub_success')
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    @endif



    @if(session()->has('unsub_fail') && session()->get('unsub_fail') != '')
    <div class="alert alert-danger" role="alert">
      @lang('front.unsub_fail')
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    @endif

    <section class="img_carousel">
        <div class="owl_one owl-carousel owl-theme" dir="ltr">
        @foreach($latest as $content)
        <div class="item">
            <a class="owl_one_img w-100 link_href" href="{{route('front.inner',['id' => $content->content_id])}}">
            <img class="m-auto d-block" src="{{$content->type == 1 ? $content->image_preview : $content->video}}" alt="banner_slider">
            </a>

            <div class="btn_subscribe w-100">
                <button onclick="" class="btn text-capitalize">
                  <a class="link_href" href="{{route('front.inner',['id' => $content->content_id])}}">{{get_title($content->content_id)}}</a>
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
            <div class="col-6 p-0 padding_phones">
            <a class="link_title link_href" href="{{route('front.service',['provider_id' => $item->id])}}">
                <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
            </a>
            </div>

            <div class="col-6 padding_phones">
            <a href="{{route('front.service',['provider_id' => $item->id])}}" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
            </div>
        </div>
        </div>
        @if(count($item->services) == 1 || count($item->services) == 2)
        @foreach ($item->services as $service)
        <div class="col-md-4 col-lg-4 col-xl-2 col-4 p-0">
            <div class="item">
              <div class="card ovf-hidden rotate-in-center">
                <a class="owl_content_img view overlay link_href" href="{{route('front.list',['service_id' => $service->service_id])}}">
                  <img class="w-100" src="{{url($service->image)}}" alt="Card image cap">
                  <a>
                    <div class="mask waves-effect waves-light rgba-white-slight"></div>
                  </a>
                </a>

                <div class="card-body">
                  <h4 class="card-title text-capitalize">{{$service->getTranslation('title',getCode())}}</h4>
                </div>
              </div>
            </div>
        </div>
        @endforeach
        @else
        <div class="owl_one owl-carousel owl-theme" dir="ltr">
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
        @endif
    </section>
    @endforeach

    <section class="content_carousel">
        <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
            <div class="col-6 p-0 padding_phones">
            <a class="link_title" href="#">
                <h6 class="">@lang('front.muslim_guide')</h6>
            </a>
            </div>
        </div>
        </div>

        <div class="owl_content owl-carousel owl-theme" dir="ltr">
        <div class="item">
            <div class="card ovf-hidden">

              @if(  get_setting('enable_testing')  ||session()->has('check_status_id') && session()->has('status') && session()->get('status') == 'active')
              <a class="owl_content_img view overlay link_href" href="{{url('sebha')}}">
                @else
                <a class="owl_content_img view overlay link_href" href="{{route('front.muslim_inner',['crl_url' => url('sebha?OpID='.request()->get("OpID"))])}}">
                @endif

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

              @if(  get_setting('enable_testing')  ||session()->has('check_status_id') && session()->has('status') && session()->get('status') == 'active')
              <a class="owl_content_img view overlay link_href" href="{{url('mosque')}}">
                @else
                <a class="owl_content_img view overlay link_href" href="{{route('front.muslim_inner',['crl_url' => url('mosque?OpID='.request()->get("OpID"))])}}">
                @endif

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

              @if(  get_setting('enable_testing')  ||session()->has('check_status_id') && session()->has('status') && session()->get('status') == 'active')
              <a class="owl_content_img view overlay link_href" href="{{url('zakah')}}">
                @else
                <a class="owl_content_img view overlay link_href" href="{{route('front.muslim_inner',['crl_url' => url('zakah?OpID='.request()->get("OpID"))])}}">
                @endif

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


              @if(  get_setting('enable_testing')  ||session()->has('check_status_id') && session()->has('status') && session()->get('status') == 'active')
              <a class="owl_content_img view overlay link_href" href="{{url('merath')}}">
                @else
                <a class="owl_content_img view overlay link_href" href="{{route('front.muslim_inner',['crl_url' => url('merath?OpID='.request()->get("OpID"))])}}">
                @endif

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
              @if(  get_setting('enable_testing')  ||session()->has('check_status_id') && session()->has('status') && session()->get('status') == 'active')
              <a class="owl_content_img view overlay link_href" href="{{url('salah_time')}}">
                @else
                <a class="owl_content_img view overlay link_href" href="{{route('front.muslim_inner',['crl_url' => url('salah_time?OpID='.request()->get("OpID"))])}}">
                @endif

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
            <div class="col-6 p-0 padding_phones">
            <a class="link_title link_href" href="{{route('front.service',['provider_id' => $item->id])}}">
                <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
            </a>
            </div>

            <div class="col-6 padding_phones">
            <a href="{{route('front.service',['provider_id' => $item->id])}}" class="btn btn_more text-capitalize link_href">@lang('front.more')</a>
            </div>
        </div>
        </div>
        @if(count($item->services) == 1 || count($item->services) == 2)
        @foreach ($item->services as $service)
        <div class="col-md-4 col-lg-4 col-xl-2 col-4 p-0">
            <div class="item">
              <div class="card ovf-hidden rotate-in-center">
                <a class="owl_content_img view overlay link_href" href="{{route('front.list',['service_id' => $service->service_id])}}">
                  <img class="w-100" src="{{url($service->image)}}" alt="Card image cap">
                  <a>
                    <div class="mask waves-effect waves-light rgba-white-slight"></div>
                  </a>
                </a>

                <div class="card-body">
                  <h4 class="card-title text-capitalize">{{$service->getTranslation('title',getCode())}}</h4>
                </div>
              </div>
            </div>
        </div>
        @endforeach
        @else
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
        @endif
    </section>
    @endforeach
</div>
@stop
