<!-- @extends('front.master') -->
@section('page_title') @lang('front.profile') @endsection
@section('content')

<style>
  .loading-overlay {
    display: none;
  }
</style>

<section class="profile">
  @if(request()->get('OpID') == mbc)
  <div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
    @else
    <div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">
      @endif
      <div class="profile_title m-auto text-center">
        <h2>@lang('front.profile')</h2>
      </div>

      {{-- @php
      $style_align = session()->get('applocale') == 'en' ? 'color: white;text-align: left' : 'color: white;text-align: right';
      @endphp --}}

      <div class="profile_table">
        <table class="table table-bordered ">
          <tbody>
            <tr>
              <td class="label-view font-weight-bold">@lang('messages.users.phone')</td>
              <td class="label-view2">{{session()->get('MSISDN')}}</td>
            </tr>

            {{-- <tr>
              <td class="label-view font-weight-bold"> @lang('messages.users.subscription_date')</td>
              <td class="label-view2">{{$date}}</td>
            </tr> --}}

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.service_name')</td>
              <td class="label-view2">@lang('messages.Mbc_Muslim_guide')</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.service_type')</td>
              <td class="label-view2">@lang('messages.repeat.daily')</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.description')</td>
              <td class="label-view2">@lang('messages.discription_all'){{$cost}}</td>
            </tr>
          </tbody>
        </table>
      </div>

      @if(request()->get('OpID') == mbc && $subscriber_content->count())
      <div class="profile_card">
        <div class="row m-0" id="load_more">
          @foreach ($subscription_days as $day)

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-1">
            <div class="profile_card_title">
              @if ($day == 0)
              <h6 class="font-weight-bold">@lang('messages.FreeContent')</h6>
              @else
              <h6 class="font-weight-bold">@lang('messages.Day') {{$day}}</h6>
              @endif
            </div>
          </div>

          @foreach ($subscriber_content as $item)

          @if ($item->subscription_day == $day)
          <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-1">
            <div class="item">
              <div class="card ovf-hidden">
                <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->content_id])}}">

                  @php
                  if($item->content->type == 1) { //video
                  $src = $item->content->image_preview;
                  }elseif($item->content->type == 3) { //image
                  $src =url( $item->content->video );
                  }elseif($item->content->type == 2) { //audio
                  $src = $item->content->image_preview;
                  }else{
                  $src = url('front\images\Cutting\Contnent_Page\004.png');
                  }
                  @endphp


                  <img class="w-100" src="{{$src}}" alt="{{get_title($item->content_id)}}">

                  <a>
                    <div class="mask waves-effect waves-light rgba-white-slight"></div>
                  </a>
                </a>

                <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->content_id])}}">
                  <div class="card-body">
                    <h4 class="card-title text-capitalize">{{get_title($item->content_id)}}</h4>
                  </div>
                </a>

              </div>
            </div>
          </div>
          @endif

          @endforeach

          @endforeach

        </div>
      </div>
      @endif
      <div class="loader"></div>

</section>
@stop

@section("script")
<script>
  var start = 1;
  var action = 'inactive';
  $('.loader').hide();
  $(window).on("scroll", function() {

    if ($(window).scrollTop() + $(window).height() > $("#load_more").height() && action == 'inactive') {
      $('.loader').show();
      action = 'active';
      start = start + 1;
      setTimeout(function() {
        load_content_data(start);
      }, 500);
    }
  });

  function load_content_data(start) {
    $.ajax({
      url: '{{url("profile/")}}?'+ 'OpID=' + "{{request()->get('OpID')}}" + '&page=' + start,
      type: "get",
      success: function(data) {
        if (data.html == '') {
          action = 'active';
        } else {
          $('#load_more').append(data.html);
          setOpID()
          action = 'inactive';
        }
        $('.loader').hide();
      },
    });
  }

  function setOpID() {
    op_id = {{ isset($_REQUEST['OpID']) ? 1 : 0 }}
    if (op_id) {
      var operator_id = {{ isset($_REQUEST['OpID']) ? $_REQUEST['OpID'] : '' }}
      $('.link_href').each(function() {
        var $this = $(this);
        var _href = $this.attr("href");
        if(!_href.includes('OpID')){
          if (_href.includes('?')) {
            $this.attr("href", _href + '&OpID=' + operator_id);
          } else {
            $this.attr("href", _href + '?OpID=' + operator_id);
          }
        }
      });
    }
  }
</script>
@stop
