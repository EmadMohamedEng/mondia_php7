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

@if(request()->get('OpID') == mbc)
<div class="col-md-12 col-lg-12 col-xl-12 col-12 no_padding close_nav">
@else
<div class="col-md-12 col-lg-12 col-xl-9 col-12 no_padding close_nav">
@endif
    @include('front.search')
  @foreach ($services as $service)
  @if(count($service->videos) > 0)
  <section class="list_page content_carousel">
    <div class="content_carousel_head text-capitalize">
      <div class="row m-0">
        <div class="col-6 p-0 padding_phones">
        <a class="link_title link_href" href="{{route('front.list',['service_id' => $service->id])}}">
            <h6 class="">{{$service->getTranslation('title',getCode())}}</h6>
        </a>
        </div>

        <div class="col-6 padding_phones">
        <a href="{{route('front.list',['service_id' => $service->id])}}" class="btn btn_more text-capitalize link_href">@lang('front.more')</a>
        </div>
      </div>
    </div>
    @php
        $contents = get_contents($service->id);
    @endphp
    <div class="row m-0">
      @foreach ($contents as $item)
      @if(request()->get('OpID') == mbc)
      <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-1">
      @else
      <div class="col-md-4 col-lg-4 col-xl-2 col-6 p-0">
      @endif
          <div class="item">
            <div class="card ovf-hidden">
              <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->content_id])}}">
                @php
                    if($item->type == 1){
                      $src = $item->image_preview;
                    }elseif($item->type == 3){
                      $src = $item->video;
                    }elseif($item->type == 2){
                      $src = $item->image_preview;
                    }else{ // text defauly image
                      $src = url('front\images\Cutting\Contnent_Page\004.png');
                    }
                @endphp
                <img class="w-100" src="{{$src}}" alt="Card image cap">
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
</div>

@stop
