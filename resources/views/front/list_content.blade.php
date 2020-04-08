@extends('front.master')
@section('page_title')
@if(request()->has('service_id') && request()->get('service_id') != '')
{{$service->getTranslation('title',getCode())}}
@else
{{request()->get('search')}}
@endif
@endsection
@section('content')
<style media="screen">
    .list_load {
      min-height: 700px;
    }
  </style>
<div class="col-md-12 col-lg-12 col-xl-9 col-12 no_padding close_nav">
    @include('front.search')
  <section class="list_page">
    <div class="content_carousel_head text-capitalize">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
        @if(request()->has('service_id') && request()->get('service_id') != '')
        <a class="link_title link_href" href="{{route('front.list',['service_id' => request()->get('service_id')])}}">
          <h6 class="">{{$service->getTranslation('title',getCode())}}</h6>
        </a>
        @else
        <a class="link_title link_href" href="{{route('front.list',['search' => request()->get('search')])}}">
            <h6 class="">@lang('front.you_search_about') : {{request()->get('search')}}</h6>
        </a>
        @endif
      </div>
    </div>

    <div class="row m-0 list_load">
        @foreach ($contents as $item)
        <div class="col-md-4 col-lg-4 col-xl-2 col-4 p-0">
            <div class="item">
              <div class="card ovf-hidden rotate-in-center">
                <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->content_id])}}">
                  @php
                      if($item->type == 1){
                        $src = $item->image_preview;
                      }elseif($item->type == 3){
                        $src = $item->video;
                      }elseif($item->type == 2){
                        $src = url('front\images\Cutting\Contnent_Page\001.png');
                      }else{ // text defauly image
                        $src = url('front\images\Cutting\Contnent_Page\004.png');
                      }
                  @endphp
                  <img class="w-100" src="{{$src}}" alt="Card image cap">
                  <a>
                    <div class="mask waves-effect waves-light rgba-white-slight"></div>
                  </a>
                </a>

                <div class="card-body">
                  <h4 class="card-title text-capitalize">{{get_title($item->content_id)}}</h4>
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
