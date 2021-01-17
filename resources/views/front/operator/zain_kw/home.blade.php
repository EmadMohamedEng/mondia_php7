@extends('front.master')
@section('page_title') Home @endsection
@section('content')
@php
$count = (int)(count(provider_menu())/2);
$menu = provider_menu();
@endphp

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
      <video class="rounded" width="100%" controls poster="{{url('orange_slider/Esm EL Nabi_1_snapshot.jpg')}}">
        <source src="{{url('orange_slider/Esm EL Nabi_1.mp4')}}" type="video/mp4">
        <source src="{{url('orange_slider/Esm EL Nabi_1.mp4')}}" type="video/ogg">
        Your browser does not support the video tag.
      </video>
    </section>

    <section class="content_carousel">
      <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
          <div class="col-8 padding_phones">
            <a class="link_title" href="#">
              <h6 class="">@lang('front.muslim_guide')</h6>
            </a>
          </div>
          <div class="col-4 padding_phones">
            <a href="{{url('list_muslim')}}" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
          </div>
        </div>
      </div>

        <?php
          $owl_c = 'owl_muslim_guide';
        ?>
        <div class="owl_content {{ $owl_c  }} owl-carousel owl-theme">
          <div class="item item_muslim">
            <div class="card card_muslim_guid ovf-hidden">
              <a class="owl_content_img view overlay link_href" href="{{url('sebha')}}">
                <img class="w-100 img_muslim_guid" src="{{asset('front/images/orange/04.png')}}" alt="Card image cap">
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
                <img class="w-100 img_muslim_guid" src="{{asset('front/images/orange/08.png')}}" alt="Card image cap">
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
          <div class="item item_muslim">
            <div class="card card_muslim_guid ovf-hidden">
              <a class="owl_content_img view overlay link_href" href="{{url('zakah')}}">
                <img class="w-100 img_muslim_guid" src="{{asset('front/images/orange/07.png')}}" alt="Card image cap">
                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a class="owl_content_img view overlay link_href" href="{{url('zakah')}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">@lang('front.zakah')</h4>
                </div>
              </a>
            </div>
          </div>

          <div class="item item_muslim">
            <div class="card card_muslim_guid ovf-hidden">
              <a class="owl_content_img view overlay link_href" href="{{url('merath')}}">
                <img class="w-100 img_muslim_guid" src="{{asset('front/images/orange/02.png')}}" alt="Card image cap">
                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a class="owl_content_img view overlay link_href" href="{{url('merath')}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">@lang('front.merath')</h4>
                </div>
              </a>
            </div>
          </div>

          <div class="item item_muslim">
            <div class="card card_muslim_guid ovf-hidden">
              <a class="owl_content_img view overlay link_href" href="{{url('salah_time')}}">
                <img class="w-100 img_muslim_guid" src="{{asset('front/images/orange/05.png')}}" alt="Card image cap">
                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a class="owl_content_img view overlay link_href" href="{{url('salah_time')}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">@lang('front.prayer')</h4>
                </div>
              </a>
            </div>
          </div>
        </div>
    </section>


    @foreach ($menu->slice(0,$count) as $item)
    @php
        if($item->services->count() < 2 && request()->get('OpID') == 8)
        continue;
    @endphp
    <section class="content_carousel">
      <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
          <div class="col-8 padding_phones">
            <a class="link_title link_href" href="{{route('front.service',['provider_id' => $item->id])}}">
              <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
            </a>
          </div>

          <div class="col-4 padding_phones">
            <a href="{{route('front.service',['provider_id' => $item->id])}}" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
          </div>
        </div>
      </div>

      @php
      $owl_1 = 'owl_content_one';
      if(count($item->services) == 1){
      $owl_1 = 'owl_content_one';
      }

      if(count($item->services) == 2){
      $owl_1 = 'owl_content_two';
      }

      if(count($item->services) == 3){
      $owl_1 = 'owl_content_three';
      }

      if(count($item->services) == 4){
      $owl_1 = 'owl_content_four';
      }

      if(count($item->services) >= 5){
      $owl_1 = 'owl_content_five';
      }
      @endphp


      <div class="{{$owl_1}} owl-carousel owl-theme">
        @foreach ($item->services as $service)
        <div class="item">
          <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{route('front.list',['service_id' => $service->id])}}">
              <img class="w-100" src="{{url($service->image)}}" alt="{{$service->getTranslation('title',getCode())}}">

              <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
              </a>
            </a>

            <a class="owl_content_img view overlay link_href" href="{{route('front.list',['service_id' => $service->id])}}">
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

    @foreach ($menu->slice($count,count($menu)) as $item)
    @php
        if($item->services->count() < 2 && request()->get('OpID') == 8){
          continue;
        }
    @endphp

    <section class="content_carousel">
      <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
          <div class="col-8 padding_phones">
            <a class="link_title link_href" href="{{route('front.service',['provider_id' => $item->id])}}">
              <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
            </a>
          </div>

          <div class="col-4 padding_phones">
            <a href="{{route('front.service',['provider_id' => $item->id])}}" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>

            {{-- <a href="{{route('front.service',['provider_id' => $item->id])}}" class="btn btn_more text-capitalize link_href">@lang('front.more')</a> --}}
          </div>
        </div>
      </div>

      @php
      if(count($item->services) == 1){
      $owl = 'owl_content_one';
      }

      if(count($item->services) == 2){
      $owl = 'owl_content_two';
      }

      if(count($item->services) == 3){
      $owl = 'owl_content_three';
      }

      if(count($item->services) == 4){
      $owl = 'owl_content_four';
      }

      if(count($item->services) >= 5){
      $owl = 'owl_content_five';
      }

      if($item->id == 23 && request()->get("OpID") == 12 ){// The Holy Quran and TIMWE

      $owl = 'owl_content_one';
      }

      @endphp

      <div class="{{$owl}} owl-carousel owl-theme">
        @foreach ($item->services as $service)

        <div class="item">
          <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{route('front.list',['service_id' => $service->id])}}">
              <img class="w-100" src="{{url($service->image)}}" alt="{{$service->getTranslation('title',getCode())}}">

              <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
              </a>
            </a>
            @if($service->provider_id != 27)
            <a class="owl_content_img view overlay link_href" href="{{route('front.list',['service_id' => $service->id])}}">
              <div class="card-body">
                <h4 class="card-title text-capitalize">{{$service->getTranslation('title',getCode())}}</h4>
              </div>
            </a>
            @endif
          </div>
        </div>
        @endforeach
      </div>
    </section>

    @endforeach
  </div>
  @stop
