<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
  <meta charset="utf-8">
  <!--IE Compatibility Meta-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--Mobile Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>islamic landing page</title>
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
  }

  /* .main_container {
    position: unset !important;
    overflow-y: hidden !important;
  } */

  .main_container .landing_page {
    margin-top: 0;
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

    $font = "font-size: 16px;";
}
?>
<body>
  <div class="main_container ">

    <input type="checkbox" id="on-off" name="on-off" onclick="toggle_lang()" class="switch-input" {{ $lang == 'ar' ? 'checked' : '' }}>
    <label for="on-off" class="switch-label">
      <span class="toggle--on toggle--option">EN</span>
      <span class="toggle--off toggle--option">AR</span>
    </label>
    <!-- <div class="img-fluid text-center p-3">
      <img class="bounce-top" src='{{asset("front/images/mbc_header.png")}}' alt='Logo'>
    </div> -->

    <div class="landing_page">
      <div class="strip text-dark">
        <h4>@lang('messages.enjoy_time')</h4>
        <h2>@lang('messages.Mbc_Muslim_guide')</h2>
      </div>

      <div class="shbka">
        <div class="container">
          <h3 class="text-dark">@lang('messages.Subscribe_Now')</h3>

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
            <div class="row justify-content-center">

            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="form_content">
          <!--<h5>ادخل رقم الهاتف</h5>-->
          <form method="post" action="{{url('mbc_subscription/optin/'.partnerRoleId)}}" onsubmit="document.getElementById('zain_submit').disabled='true';" id="form_zain">
            {{ csrf_field() }}
            <div class="form-group form-inline">
              <label for="phone"><span>966</span></label>
              <input type="hidden" name="prev_url" value="{{(isset($_REQUEST['prev_url'])?$_REQUEST['prev_url']:'')}}">
              <input type="tel" class="form-control" value="{{(session()->has('landing_msisdn')?session()->get('landing_msisdn'):'')}}" id="phone" placeholder="@lang('messages.Enter_your')"  name="number" required >
            </div>

            <h3 class="text-white font-weight-bold mb-3" style="{{$font}}">@lang('messages.subscription_Riyals') </h3>
            <p class="text-white font-weight-bold mb-3" style="{{$font}}">@lang('messages.renew') </p>
            <button id="zain_submit" class="btn" type="submit" style="width: 100%"> @lang('messages.Subsc') </button>
          </form>
          <!--<h5>للاشتراك يرجى الارسال الى <span>965</span></h5>
                <h5>الى <span>965</span><span> STOP1 </span>لالغاء الاشتراك ارسل</h5>-->
        </div>
      </div>

      <div class="container">
        <ul class="terms {{$text}} text-white" dir="{{$left}}">
          <li> @lang('messages.Subscription_renewal')</li>
          <li> @lang('messages.stop_service')</li>
          <li> @lang('messages.years_service')</li>
        </ul>
      </div>

      <div class="cancel text-center mt-3 text-white">
        <p>@lang('messages.unsubscribelink') <a href="{{url('mbc_portal_unsub' )}}">@lang('messages.Link')</a></p>
      </div>

    </div>

  </div>
  <!-- script -->
  <script src="{{url('front/stc')}}/js/jquery-3.4.0.min.js"></script>
  <script src="{{url('front/stc')}}/js/bootstrap.min.js"></script>

  <script src="{{ url('front/stc')}}/js/popper.min.js"></script>
  <script src="{{ url('front/stc')}}/js/script_viva.js"></script>


  <script>
    $(document).ready(function() {
      var msisdn = $("#phone").val();
      if (msisdn != "" && msisdn.length == 8 && msisdn != "@_MSISDN") {
        $("#viva_form").submit();
      }
    });

    $('#zain_submit').focusin(function() {
      $('#viva_form').submit()
    });

    function toggle_lang() {
      const checkbox = document.getElementById("on-off");
      checkbox.addEventListener('change', (event) => {
        if (event.target.checked) {
          location.href = "{{url('mbc_portal_landing/ar')}}";
        } else {
          location.href = "{{url('mbc_portal_landing/en')}}";
        }
      })
    }
  </script>

</body>

</html>
