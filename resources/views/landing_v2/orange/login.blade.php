<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
  <meta charset="utf-8">
  <!--IE Compatibility Meta-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--Mobile Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>islamic landing page</title>
  <link rel="stylesheet" href="{{asset('front/css/all.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/bootstrap.min.css')}}">
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_urdu.css">
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/orange_login.css">
</head>

@php
App::setLocale($lang);
@endphp
<?php
if ($lang == 'ar') {
  $text = "text-right";
  $left = "rtl";
  $bottom = "bottom: 0%;";
  $font = "font-size: 20px;";
  $float = "float-left";
} else {
  $text = "text-left";
  $left = "ltr";
  $font = "font-size: 16px;";
  $float = "float-right";
}
?>

<body>
  <div class="main_container">
    <div class="row m-0">
      <div class="col-5 p-0">
        <input type="checkbox" id="on-off" name="on-off" onclick="toggle_lang()" class="switch-input" class="switch-input" {{ $lang == 'ar' ? 'checked' : '' }}>
        <label for="on-off" class="switch-label">
          <span class="toggle--on toggle--option">EN</span>
          <span class="toggle--off toggle--option">AR</span>
        </label>
      </div>

      <div class="col-7 p-0">
        <div class="img-fluid text-left">
          <img class="bounce-top" src='{{asset("front/images/orange.png")}}' alt='Logo'>
        </div>
      </div>
    </div>

    <div class="landing_page pt-5">
      <div class="landing_page">
        <div class="strip text-dark">
          <h2>@lang('messages.orange_elker')</h2>
          <p class="best_features">@lang('messages.Mbc_Muslim_guide_landing')</p>
        </div>

        <div class="shbka">
          <div class="container">
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
            <form method="post" action="{{url('orange_portal_login')}}" onsubmit="document.getElementById('zain_submit').disabled='true';" id="form_zain">
              {{ csrf_field() }}

              <div class="row m-0">
                <div class="col-3 p-0">
                  <div class="dropdown">
                    <button class="btn btn_select" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <span style="font-weight: bold;">+20</span>
                    </button>

                  </div>
                </div>

                <div class="col-9 p-0">
                  <input type="tel" class="form-control show_class" id="phone" value="{{(session()->has('landing_msisdn')?session()->get('landing_msisdn'):'')}}" placeholder="@lang('messages.Enter_your')" name="number" required>
                </div>
              </div>
              <!--<button class="btn back">رجوع</button>-->
              <button id="zain_submit" class="btn" type="submit"> @lang('messages.Subsc')</button>
            </form>

            <div class="unsub_cancle">
              <a href="{{url('/orange_portal_unsub')}}">@lang('messages.unsubscribe')</a>
            </div>
            <!--<h5>للاشتراك يرجى الارسال الى <span>965</span></h5>
                <h5>الى <span>965</span><span> STOP1 </span>لالغاء الاشتراك ارسل</h5>-->
          </div>
        </div>

      </div>

    </div>
    <!-- script -->
    <script src="{{url('front/stc')}}/js/jquery-3.4.0.min.js"></script>
    <script src="{{ url('front/stc')}}/js/popper.min.js"></script>
    <script src="{{url('front/stc')}}/js/bootstrap.min.js"></script>
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

      $('.select_option').click(function() {
        var x = $(this).data('select');
        $('#dropdownMenu1').html(x);
      })

      // $('.select_option').click(function (e) {
      // document.getElementById("county_code").innerHTML = e.target.id
      // })

      $('.select_option').click(function(e) {
        document.getElementById("phone").value = e.target.id
      })

      function toggle_lang() {
      const checkbox = document.getElementById("on-off");
      checkbox.addEventListener('change', (event) => {
        if (event.target.checked) {
          location.href = "{{url('lang/ar')}}";
        } else {
          location.href = "{{url('lang/en')}}";
        }
      })
    }
    </script>

</body>

</html>
