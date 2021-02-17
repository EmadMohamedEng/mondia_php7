<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
  <meta charset="utf-8">
  <!--IE Compatibility Meta-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--Mobile Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Alkenz pincode page</title>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/bootstrap.min.css'>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/all.min.css'>
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_urdu.css">
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_mbc_two.css">
</head>
<style>
  .landing_page .form_content form .form-group input {
    border-bottom-right-radius: unset;
    border-top-right-radius: unset;
  }

  .main_container .img-fluid img {
    width: 20%;
  }

  .landing_page {
    margin-top: 0;
  }

  .main_container .landing_page .strip h3 {
    font-size: 1.35rem;
    color: #e0c26c;
  }
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
  $bottom = "bottom: 0%;";
  $font = "font-size: 16px;";
}
?>

<body>
  <div class="main_container">
    <!-- <div class="img-fluid text-center py-3 d-flex justify-content-center">
      <img class="bounce-top" src='{{asset("front/images/mbc_header.png")}}' alt='Logo'>
    </div> -->

    <div class="landing_page py-3">
      <div class="strip text-dark">
        <h2>@lang('messages.enjoy_time_landing')</h2>
        <p class="best_features">@lang('messages.Mbc_Muslim_guide_landing')</p>
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


      <div class="container py-3">
        <div class="form_content">
          <!--<h5>ادخل رقم الهاتف</h5>-->
          {!! Form::open(['url'=>'mbc_pin_code_login','method'=>'post','class'=>'form']) !!}
          <div class="form-group">
            <input type="tel" name="pincode" autocomplete="off" class="form-control text-center w-100 rounded" id="pincode" placeholder="@lang('messages.confirmation_code')">
          </div>
          <!-- <h2 class="text-white font-weight-bold mb-3" style="{{$font}}">
            @lang('messages.subscription_Riyals')
          </h2>
          <p class="text-white font-weight-bold mb-3" style="{{$font}}">@lang('messages.renew') </p> -->


          <button class="btn" type="submit">@lang('messages.confirmation')</button>
          {!! Form::close() !!}
        </div>
      </div>
    </div>

    {{-- <div class="container">
      <ul class="terms {{$text}}" dir="{{$left}}">
        <li> @lang('messages.Subscription_renewal')</li>
        <li> @lang('messages.stop_service')</li>
        <li> @lang('messages.years_service')</li>
      </ul>
    </div> --}}

    <!-- copyright -->
    {{-- <div class="copy" style="{{$bottom}}">
      <p>copyright @ <span>{{date('Y')}}</span> Digizone, all rights reserved.</p>
    </div> --}}
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
