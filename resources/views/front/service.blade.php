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

<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
    @include('front.search')
  <section class="list_page">
    <div class="content_carousel_head text-capitalize">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0 padding_phones">
        @if(request()->has('provider_id') && request()->get('provider_id') != '')
        <a class="link_title link_href" href="{{route('front.service',['provider_id' => $provider->id])}}">
          <h6 class="">{{$provider->getTranslation('title',getCode())}}</h6>
        @endif
        @if(request()->has('search') && request()->get('search') != '')
        <a class="link_title link_href" href="{{route('front.service',['search' => request()->get('search')])}}">
          <h6 class="">{{request()->get('search')}}</h6>
        @endif
          
        </a>
      </div>
    </div>

    <div class="row m-0">
        @foreach ($services as $service)
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
    </div>
  </section>
</div>

@stop
