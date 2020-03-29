@extends('front.master')
@section('page_title') {{$content->getTranslation('title',getCode())}} @endsection
@section('content')
<div class="col-md-9 col-lg-9 col-xl-9 col-12 p-0 close_nav">
    @include('front.search')
    <section class="inner_page">
      <div class="row m-0">
        <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
          <div class="cover">
            @if(session()->has('requestId') && session()->has('status') && session()->get('status') == 'active')
                <video style="object-fit: cover;width:100%" poster="{{$content->image_preview}}" controls>
                    <source src="{{url($content->video)}}" />
                </video>
            @else
                <img src="{{$content->type == 1 ? $content->image_preview : $content->video}}" alt="Video Cover">
                @if(request()->has('OpID') && request()->get('OpID') == omantel)
                    <button onclick="location.href= '{{route('front.oman',['redirect_url' => url()->full()])}}'" class="btn button_play primary">
                        <i class="fas fa-play play_icon"></i> @lang('front.play')
                    </button>
                @elseif(request()->has('OpID') && request()->get('OpID') == du)
                <button onclick="location.href= '{{route('front.du',['redirect_url' => url()->full()])}}'" class="btn button_play primary">
                    <i class="fas fa-play play_icon"></i> @lang('front.play')
                </button>
                @else
                    <button class="btn button_play primary">
                        <i class="fas fa-play play_icon"></i> @lang('front.play')
                    </button>
                @endif
            @endif
          </div>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0 padding_phones">
          <div class="poster">
            <div class="poster-details">
              <div class="title-wrapper">
                <h2 class="text-capitalize">{{$content->getTranslation('title',getCode())}}</h2>
              </div>

              <div class="outside-cover">
                <span>@lang('front.release'):{{$content->created_at->format('M d , Y')}}</span>
              </div>
            </div>
          </div>
        </div>

        <div class="border-bottom"></div>

        <div class="socail_media padding_phones">
          <div class="row m-0">

            <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
              <div class="pa_share">
                <div>@lang('front.share'): </div>
              </div>
            </div>

            <div class="col-md-2 col-lg-2 col-xl-2 col-2 p-0">
              <div class="shear_div">
                <button class="btn facebook">
                  <i class="fab fa-facebook-f"></i>
                </button>
              </div>
            </div>

            <div class="col-md-2 col-lg-2 col-xl-2 col-2 p-0">
              <div class="shear_div">
                <button class="btn twitter">
                  <i class="fab fa-twitter"></i>
                </button>
              </div>
            </div>

            <div class="col-md-2 col-lg-2 col-xl-2 col-2 p-0">
              <div class="shear_div">
                <button class="btn messenger">
                  <i class="fab fa-facebook-messenger"></i>
                </button>
              </div>
            </div>

            <div class="col-md-2 col-lg-2 col-xl-2 col-2 p-0">
              <div class="shear_div">
                <button class="btn whatsapp">
                  <i class="fab fa-whatsapp"></i>
                </button>
              </div>
            </div>
          </div>
        </div>

        <div class="border-bottom"></div>

        <section class="section_content padding_phones">
          <div class="row m-0">
            <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
              <div class="pa_Videos">
                <span>@lang('front.related_video'): </span>
              </div>
            </div>
            @foreach ($contents as $item)
            <div class="col-md-2 col-lg-2 col-xl-2 col-2 p-0">
                <img src="{{$item->type == 1 ? $item->image_preview : $item->video}}" class="image_inner" alt="">
            </div>

            <div class="col-md-10 col-lg-10 col-xl-10 col-10 p-0">
                <p class="p_content text-capitalize">{{$item->getTranslation('content_title',getCode())}}</p>
            </div>

            <div class="border-bottom"></div>
            @endforeach
          </div>
        </section>
      </div>
    </section>
  </div>
@stop




