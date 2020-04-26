@extends('front.master')
@section('page_title') Today Video @endsection
@section('content')

<style>
  .media-title{
    color: #ff375e;
    text-align: center;
    margin-top: 20px;
  }
  .media-wrapper{
    text-align: center;
  }
  .main_container .inner_page .cover img {
    height: 15rem;
    width: 51%;
    opacity: 0.8;
  }
  .icon-stc{
    position: absolute;
    left: 49%;
    z-index: 1;
    top: 32%;
  }
  .but_all{
    width: 50%;
    margin-left: 25%;
  }
</style>
<?php
$imgUrl = "http://quranlive.digizone.com.kw/front/images/img_1.png";
?>
<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
  @include('front.search')
  <section class="inner_page">
    <div class="row m-0">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
        <div class="cover">
          <a href='{{url("landing/$latestpost->id")}}' class="thumbnail link_href" data-video-title="video 1">
            <div class="media-wrapper">
              <div class="icon-stc">
                <span class="fa fa-play-circle fa-3x blue"></span>
              </div>
              <img src="{{$imgUrl}}">
              <h3 class="media-title">{{$latestpost->title}}</h3>

            </div><!-- end video wrapper -->
          </a> <!-- video -->
        </div>
          <a href='{{url("all/quran")}}' class="btn btn-danger btn-block but_all link_href">المزيد</a>
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
