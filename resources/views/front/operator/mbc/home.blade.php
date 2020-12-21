@extends('front.master')
@section('page_title') Home @endsection
@section('content')
<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">

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
          <img class="m-auto d-block"
            src="{{$content->content->type == 1 ? $content->content->image_preview : $content->content->video}}"
            alt="banner_slider">
        </a>

        @if ($content->content->free == 1)
        @if( DB::table('settings')->where('key','like','%enable_free%')->first()->value == "1")
        <div class="content_free text-center py-1">
          <span class="text-capitalize">@lang('front.free')</span>
        </div>
        @endif
        @endif

        <div class="btn_subscribe w-100">
          <button onclick="" class="btn btn-sm text-capitalize">
            <a class="link_href"
              href="{{route('front.inner',['id' => $content->content_id])}}">{{get_title($content->content_id)}}</a>
          </button>
        </div>
      </div>
      @endforeach
    </div>
  </section>
  @if(date('D') == 'Fri')
  <section class="content_carousel">
    <div class="content_carousel_head text-capitalize">
      <div class="row m-0">
        <div class="col-8 padding_phones">
          <a class="link_title" href="#">
            <h6 class="">@lang('front.muslim_guide')</h6>
          </a>
        </div>
      </div>
    </div>

    <div class="owl_content owl_content_two owl-carousel owl-theme" dir="ltr">
      <div class="item item_muslim">
        <div class="card card_muslim_guid ovf-hidden">
          <a class="owl_content_img view overlay link_href" href="{{url('sebha')}}">
            <img class="w-100 img_muslim_guid" src="{{asset('front/images/mbc/Black/01.png')}}" alt="Card image cap">

            <a>
              <div class="mask waves-effect waves-light rgba-white-slight"></div>
            </a>
          </a>

          <a class="owl_content_img view overlay link_href" href="{{url('sebha')}}">
            <div class="card-body">
              <h4 class="card-title text-capitalize">@lang('front.sebha')</h4>
            </div>
          </a>
        </div>
      </div>

      <div class="item item_muslim">
        <div class="card card_muslim_guid ovf-hidden">
          <a class="owl_content_img view overlay link_href" href="{{url('mosque')}}">
            <img class="w-100 img_muslim_guid" src="{{asset('front/images/mbc/Black/02.png')}}" alt="Card image cap">
            <a>
              <div class="mask waves-effect waves-light rgba-white-slight"></div>
            </a>
          </a>

          <a class="owl_content_img view overlay link_href" href="{{url('mosque')}}">
            <div class="card-body">
              <h4 class="card-title text-capitalize">@lang('front.mosque')</h4>
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>
  @endif

  @foreach (get_providers_mbc(session()->get('subscription_day')) as $item)
  <section class="content_carousel">
    <div class="content_carousel_head text-capitalize">
      <div class="row m-0">
        <div class="col-8 padding_phones">
          <a class="link_title link_href" href="{{route('front.service',['provider_id' => $item->id])}}">
            <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
          </a>
        </div>

        <div class="col-4 padding_phones">
          <a href="{{route('front.service',['provider_id' => $item->id])}}"
            class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
        </div>
      </div>
    </div>

    @php
    $services_foreach = get_service_mbc(session()->get('subscription_day'), $item);
    $count_services = count($services_foreach);
    if($count_services == 1){
    $owl_1 = 'owl_content_one';
    }

    if($count_services == 2){
    $owl_1 = 'owl_content_two';
    }

    if($count_services == 3){
    $owl_1 = 'owl_content_three';
    }

    if($count_services == 4){
    $owl_1 = 'owl_content_four';
    }

    if($count_services >= 5){
    $owl_1 = 'owl_content_five';
    }
    @endphp


    <div class="{{$owl_1}} owl-carousel owl-theme" dir="ltr">
      @foreach ($services_foreach as $service)
      <div class="item">
        <div class="card ovf-hidden">
          <a class="owl_content_img view overlay link_href"
            href="{{route('front.list',['service_id' => $service->id])}}">
            <img class="w-100" src="{{url($service->image)}}" alt="{{$service->getTranslation('title',getCode())}}">

            <a>
              <div class="mask waves-effect waves-light rgba-white-slight"></div>
            </a>
          </a>

          <a class="owl_content_img view overlay link_href"
            href="{{route('front.list',['service_id' => $service->id])}}">
            <div class="card-body">
              <h4 class="card-title text-capitalize">{{$service->getTranslation('title',getCode())}}</h4>
            </div>
          </a>
        </div>
      </div>
      @endforeach
    </div>
  </section>
  @endforeach

</div>
@stop
