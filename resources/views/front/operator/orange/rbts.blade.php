@extends('front.master')
@section('page_title') @lang('front.call_tone') @endsection
@section('content')
<?php
preg_match("/iPhone|iPad|iPod/", $_SERVER['HTTP_USER_AGENT'], $matches);
$os = current($matches);

switch ($os) {
    case 'iPhone':
        if (preg_match('/OS 8/', $_SERVER['HTTP_USER_AGENT']) || preg_match('/OS 9/', $_SERVER['HTTP_USER_AGENT'])) {
            $Att = '&body=';
        } else {
            $Att = '&body=';
        }
        break;
    case 'iPad':
        $Att = '&body=';
        break;
    case 'iPod':
        $Att = '&body=';
        break;
    default:
        $Att = '?body=';
        break;
}
?>

<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
  @include('front.search')

  <section class="rbt_orange">
    <div class="row m-0">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12">

      @foreach($rbts as $rbt)
        <div class="rbt_strip">
            <div class="row m-0">
              <div class="col-md-10 col-lg-10 col-xl-10 col-8 p-0">
                <p class="strip_title mb-0"> {{$rbt->getTranslation('title',getCode())}} </p>
              </div>

              <div class="col-md-1 col-lg-1 col-xl-1 col-2 p-0 text-center">
                <a data-src="{{ url($rbt->source) }}" class="play_pause">
                  <i class="play_strip far fa-play-circle"></i>
                </a>
              </div>

              <div class="col-md-1 col-lg-1 col-xl-1 col-2 p-0 text-center">
                <a href="sms:{{ $op_id->code }}{{$Att}}{{$rbt->code}}">
                  <i class="subscribe_strip circle fas fa-shopping-cart"></i>
                </a>
              </div>
            </div>
          </div>
      @endforeach

      </div>
    </div>
  </section>
</div>
@stop



@section('script')
<!-- <script src="{{asset('front/js/player.js')}}"></script> -->

<script>
  let audio = new Audio();

  $('.play_pause').click(function(e) {
    e.preventDefault()

    if (!audio.paused) {
      audio.pause();
    }

    audio.src = $(this).data('src')

    if ($(this).children('i').hasClass('fa-play-circle')) {
      $(this).children('i').removeClass('fa-play-circle').addClass('fa-pause-circle')

      $('.far').not($(this).children('i')).each(function() {
        if ($(this).hasClass('fa-pause-circle')) {
          $(this).removeClass('fa-pause-circle').addClass('fa-play-circle')
        }
      })
      audio.play();
    } else {
      $(this).children('i').removeClass('fa-pause-circle').addClass('fa-play-circle')
    }
  })


  $('.circle').parent('a').click(function() {
    if (!audio.paused) {
      audio.pause();
    }
    $('.play_pause').children('i').removeClass('fa-pause-circle').addClass('fa-play-circle');
  })
</script>
@endsection
