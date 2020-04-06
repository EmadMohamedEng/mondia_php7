@extends('front.master')
@section('page_title') @lang('front.azan') @endsection
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
    /* #chooseAudio .np-play::before, #chooseAudio #play::before{
        content:"";
    } */
    @if(request()->has('OpID') && request()->get('OpID') == omantel)
        #chooseAudio table td a {
        color: #fff;
        background: #ff9e1b;
      }
      span.fa-play {
        color: #ff9e1b;
      }
      span.fa-pause {
        color: #ff9e1b;
      }
    @endif
</style>
<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
  @include('front.search')
  <section class="azan_page">
    <div class="row m-0">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12">
        <div class="azan_title">
          <h2 class="text-capitalize text-center">@lang('front.sheikh')</h2>
        </div>
      </div>

      <div class="col-md-12 col-lg-12 col-xl-12 col-12 no_padding">
        <div class="input_text">
          <div class="form-group">
            <select id="chooseProvider" name="provider" class="form-control azan_input">
              <option value="empty">@lang('front.muezzin')</option>
               @foreach($providers as $value)
               <option value="{{$value->provider->id}}">{{$value->provider->getTranslation('title',getCode())}}</option>
               @endforeach
            </select>
          </div>
        </div>
      </div>

      <div class="col-md-12 col-lg-12 col-xl-12 col-12 no_padding">
        <div class="azan_text">
          <!-- <button id="chooseRBT" onclick="confirm('لتأكيد الاشتراك فى الخدمة إضغط تأكيد')" class="btn text-capitalize call_tone">اجعلها كول تون</button> -->
        </div>
      </div>

      <div id="chooseAudio">
        <h2 id="provider-name" class="sheikh_name">sheikh name</h2>
        <table class="table table-dark table-hover" dir="rtl">
            <thead>
                <tr>
                    <th>@lang('front.subscribe')</th>
                    <th>@lang('front.choose')</th>
                    <th> @lang('front.play')</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
      </div>


      <div class="tab-bar-wrapper decorator"></div>
    </div>
  </section>
</div>
@stop

@section('script')
<script src="{{asset('front/js/azan.js')}}"></script>
<script src="{{asset('front/js/player.js')}}"></script>
@endsection
