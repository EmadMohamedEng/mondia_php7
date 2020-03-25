@extends('front.master')
@section('page_title') Home @endsection
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
    #chooseAudio .np-play::before, #chooseAudio #play::before{
        content:"";
    }
</style>
<div class="col-md-12 col-lg-9 col-xl-9 col-12 p-0 close_nav">
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
        <table class="table table-dark table-hover" dir="rtl">
            <thead>
                <tr>
                    <th>اشترك</th>
                    <th>اختر</th>
                    <th>تشغيل</th>
                </tr>
            </thead>
            <tbody>
                @foreach($rbts as $val)
                <tr>
                    <td>
                        <a class="btn btn-success" href="sms:{{$val->operator->code}}{{$Att}}{{$val->code}}">اجعلها كول تون</a>
                    </td>
                    <td>
                        <a style="color:#000" href="{{url('view_rbt/'.$val->id)}}">
                            <span>{{$val->getTranslation('title',getCode())}}</span>
                        </a>
                    </td>
                    <td>
                        <div class="np-play play-status">
                            <span class="fa fa-play" data-src="{{url($val->source)}}"></span>
                        </div>
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
