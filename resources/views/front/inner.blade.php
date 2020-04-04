@extends('front.master')
@section('page_title') {{$content->getTranslation('title',getCode())}} @endsection
@section('content')
@php
if($content->type == 1){
  $src = $content->image_preview;
}elseif($content->type == 3){
  $src = $content->video;
}elseif($content->type == 2){
  $src = url('front\images\Cutting\Contnent_Page\001.png');
}else{  // text default image
  $src = url('front\images\Cutting\Contnent_Page\004.png');
}
@endphp


<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
    @include('front.search')
    <section class="inner_page">
      <div class="row m-0">
        <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
          <div class="cover">
            @if(session()->has('check_status_id') && session()->has('status') && session()->get('status') == 'active')
                <video style="object-fit: cover;width:100%" poster="{{$src}}" controls>
                    <source src="{{url($content->video)}}" />
                </video>
            @else
                <img src="{{$src}}" alt="Video Cover">
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
                <h2 class="text-capitalize">{{get_title($content->content_id)}}</h2>
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

            <div class="col-md-3 col-lg-3 col-xl-3 col-2 p-0">
              <div class="shear_div">
                <button class="btn facebook" onclick="location.href='https://www.facebook.com/sharer/sharer.php?{{urldecode(url()->current())}}'">
                  <i class="fab fa-facebook-f"></i>
                </button>
              </div>
            </div>

            <div class="col-md-3 col-lg-3 col-xl-3 col-2 p-0">
              <div class="shear_div">
                <button class="btn twitter" onclick="location.href='https://www.twitter.com/intent/tweet?text={{urldecode(url()->current())}}'">
                  <i class="fab fa-twitter"></i>
                </button>
              </div>
            </div>

            {{-- <div class="col-md-2 col-lg-2 col-xl-2 col-2 p-0">
              <div class="shear_div">
                <button class="btn messenger" onclick="location.href='{{}}'">
                  <i class="fab fa-instagram"></i>
                </button>
              </div>
            </div> --}}

            <div class="col-md-3 col-lg-3 col-xl-3 col-2 p-0">
              <div class="shear_div">
                <button class="btn whatsapp" onclick="location.href='https://api.whatsapp.com/send?text={{urlencode(url()->current())}}'">
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
            <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
              <a class="row link_href" href="{{route('front.inner',['id' => $item->content_id])}}">
                <div class="col-md-2 col-lg-2 col-xl-2 col-2 p-0">
                  @php
                    if($item->type == 1){
                      $src = $item->image_preview;
                    }elseif($item->type == 3){
                      $src =url(  $item->video );
                    }elseif($item->type == 2){
                      $src = url('front\images\Cutting\Contnent_Page\001.png');
                    }else{
                      $src = url('front\images\Cutting\Contnent_Page\004.png');
                    }
                  @endphp
                  <img class="w-100" src="{{$src}}" class="image_inner"  alt="Card image cap">
                </div>

                <div class="col-md-8 col-lg-8 col-xl-8 col-8 p-0 ml-2 mr-2">
                    <p class="p_content text-capitalize">{{get_title($item->content_id)}}</p>
                </div>

                <div class="border-bottom"></div>
              </a>
            </div>
            @endforeach
          </div>
        </section>
      </div>
    </section>
  </div>
@stop




