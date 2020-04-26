@extends('front.master')
@section('page_title')  @endsection
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
                        <video poster="{{$imgUrl}}" style="object-fit: cover;width:50%;" controls>
                            <source src="{{encrypt_content($landingPost->video)}}"/>
                        </video>
                        <h1 style="color: #ff375e;">{{$landingPost->title}}</h1>
                    </div>

                </div>


                <div class="border-bottom"></div>

                <div class="socail_media padding_phones">
                    <div class="row m-0 list_load">
                        @foreach($allVideo as $video)
                            <div class="col-md-6">
                                <div class="item">
                                    <div class="card ovf-hidden">
                                        <a class="owl_content_img view overlay link_href" href="{{url("landing/$video->id")}}">
                                            <img class="w-100" src="{{$imgUrl}}" alt="Card image cap" style="height: 11.25rem;">

                                            <a>
                                                <div class="mask waves-effect waves-light rgba-white-slight"></div>
                                            </a>
                                        </a>
                                        <div class="card-body">
                                            <a class="link_href" href="{{url("landing/$video->id")}}">
                                                <h4 class="card-title text-capitalize" style="color:#ff375e ">{{$video->title}}</h4>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>


    </div>
@stop
