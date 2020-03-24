@extends('front.master')
@section('page_title') Home @endsection
@section('content')
@php
    $count = (int)(count(provider_menu())/2);
    $menu  = provider_menu();
@endphp
<div class="col-md-9 col-lg-9 col-xl-9 col-12 no_padding close_nav">
  <section class="img_carousel">
    <div class="owl_one owl-carousel owl-theme" dir="ltr">
      @foreach($latest as $content)
      <div class="item">
        <a class="owl_one_img w-100" href="{{route('front.inner',['id' => $content->content_id])}}">
          <img class="m-auto d-block" src="{{url($content->image)}}" alt="banner_slider">
        </a>

        <div class="btn_subscribe w-100">
            <button onclick="location.href='{{route('front.inner',['id' => $content->content_id])}}'" class="btn text-capitalize">{{$content->getTranslation('title')}}</button>
        </div>
      </div>
      @endforeach
    </div>
  </section>

  @foreach ($menu->slice(0,$count) as $item)
  <section class="content_carousel">
    <div class="content_carousel_head text-capitalize">
      <div class="row m-0">
        <div class="col-6 p-0">
          <a class="link_title" href="{{route('front.service',['provider_id' => $item->id])}}">
            <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
          </a>
        </div>

        <div class="col-6 no_padding">
          <a href="{{route('front.service',['id' => $item->id])}}" class="btn btn_more text-capitalize">more</a>
        </div>
      </div>
    </div>

    <div class="owl_content owl-carousel owl-theme" dir="ltr">
    @foreach ($item->services as $service)
    <div class="item">
        <div class="card ovf-hidden">
          <a class="owl_content_img view overlay" href="{{route('front.list',['service_id' => $service->id])}}">
            <img class="w-100" src="{{url($service->image)}}" alt="{{$service->getTranslation('title',getCode())}}">
            <a>
              <div class="mask waves-effect waves-light rgba-white-slight"></div>
            </a>
          </a>

          <div class="card-body">
            <h4 class="card-title text-capitalize">{{$service->getTranslation('title',getCode())}}</h4>
          </div>
        </div>
      </div>
    @endforeach
    </div>
  </section>
  @endforeach

  <section class="content_carousel">
    <div class="content_carousel_head text-capitalize">
      <div class="row m-0">
        <div class="col-6 p-0">
          <a class="link_title" href="list.php">
            <h6 class="">muslim guide</h6>
          </a>
        </div>

        <div class="col-6 no_padding">
          <a href="list.php" class="btn btn_more text-capitalize">more</a>
        </div>
      </div>
    </div>

    <div class="owl_content owl-carousel owl-theme" dir="ltr">
      <div class="item">
        <div class="card ovf-hidden">
          <a class="owl_content_img view overlay" href="#0">
            <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/01.png')}}" alt="Card image cap">
            <a>
              <div class="mask waves-effect waves-light rgba-white-slight"></div>
            </a>
          </a>

          <div class="card-body">
            <h4 class="card-title text-capitalize">el sebha</h4>
            <!-- <hr>
            <p class="card-text text-capitalize text-center">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </p> -->
          </div>
        </div>
      </div>

      <div class="item">
        <div class="card ovf-hidden">
          <a class="owl_content_img view overlay" href="#0">
            <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/02.png')}}" alt="Card image cap">
            <a>
              <div class="mask waves-effect waves-light rgba-white-slight"></div>
            </a>
          </a>

          <div class="card-body">
            <h4 class="card-title text-capitalize">nearest mosque</h4>
            <!-- <hr>
            <p class="card-text text-capitalize text-center">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </p> -->
          </div>
        </div>
      </div>

      <div class="item">
        <div class="card ovf-hidden">
          <a class="owl_content_img view overlay" href="#0">
            <img class="w-100" src="{{asset('front/images/Cutting/Dalel_Moslem_Page/03.png')}}" alt="Card image cap">
            <a>
              <div class="mask waves-effect waves-light rgba-white-slight"></div>
            </a>
          </a>

          <div class="card-body">
            <h4 class="card-title text-capitalize">prayer time</h4>
            <!-- <hr>
            <p class="card-text text-capitalize text-center">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </p> -->
          </div>
        </div>
      </div>
    </div>
  </section>

  @foreach ($menu->slice($count,count($menu)) as $item)
  <section class="content_carousel">
    <div class="content_carousel_head text-capitalize">
      <div class="row m-0">
        <div class="col-6 p-0">
          <a class="link_title" href="{{route('front.service',['provider_id' => $item->id])}}">
            <h6 class="">{{$item->getTranslation('title',getCode())}}</h6>
          </a>
        </div>

        <div class="col-6 no_padding">
          <a href="{{route('front.service',['id' => $item->id])}}" class="btn btn_more text-capitalize">more</a>
        </div>
      </div>
    </div>

    <div class="owl_content owl-carousel owl-theme" dir="ltr">
    @foreach ($item->services as $service)
    <div class="item">
        <div class="card ovf-hidden">
          <a class="owl_content_img view overlay" href="{{route('front.list',['service_id' => $service->id])}}">
            <img class="w-100" src="{{url($service->image)}}" alt="{{$service->getTranslation('title',getCode())}}">
            <a>
              <div class="mask waves-effect waves-light rgba-white-slight"></div>
            </a>
          </a>

          <div class="card-body">
            <h4 class="card-title text-capitalize">{{$service->getTranslation('title',getCode())}}</h4>
          </div>
        </div>
      </div>
    @endforeach
    </div>
  </section>
  @endforeach
</div>
@stop
