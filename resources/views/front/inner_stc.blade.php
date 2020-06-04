@extends('front.master')
@section('page_title') Inner quran @endsection
@section('content')
    <?php
    $imgUrl = "http://quranlive.digizone.com.kw/front/images/img_1.png";
    ?>
    <div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
        @include('front.search')
        <section class="inner_page">
            <div class="row m-0">
                <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">

                    <div class="video-item" style="text-align: center;">
                  <video poster="{{$imgUrl}}" style="object-fit: cover;width:50%;"  controls autoplay loop playsinline>
                            <source src="{{encrypt_content($landingPost->video)}}"/>
                        </video>
                        <h1 style="color: #ff375e;">
                            @if(app()->getLocale() == 'ar')
                                {{$landingPost->title_ar}}
                            @elseif(app()->getLocale() == 'en')
                                {{$landingPost->title_en}}
                            @elseif(app()->getLocale() == 'ur')
                                {{$landingPost->title_ar}}

                            @endif
                        </h1>
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

                        @foreach($allVideo as $video)
                            <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
                                <a class="row link_href m-0" href="{{url("landing/$video->postId")}}">
                                <!-- <div class="row"></div> -->
                                    <div class="col-md-4 col-lg-4 col-xl-2 col-4 p-0">
                                        <img class="w-100 h-100" src="{{$imgUrl}}" class="image_inner"
                                             alt="Card image cap">
                                    </div>

                                    <div class="col-md-8 col-lg-8 col-xl-10 col-8 p-0 ">
                                        <p class="p_content text-capitalize scale-up-bottom">
                                            @if(app()->getLocale() == 'ar')
                                                {{$video->title_ar}}
                                            @elseif(app()->getLocale() == 'en')
                                                {{$video->title_en}}
                                            @elseif(app()->getLocale() == 'ur')
                                                {{$landingPost->title_ar}}
                                            @endif
                                        </p>
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
