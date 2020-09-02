<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
  <meta charset="utf-8">
  <!--IE Compatibility Meta-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--Mobile Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>islamic pincode page</title>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/bootstrap.min.css'>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/all.min.css'>
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_urdu.css">
</head>

<style>
  @media (min-width: 1025px) {
    .main_container {
      width: 25%;
      margin: 0 auto;
      position: unset;
    }

    .copy {
      left: 45%;
    }
  }

  /* .main_container {
    position: unset !important;
    overflow-y: hidden !important;
  } */
</style>
@php
App::setLocale($lang);
@endphp

<?php
if ($lang == 'ar') {
  $text = "text-right";
  $left = "rtl";
  $bottom = "bottom: 0%;";
  $font = "font-size: 20px;";
} else {
  $text = "text-left";
  $left = "ltr";
  $bottom = "bottom: -10%;";
  $font = "font-size: 16px;";
}
?>

<body>
  <div class="main_container">
    <div class="landing_page">
      <div class="strip text-dark">
        <h4>@lang('messages.enjoy_time')</h4>
        <h2>@lang('messages.Muslim_guide')</h2>
        <h3>@lang('messages.activation_code')</h3>
        <div class="zain_viva">
          @if(Session::has('success'))
          <div class="alert alert-success alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            {{ Session::get('success')}}
          </div>
          @elseif(Session::has('failed'))
          <div class="alert alert-danger alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            {{ Session::get('failed')}}
          </div>
          @endif
        </div>
      </div>


      <div class="container pt-2">
        <div class="form_content">
          <!--<h5>ادخل رقم الهاتف</h5>-->
          {!! Form::open(['url'=>'subscription/confirm/'.partnerRoleId,'method'=>'post','class'=>'form mt-3']) !!}
          <div class="form-group">
            <input style="width: 100% !important" type="tel" style="font-family: cursive" name="pincode" class="form-control text-center" id="pincode" placeholder="@lang('messages.confirmation_code')" required pattern="[0-9]{4}">
          </div>
          <h2 class="text-white font-weight-bold mb-3" style="{{$font}}">
            @lang('messages.subscription_Riyals')
          </h2>

          <button class="btn" type="submit" style="width: 100%">@lang('messages.confirmation')</button>
          {!! Form::close() !!}
        </div>
      </div>
      <div class="cancel text-center">
        {!! Form::open(['url'=>'subscription/optin/'.partnerRoleId,'method'=>'post','class'=>'form']) !!}
        <div class="form-group">
          <input type="submit" value="@lang('messages.click_confirmation')">
        </div>
        {!! Form::close() !!}
      </div>
    </div>

    <div class="container">
      <ul class="terms {{$text}} text-white" dir="{{$left}}">
        <li> @lang('messages.Subscription_renewal')</li>
        <li> @lang('messages.stop_service')</li>
        <li> @lang('messages.years_service')</li>
      </ul>
    </div>

    <!-- copyright -->
<div class="copy" style="{{$bottom}}">
      <p>copyright @ <span>{{date('Y')}}</span> Digizone, all rights reserved.</p>
    </div>
    <!-- copyright -->
  </div>
  <!-- script -->
  <!-- script -->
  <script src="{{url('front/stc')}}/js/jquery-3.4.0.min.js"></script>
  <script src="{{url('front/stc')}}/js/bootstrap.min.js"></script>

  <script src="{{ url('front/stc')}}/js/popper.min.js"></script>
  <script src="{{ url('front/stc')}}/js/script_viva.js"></script>

  <script type="text/javascript">
    $(document).ready(function() {
      var msisdn = $("#phone").val();
      if (msisdn != "") {
        $('#form').submit()
      }
    });
  </script>

</body>

</html>
