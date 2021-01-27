<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
  <meta charset="utf-8">
  <!--IE Compatibility Meta-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--Mobile Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>MBC welcome page</title>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/bootstrap.min.css'>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/all.min.css'>
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_urdu.css">
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_mbc_two.css">
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

        <h3 style="margin-top: 10%">@lang('messages.mbc_welcome_subscribe_success')</h3>
      </div>

      <ul class="welcome_ul">
        <li>You have subscribed successfully to Al Kenz Service</li>

        <li>Enjoy your unique Islamic content</li>

        <li>Your will be directed to your content shortly. If you are not directed within few second please click <a href="#0">here</a></li>
      </ul>
    </div>
  </div>

  <!-- script -->
  <script src="{{url('front/stc')}}/js/jquery-3.4.0.min.js"></script>
  <script src="{{url('front/stc')}}/js/bootstrap.min.js"></script>

  <script src="{{ url('front/stc')}}/js/popper.min.js"></script>
  <script src="{{ url('front/stc')}}/js/script_viva.js"></script>
</body>

</html>
