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
            $Att = ';';
        }
        break;
    case 'iPad': $Att = '&body=';
        break;
    case 'iPod': $Att = '&body=';
        break;
    default : $Att = '?body=';
        break;
}?>
<!-- End Header -->
<link rel="stylesheet" type="text/css" href="{{asset('front/css/azan_style.css')}}">
<style>
    
    @if(request()->has('OpID') && request()->get('OpID') == omantel)
        #chooseAudio table td a{
        color: #fff;
        background: #ff9e1b;
      }
      #chooseAudio #paused::before,
      #chooseAudio #playing::before {
        color:#ff9e1b;
      } 
      #chooseAudio .np-play::before,
      #chooseAudio #play::before {
        color:#ff9e1b;
      }
    @endif
</style>
<div class="col-md-12 col-lg-12 col-xl-9 col-12 no_padding close_nav">
    @include('front.search')
  <section class="azan_page">
    <div class="row m-0">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12">
        <div class="azan_title">
          <h2 class="text-capitalize text-center"></h2>
        </div>
      </div>

      <div class="col-md-12 col-lg-12 col-xl-12 col-12 no_padding">
        <div class="azan_text">
          <!-- <button id="chooseRBT" onclick="confirm('لتأكيد الاشتراك فى الخدمة إضغط تأكيد')" class="btn text-capitalize call_tone">اجعلها كول تون</button> -->
        </div>
      </div>

      <div id="chooseAudio">
        <table class="table table-hover" dir="rtl">
            <thead>
                <tr>
                    <th>@lang('front.subscribe')</th>
                    <th>@lang('front.choose')</th>
                    <th> @lang('front.play')</th>
                </tr>
            </thead>
            <tbody class="roll-in-top">
                @foreach($rbts as $val)
                <tr>
                    <td>
                        <a class="btn" href="sms:{{$val->operator->code}}{{$Att}}{{$val->code}}">@lang('front.make_it_call_tone')</a>
                    </td>
                    <td>
                        <p style="color:#000" href="{{url('view_rbt/'.$val->id)}}">
                            <span>{{$val->getTranslation('title',getCode())}}</span>
                        </p>
                    </td>
                    <td>
                        <td class="np-play" data-src="{{url($val->source)}}"></td>
                        <audio id="audio_test" controls="controls" style="display:none">
                            <source id="audioSource" src="">
                        </audio>
                    </td>
                </tr>
                @endforeach

            </tbody>
        </table>
      </div>
      <div class="tab-bar-wrapper decorator"></div>
    </div>
  </section>
</div>
@stop

@section('script')
<script src="{{asset('front/js/player.js')}}"></script>
@endsection
