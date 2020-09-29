@extends('front.master')
@section('page_title') Today Video @endsection
@section('content')

    <style>
        .media-title {
            color: #ff375e;
            text-align: center;
            margin-top: 20px;
        }

        .media-wrapper {
            text-align: center;
        }

        .main_container .inner_page .cover img {
            height: 15rem;
            width: 51%;
            opacity: 0.8;
        }

        .icon-stc {
            position: absolute;
            left: 49%;
            z-index: 1;
            top: 32%;
        }

        .but_all {
            width: 50%;
            margin-left: 25%;
        }
        .btn-block{
            display: inline-block;
        }
    </style>
    <?php
    $imgUrl = "http://quranlive.digizone.com.kw/front/images/img_1.png";
    ?>

@if(request()->get('OpID') == mbc)
<div class="col-md-12 col-lg-12 col-xl-12 col-12 no_padding close_nav">
@else
<div class="col-md-12 col-lg-12 col-xl-8 col-12 p-0 no_padding close_nav">
@endif
        @include('front.search')
        <section class="inner_page">
            <div class="row m-0">
                <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
                    <div class="cover">
                        <a href='{{url("landing/$latestpost->postId")}}' class="thumbnail link_href"
                           data-video-title="video 1">
                            <div class="media-wrapper">
                                <div class="icon-stc">
                                    <span class="fa fa-play-circle fa-3x blue"></span>
                                </div>
                                <img src="{{$imgUrl}}">
                                <h3 class="media-title">
                                    @if(app()->getLocale() == 'ar')
                                        {{$latestpost->title_ar}}
                                    @elseif(app()->getLocale() == 'en')
                                        {{$latestpost->title_en}}
                                    @elseif(app()->getLocale() == 'ur')
                                        {{$latestpost->title_ar}}
                                    @endif
                                </h3>

                            </div><!-- end video wrapper -->
                        </a> <!-- video -->
                    </div>
                    <a href='{{url("all/quran")}}'
                       class="btn btn-danger btn-block but_all link_href">@lang('front.more')</a>
                </div>
            </div>

            <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0 padding_phones">
                <div class="poster">
                    <div class="poster-details">
                        <div class="title-wrapper">
                        </div>
                    </div>
                </div>
            </div>

            <div class="border-bottom"></div>


    </div>

@stop
