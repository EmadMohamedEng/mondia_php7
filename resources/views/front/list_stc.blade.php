@extends('front.master')
@section('page_title')
List video
@endsection
@section('content')
  <?php
  $imgUrl = "http://quranlive.digizone.com.kw/front/images/img_1.png";
  ?>
<style media="screen">
    .list_load {
      /* min-height: 700px; */
    }
  </style>
<div class="col-md-12 col-lg-12 col-xl-9 col-12 no_padding close_nav">
    @include('front.search')
  <section class="list_page">
    <div class="content_carousel_head text-capitalize">

    </div>

    <div class="row m-0 list_load">
      @foreach($allVideo as $video)
        <div class="col-md-4 col-lg-4 col-xl-2 col-6 p-0">
            <div class="item">
              <div class="card ovf-hidden">
                <a class="owl_content_img view overlay link_href" href="{{url("landing/$video->postId")}}">
                  <img class="w-100" src="{{$imgUrl}}" alt="Card image cap" style="height: 11.25rem;">

                  <a>
                    <div class="mask waves-effect waves-light rgba-white-slight"></div>
                  </a>
                </a>
                <div class="card-body">
                  <a class="link_href" href="{{url("landing/$video->postId")}}">
                    <h4 class="card-title text-capitalize" style="color:#ff375e ">
                      @if(app()->getLocale() == 'ar')
                        {{$video->title_ar}}
                      @elseif(app()->getLocale() == 'en')
                        {{$video->title_en}}
                      @elseif(app()->getLocale() == 'ur')
                        {{$video->title_ar}}

                      @endif
                    </h4>
                  </a>
                </div>
              </div>
            </div>
        </div>
        @endforeach
    </div>
  </section>
</div>

@stop
@section('script')
<script type="text/javascript">
  var start = 0;
  var action = 'inactive';
  $('.load').hide();
  $(window).on("scroll", function () {

    if ($(window).scrollTop() + $(window).height() > $(".list_load").height() && action == 'inactive') {
      $('.load').show();
      action = 'active';
      start = start + {{get_pageLength()}};
      setTimeout(function () {
        load_content_data(start);
      }, 500);

    }
  });

  function load_content_data(start) {
    url = '{{url("loadcontent/")}}' + "?start=" + start + '&service_id={{request()->get("service_id")}}'
    @if(request()->has('OpID') && request()->get('OpID') != '')
    url += '&OpID=' + "{{request()->get('OpID')}}"
    @endif

    @if(request()->has('search') && request()->get('search') != '')
    url += '&search=' + "{{request()->get('search')}}"
    @endif

    $.get(url, function (data) {
      if (data.html == '') {
        action = 'active';
      } else {
        $('.list_load').append(data.html);
        action = 'inactive';
      }
      $('.load').hide();

    })
  }
</script>
@stop
