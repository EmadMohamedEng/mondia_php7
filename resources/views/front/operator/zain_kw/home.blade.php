@extends('front.master')
@section('page_title') Home @endsection
@section('content')
@php
$count = (int)(count(provider_menu())/2);
$menu = provider_menu();
if($today_video) {
  if($today_video->type == 1){
    $src = $today_video->image_preview;
  }elseif($today_video->type == 3){
    $src = $today_video->video;
  }elseif($today_video->type == 2){
    $src = $today_video->image_preview;
  }else{ // text default image
    $src = url('front\images\Cutting\Contnent_Page\004.png');
  }
}

@endphp

<div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">

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

    @if($today_video)
    <section class="img_carousel">
      @if($today_video->type == 1)
        <video style="object-fit: fill;width:100%" poster="{{$src}}" controls controlsList="nodownload">
          <source src="{{url($today_video->video)}}" />
        </video>

        <div class="col-md-12 w-100 m-1 text-center p-2 text-black">
        <h6>{{get_title($today_video->content_id)}}</h6>
        </div>
        @endif

        @if($today_video->type == 2)
          <img class="img_cover rounded" src="{{$src}}" alt="Video Cover">
          <audio class="audio_cover" src="{{url($today_video->video)}}" controls controlsList="nodownload"></audio>
          <div class="col-md-12 w-100 m-1 text-center p-2 text-black">
          <h6>{{get_title($today_video->content_id)}}</h6>
          </div>
        @endif

        @if($today_video->type == 3)
        <img class="img_cover rounded" src="{{url($today_video->video)}}" alt="Video Cover">
        <div class="col-md-12 w-100 m-1 text-center p-2 text-black">
        <h6>{{get_title($today_video->content_id)}}</h6>
        </div>
        @endif

        @if($today_video->type == 4)
        <div class="col-md-12 w-100 m-1 text-center p-2 text-black">
          <h6>{!!$today_video->getTranslation('content_text',getCode())!!}</h6>
        </div>
      @endif
    </section>
    @endif

    <section class="content_carousel">
      <div class="content_carousel_head text-capitalize">
        <div class="row m-0">
          <div class="col-8 padding_phones">
            <a class="link_title" href="#">
              <h6 class="">@lang('front.muslim_guide')</h6>
            </a>
          </div>
          @if (request()->get("OpID") == orange)
          <div class="col-4 padding_phones">
            <a href="{{url('list_muslim')}}" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
          </div>
          @endif
        </div>
      </div>

      @if(request()->get('OpID') == mbc)
      <div class="owl_content owl_content_two owl-carousel owl-theme">
        @else
        <?php
        if(request()->get('OpID') == orange)
          $owl_c = 'owl_muslim_guide';
        else
          $owl_c = 'owl_content_five';
        ?>
        <div class="owl_content {{ $owl_c  }} owl-carousel owl-theme">
          @endif
          <div class="item item_muslim">
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

          <div class="item item_muslim">
            <div class="card card_muslim_guid ovf-hidden">
              <a class="owl_content_img view overlay link_href" href="{{url('mosque')}}">
                @if (request()->get("OpID") == 9)
                <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/oman/02.png')}}" alt="Card image cap">
                @elseif (request()->get("OpID") == mbc )
                <img class="w-100 img_muslim_guid" src="{{asset('front/images/mbc/Black/02.png')}}" alt="Card image cap">
                @elseif (request()->get("OpID") == orange )
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
          <div class="item item_muslim">
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
          <div class="item item_muslim">
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
          <div class="item item_muslim">
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


    @foreach ($menu as $item)
    @php
        if($item->services->count() < 1)
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
            @if (request()->has('OpID') && request()->get('OpID') == 8)
            <a href="{{route('front.service',['provider_id' => $item->id])}}" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
            @else
            <a href="{{route('front.service',['provider_id' => $item->id])}}" class="btn btn_more text-capitalize link_href roll-in-top">@lang('front.more')</a>
            @endif
          </div>
        </div>
      </div>

      @php
      $owl_1 = 'owl_content_one';
      if(count($item->services) == 1){
      $owl_1 = 'owl_content_two';
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

  </div>
  @stop
