@extends('front.master')
@section('page_title')
@if(request()->has('service_id') && request()->get('service_id') != '')
{{$service->getTranslation('title',getCode())}}
@else
{{request()->get('search')}}
@endif
@endsection
@section('content')
<style media="screen">
  .list_load {
    /* min-height: 700px; */
  }
</style>
<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
  @include('front.search')
  <section class="list_page">
    <div class="content_carousel_head text-capitalize">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones">
        @if(request()->has('service_id') && request()->get('service_id') != '')
        <a class="link_title link_href" href="{{route('front.list',['service_id' => request()->get('service_id')])}}">
          <h6 class="">{{$service->getTranslation('title',getCode())}}</h6>
        </a>
        @else
        <a class="link_title link_href" href="{{route('front.list',['search' => request()->get('search')])}}">
          <h6 class="">@lang('front.you_search_about') : {{request()->get('search')}}</h6>
        </a>
        @endif
      </div>
    </div>

    <div class="row m-0 list_load">
      @if(!count($contents))
      <div class="coming_soon text-center border-0 d-block m-auto p-2">
        @lang('front.coming_soon')
      </div>
      @else
      @foreach ($contents as $item)
      <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-1">
        <div class="item">
          <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->content_id])}}">
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

              @if( DB::table('settings')->where('key','like','%enable_free%')->first()->value == "1")
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

            <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->content_id])}}">
              <div class="card-body">
                <h4 class="card-title text-capitalize">{{get_title($item->content_id)}}</h4>
              </div>

          </div>
        </div>
      </div>
      @endforeach
      @endif
    </div>
  </section>
</div>
@stop
