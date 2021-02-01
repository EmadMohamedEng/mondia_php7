<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
  <meta charset="utf-8">
  <!--IE Compatibility Meta-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--Mobile Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Elkanz</title>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/bootstrap.min.css'>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/all.min.css'>
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_urdu.css">
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_mbc_two.css">
  <meta http-equiv="refresh" content="5; url = {{url('?OpID=' . MBC_OP_ID)}}" />
</head>

<style>
  .welcome_page {
    margin-top: 0;
  }

  .main_container .welcome_page .strip h3 {
    font-size: 1.35rem;
    color: #e0c26c;
  }

  .main_container .welcome_page .strip h2 {
    font-size: 1.35rem;
    color: #e0c26c;
  }

  .main_container .welcome_page .welcome_ul {
    text-align: left;
    /* padding-left: 11%; */
    font-size: 0.85rem;
    color: #fff;
  }

  .main_container .welcome_page .welcome_ul li {
    margin-bottom: 4%;
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
    <div class="welcome_page text-center py-3">
      <div class="strip">
        <h2>@lang('messages.enjoy_time_landing')</h2>

        <p class="best_features">@lang('messages.mbc_welcome_text')</p>

        <h3 style="margin-top: 10%"></h3>
      </div>

      @if ($lang == 'ar')
      <ul class="welcome_ul" style="direction: rtl; text-align:right">
      @else
        <ul class="welcome_ul">
      @endif
        @lang('front.welcome_mbc')
      </ul>

      <div class="text-center">
        <a href="{{url('?OpID=' . MBC_OP_ID)}}" class="btn btn-warning">@lang('front.home')</a>
      </div>
    </div>
  </div>

  <!-- script -->
  <script src="{{url('front/stc')}}/js/jquery-3.4.0.min.js"></script>
  <script src="{{url('front/stc')}}/js/bootstrap.min.js"></script>

  <script src="{{ url('front/stc')}}/js/popper.min.js"></script>
  <script src="{{ url('front/stc')}}/js/script_viva.js"></script>
</body>

</html>
