@extends('front.master')
@section('page_title')
@if(request()->has('service_id') && request()->get('service_id') != '')
{{$service->getTranslation('title',getCode())}}
@elseif(strpos(url()->full(), 'list_muslim') !== false)
@lang('front.muslim_guide')
@else
{{request()->get('search')}}
@endif
@endsection
@section('content')

<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
  @include('front.search')
  <section class="list_muslim">
    <div class="content_carousel_head text-capitalize">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones">
        @if(request()->has('service_id') && request()->get('service_id') != '')
        <a class="link_title link_href" href="{{route('front.list',['service_id' => request()->get('service_id')])}}">
          <h6 class="">{{$service->getTranslation('title',getCode())}}</h6>
        </a>
        @elseif(strpos(url()->full(), 'list_muslim') !== false)
        <a class="link_title link_href" href="{{url('list_muslim')}}">
          <h6 class="">@lang('front.muslim_guide') </h6>
        </a>
        @else
        <a class="link_title link_href" href="{{route('front.list',['search' => request()->get('search')])}}">
          <h6 class="">@lang('front.you_search_about') : {{request()->get('search')}}</h6>
        </a>
        @endif
      </div>
    </div>

    <div class="row m-0">
      <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
        <div class="item">
          <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('sebha')}}">

              <img class="w-100" src="{{asset('front/images/orange/04.png')}}" alt="Card image cap">

              <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
              </a>
            </a>
          </div>

          <a class="owl_content_img view overlay link_href" href="{{url('sebha')}}">
            <div class="card-body">
              <h4 class="card-title text-capitalize">@lang('front.sebha')</h4>
            </div>
          </a>

        </div>
      </div>

      <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
        <div class="item">
          <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('mosque')}}">

              <img class="w-100" src="{{asset('front/images/orange/08.png')}}" alt="Card image cap">

              <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
              </a>
            </a>
          </div>

          <a class="owl_content_img view overlay link_href" href="{{url('mosque')}}">
            <div class="card-body">
              <h4 class="card-title text-capitalize">@lang('front.mosque')</h4>
            </div>
          </a>
        </div>
      </div>

      <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
        <div class="item">
          <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('zakah')}}">

              <img class="w-100" src="{{asset('front/images/orange/07.png')}}" alt="Card image cap">

              <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
              </a>
            </a>
          </div>

          <a class="owl_content_img view overlay link_href" href="{{url('zakah')}}">
            <div class="card-body">
              <h4 class="card-title text-capitalize">@lang('front.zakah')</h4>
            </div>
          </a>
        </div>
      </div>

      <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1 m-auto">
        <div class="item">
          <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('merath')}}">

              <img class="w-100" src="{{asset('front/images/orange/02.png')}}" alt="Card image cap">

              <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
              </a>
            </a>
          </div>

          <a class="owl_content_img view overlay link_href" href="{{url('merath')}}">
            <div class="card-body">
              <h4 class="card-title text-capitalize">@lang('front.merath')</h4>
            </div>
          </a>
        </div>
      </div>

      <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1 m-auto">
        <div class="item">
          <div class="card ovf-hidden">
            <a class="owl_content_img view overlay link_href" href="{{url('salah_time')}}">

              <img class="w-100" src="{{asset('front/images/orange/05.png')}}" alt="Card image cap">

              <a>
                <div class="mask waves-effect waves-light rgba-white-slight"></div>
              </a>
            </a>
          </div>

          <a class="owl_content_img view overlay link_href" href="{{url('salah_time')}}">
            <div class="card-body">
              <h4 class="card-title text-capitalize">@lang('front.prayer')</h4>
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>
</div>

@stop
