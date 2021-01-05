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

@if(request()->get('OpID') == mbc || request()->get('OpID') == orange )
<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
@else
<div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">
@endif
    @include('front.search')
  <section class="list_page">
    <div class="content_carousel_head text-capitalize">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0 padding_phones">
        <a class="link_title link_href" href="{{route('front.search',['search' => request()->get('search')])}}">
          <h6 class="">@lang('front.service')</h6>
        </a>
      </div>
    </div>

    <div class="row m-0">
        @foreach ($services as $service)
        @if(request()->get('OpID') == mbc || request()->get('OpID') == orange  )
      <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
      @else
      <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-0">
      @endif
            <div class="item">
              <div class="card ovf-hidden">
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
    </div>

    <br>

    <div class="content_carousel_head text-capitalize mt-4">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0 padding_phones">
        <a class="link_title link_href" href="{{route('front.search',['search' => request()->get('search')])}}">
          <h6 class="">@lang('front.content')</h6>
        </a>
      </div>
    </div>

    <div class="row m-0">
        @foreach ($contents as $content)
        @if(request()->get('OpID') == mbc  || request()->get('OpID') == orange )
      <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
      @else
      <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-0">
      @endif
            <div class="item">
              <div class="card ovf-hidden">
                <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $content->content_id])}}">
                  @php
                      if($content->type == 1){
                        $src = $content->image_preview;
                      }elseif($content->type == 3){
                        $src = $content->video;
                      }elseif($content->type == 2){
                        $src = url('front\images\Cutting\Contnent_Page\001.png');
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
                  <h4 class="card-title text-capitalize">{{get_title($content->content_id)}}</h4>
                </div>
              </div>
            </div>
        </div>
        @endforeach
    </div>

    <br>
    @if(get_setting('filters_flag') == 1 && request()->get('OpID') == mbc)

    <div class="content_carousel_head text-capitalize mt-4">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0 padding_phones">
        <a class="link_title link_href" href="{{route('front.search',['search' => request()->get('search')])}}">
          <h6 class="">@lang('front.filters')</h6>
        </a>
      </div>
    </div>

    <div class="row m-0">
        @foreach ($filters as $filter)
        @if(request()->get('OpID') == mbc )
      <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
      @else
      <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-0">
      @endif
            <div class="item">
              <div class="card ovf-hidden">
                <a class="owl_filter_img view overlay link_href" href="{{route('front.filter_inner',['id' => $filter->filter_id])}}">
                  <img class="w-100" src="{{url('uploads/filters/'.$filter->image)}}" alt="Card image cap">
                  <a>
                    <div class="mask waves-effect waves-light rgba-white-slight"></div>
                  </a>
                </a>

                <div class="card-body">
                  <h4 class="card-title text-capitalize">{{$filter->getTranslation('title',getCode())}}</h4>
                </div>
              </div>
            </div>
        </div>
        @endforeach
    </div>

    @endif
  </section>
</div>

@stop
