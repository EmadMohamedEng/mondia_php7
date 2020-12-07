@extends('front.master')
@section('page_title') Home @endsection
@section('content')
@php
$count = (int)(count(provider_menu())/2);
$menu = provider_menu();
@endphp

@if(request()->get('OpID') == mbc  || request()->get('OpID') == orange  )
<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
  @else
  <div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">
    @endif

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

          @if(request()->get('OpID') == mbc)
          @if ($content->free == 1)
      @if( DB::table('settings')->where('key','like','%enable_free%')->first()->value  == "1")
          <div class="content_free text-center py-1">
            <span class="text-capitalize">@lang('front.free')</span>
          </div>
          @endif
          @endif
          @endif

          @if(request()->get('OpID') == mbc)
          <div class="btn_subscribe w-100">
            <button onclick="" class="btn btn-sm text-capitalize">
              <a class="link_href" href="{{route('front.inner',['id' => $content->content_id])}}">{{get_title($content->content_id)}}</a>
            </button>
          </div>
          @endif

          <div class="orange_svg w-100">
          <span class="trapezoid"></span>
          </div>
        </div>
        @endforeach
        @foreach($health as $content)
        <div class="item">
          <a class="owl_one_img w-100 link_href" href="{{route('front.inner',['id' => $content->content_id])}}">
            <img class="m-auto d-block" src="{{url($content->service->image)}}" alt="banner_slider">
          </a>

          @if ($content->free == 1)
          <div class="content_free text-center py-1">
            <span class="text-capitalize">free</span>
          </div>
          @endif

          <div class="btn_subscribe w-100">
            <button onclick="" class="btn btn-sm text-capitalize">
              <a class="link_href" href="{{route('front.inner',['id' => $content->content_id])}}">{{get_title($content->content_id)}}</a>
            </button>
          </div>
        </div>
        @endforeach
      </div>
    </section>

    <section class="content_carousel">
      <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
          <div class="col-6 padding_phones">
            <a class="link_title" href="#">
              <h6 class="">@lang('front.muslim_guide')</h6>
            </a>
          </div>
        </div>
      </div>

      @if(request()->get('OpID') == mbc)
      <div class="owl_content owl_content_two owl-carousel owl-theme" dir="ltr">
        @else
        <div class="owl_content owl_content_five owl-carousel owl-theme" dir="ltr">
        @endif
        <div class="item">
          <div class="card card_muslim_guid ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('sebha')}}">
              @if (request()->get("OpID") == 9)
              <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/oman/01.png')}}" alt="Card image cap">
              @elseif (request()->get("OpID") == mbc)
              <img class="w-100 img_muslim_guid" src="{{asset('front/images/mbc/Black/01.png')}}" alt="Card image cap">
              @elseif (request()->get("OpID") == orange)
              <img class="w-100 img_muslim_guid" src="{{asset('front/images/orange/04.png')}}" alt="Card image cap">
              @else
              <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/01.png')}}" alt="Card image cap">
              @endif

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

        <div class="item">
          <div class="card card_muslim_guid ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('mosque')}}">
              @if (request()->get("OpID") == 9)
              <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/oman/02.png')}}" alt="Card image cap">
              @elseif (request()->get("OpID") == mbc   )
              <img class="w-100 img_muslim_guid" src="{{asset('front/images/mbc/Black/02.png')}}" alt="Card image cap">
              @elseif (request()->get("OpID") == orange   )
              <img class="w-100 img_muslim_guid" src="{{asset('front/images/orange/08.png')}}" alt="Card image cap">
              @else
              <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/02.png')}}" alt="Card image cap">
              @endif
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
        @if (request()->get("OpID") == mbc)
        @else
          <div class="item">
            <div class="card card_muslim_guid ovf-hidden">
              <a class="owl_content_img view overlay link_href" href="{{url('zakah')}}">
                @if (request()->get("OpID") == 9)
                <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/oman/07.png')}}" alt="Card image cap">
                @elseif (request()->get("OpID") == mbc )
                <img class="w-100 img_muslim_guid" src="{{asset('front/images/mbc/Black/07.png')}}" alt="Card image cap">
                @elseif (request()->get("OpID") == orange )
                <img class="w-100 img_muslim_guid" src="{{asset('front/images/orange/07.png')}}" alt="Card image cap">

                @else
                <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/07.png')}}" alt="Card image cap">
                @endif
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
        @endif

        @if (request()->get("OpID") == 9)

        @elseif(request()->get("OpID") == ooredoo)

        @elseif(request()->get("OpID") == mbc)

        @else
        <div class="item">
          <div class="card card_muslim_guid ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('merath')}}">
              @if (request()->get("OpID") == 9)
              <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/oman/04.png')}}" alt="Card image cap">
              @elseif (request()->get("OpID") == mbc)
              <img class="w-100 img_muslim_guid" src="{{asset('front/images/mbc/Black/04.png')}}" alt="Card image cap">
              @elseif (request()->get("OpID") == orange)
              <img class="w-100 img_muslim_guid" src="{{asset('front/images/orange/02.png')}}" alt="Card image cap">
              @else
              <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/04.png')}}" alt="Card image cap">
              @endif
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
        @endif

        @if (request()->get("OpID") == mbc)
        @else
        <div class="item">
          <div class="card card_muslim_guid ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('salah_time')}}">
              @if (request()->get("OpID") == 9)
              <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/oman/03.png')}}" alt="Card image cap">
              @elseif (request()->get("OpID") == mbc)
              <img class="w-100 img_muslim_guid" src="{{asset('front/images/mbc/Black/03.png')}}" alt="Card image cap">
              @elseif (request()->get("OpID") == orange)
              <img class="w-100 img_muslim_guid" src="{{asset('front/images/orange/05.png')}}" alt="Card image cap">
              @else
              <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/03.png')}}" alt="Card image cap">
              @endif
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
        @endif


      </div>
    </section>


    @foreach ($menu->slice(0,$count) as $item)
    <section class="content_carousel">
      <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
          <div class="col-8 padding_phones">
            <a class="link_title link_href" href="{{route('front.service',['provider_id' => $item->id])}}">
              <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
            </a>
          </div>

          <div class="col-4 padding_phones">
            @if (request()->has('OpID') && request()->get('OpID') == 8)
            <a href="{{route('front.service',['provider_id' => $item->id])}}" style="border: 1px solid #FF6600;
                  background: transparent; border-radius: 5px;" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
            @else
            <a href="{{route('front.service',['provider_id' => $item->id])}}" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
            @endif
          </div>
        </div>
      </div>


      @php
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


      <div class="{{$owl_1}} owl-carousel owl-theme" dir="ltr">
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
    <section class="content_carousel">
      <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
          <div class="col-8 padding_phones">
            <a class="link_title link_href" href="{{route('front.service',['provider_id' => $item->id])}}">
              <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
            </a>
          </div>

          <div class="col-4 padding_phones">
            @if (request()->has('OpID') && request()->get('OpID') == 8)
            <a href="{{route('front.service',['provider_id' => $item->id])}}" style="border: 1px solid #FF6600;
                  background: transparent; border-radius: 5px;" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
            @else
            <a href="{{route('front.service',['provider_id' => $item->id])}}" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
            @endif

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

      <div class="{{$owl}} owl-carousel owl-theme" dir="ltr">
        @foreach ($item->services as $service)

        @if (request()->get("OpID") == 12 && $service->id == 40)
        <?php continue; ?>

        @endif
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
