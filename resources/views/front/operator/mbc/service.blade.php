@extends('front.master')
@section('page_title')
@if(request()->has('provider_id') && request()->get('provider_id') != '')
{{$provider->getTranslation('title',getCode())}}
@endif
@if(request()->has('search') && request()->get('search') != '')
{{request()->get('search') }}
@endif
@endsection
@section('content')

<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
  @include('front.search')
  @if($services)
  @foreach ($services as $service)
  @php
  $mbcContent = get_content_mbc(session()->get('subscription_day'), $service);
  @endphp
  @if(count($mbcContent) > 0)
  <section class="list_page content_carousel">
    <div class="content_carousel_head text-capitalize">
      <div class="row m-0">
        <div class="col-6 padding_phones">
          <a class="link_title link_href" href="{{route('front.list',['service_id' => $service->id])}}">
            <h6 class="">{{$service->getTranslation('title',getCode())}}</h6>
          </a>
        </div>

        <div class="col-6 padding_phones">
          <a href="{{route('front.list',['service_id' => $service->id])}}"
            class="btn btn_more text-capitalize link_href">@lang('front.more')</a>
        </div>
      </div>
    </div>

    @php
    $contents = get_content_mbc(session()->get('subscription_day'), $service);
    @endphp

    <div class="row m-0">
      @foreach ($contents as $item)
      <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-1">
          <div class="item">
            <div class="card ovf-hidden">
              <a class="owl_content_img view overlay link_href"
                href="{{route('front.inner',['id' => $item->content_id])}}">
                @php
                if($item->content->type == 1){
                $src = $item->content->image_preview;
                }elseif($item->content->type == 3){
                $src = $item->content->video;
                }elseif($item->content->type == 2){
                $src = $item->content->image_preview;
                }else{ // text defauly image
                $src = url('front\images\Cutting\Contnent_Page\004.png');
                }
                @endphp
                <img class="w-100" src="{{$src}}" alt="Card image cap">
                @if(request()->get('OpID') == mbc)
                @if ($item->free == 1)
                <div class="content_free text-center py-1">
                  <span class="text-capitalize">@lang('front.free')</span>
                </div>
                @endif
                @endif

                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <div class="card-body">
                <h4 class="card-title text-capitalize">{{get_title($item->content_id)}}</h4>
              </div>
            </div>
          </div>
        </div>
        @endforeach
      </div>
  </section>
  @endif
  @endforeach
{{-- if request provider --}}
  @else
{{-- else --}}
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
              <h4 class="card-title text-capitalize">{{$service->getTranslation('title',getCode())}} {{$service->id}}</h4>
            </div>
          </a>
        </div>
      </div>
      @endforeach
    </div>
  </section>
  @endforeach
  @endif
</div>

@stop
