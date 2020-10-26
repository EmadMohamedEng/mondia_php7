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
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_mbc_two.css">


</head>

<style>
  /* .main_container {
    position: unset !important;
    overflow-y: hidden !important;
  } */

  .main_container .landing_page {
    margin-top: 0;
  }
  .landing_page .form_content{
    width: 67%;
  }

  .switch-label:before,
  .switch-label:after {
    background: linear-gradient(to right, #aa6620 0, #efc049 30%, #aa6620 60%);
  }

  .switch-label .toggle--off,
  .switch-input:checked+.switch-label .toggle--option {
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
        <input type="checkbox" id="on-off" name="on-off" onclick="toggle_lang()" class="switch-input" {{ $lang == 'ar' ? 'checked' : '' }}>
        <label for="on-off" class="switch-label">
          <span class="toggle--on toggle--option">EN</span>
          <span class="toggle--off toggle--option">AR</span>
        </label>
      </div>

      <div class="col-7 p-0">
        <div class="img-fluid text-center p-2 d-flex justify-content-start">
          <img class="bounce-top" src='{{asset("front/images/mbc_header.png")}}' alt='Logo'>
        </div>
      </div>
    </div>


    <div class="landing_page">
      <div class="strip text-dark">
        <h2>@lang('messages.enjoy_time_landing')</h2>
        <p class="best_features">@lang('messages.Mbc_Muslim_guide_landing')</p>
      </div>

      <div class="shbka">
        <div class="container">
          <div class="row div_size m-0">
            {{-- @if($lang == 'ar')
            <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0">
              <img src='{{asset("front/images/mbc_landing/02.png")}}'>
            </div>

            <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0">
              <img src='{{asset("front/images/mbc_landing/01.png")}}'>
            </div>
            @else
            <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0">
              <img src='{{asset("front/images/mbc_landing/04.png")}}'>
            </div>

            <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0">
              <img src='{{asset("front/images/mbc_landing/03.png")}}'>
            </div>
            @endif --}}

            <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0">
              <img src='{{asset("front/images/mbc_landing/02.png")}}'>
            </div>

            <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0">
              <img src='{{asset("front/images/mbc_landing/01.png")}}'>
            </div>
          </div>

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

      <div class="container p-0">
        <div class="form_content">
          <!--<h5>ادخل رقم الهاتف</h5>-->
          <form method="post" action="{{url('mbc_subscription/optin/'.partnerRoleId)}}" onsubmit="document.getElementById('zain_submit').disabled='true';" id="form_zain">
            {{ csrf_field() }}

            <!-- <div class="row m-0">
              <div class="col-3 p-0">
                <div class="dropdown">
                  <button class="btn btn_select dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                  <div class="dropdown-menu dropdown-primary">
                    <a class="dropdown-item select_option " href="#" data-select="<img src='{{asset('front/stc/img/egy.png')}}'>">
                    <img src="{{asset('front/stc/img/egy.png')}}">
                      <span id="+02" >+02 EGY </span>
                      </a>
                    <a class="dropdown-item select_option " href="#" data-select="<img src='{{asset('front/stc/img/ksa.png')}}'>">
                    <img src="{{asset('front/stc/img/ksa.png')}}">
                    <span id="+966">+966 KSA </span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="col-9 p-0">
                <input type="hidden" name="prev_url" value="{{(isset($_REQUEST['prev_url'])?$_REQUEST['prev_url']:'')}}">
                <input type="tel" class="form-control show_class" id="phone" value="{{(session()->has('landing_msisdn')?session()->get('landing_msisdn'):'')}}" id="phone" placeholder="@lang('messages.Enter_your')" name="number" required>
              </div>
            </div> -->

            <div class="form-group input-group form-inline">
              <label for="phone"><span>966</span></label>
              <input type="hidden" name="prev_url" value="{{(isset($_REQUEST['prev_url'])?$_REQUEST['prev_url']:'')}}">
              <input type="tel" class="form-control" value="{{(session()->has('landing_msisdn')?session()->get('landing_msisdn'):'')}}" id="phone" placeholder="@lang('messages.Enter_your')" name="number" required>
            </div>

        <button id="zain_submit" class="btn" type="submit"> @lang('messages.Subscribe_Now') </button>
        </form>
        <!--<h5>للاشتراك يرجى الارسال الى <span>965</span></h5>
                <h5>الى <span>965</span><span> STOP1 </span>لالغاء الاشتراك ارسل</h5>-->
      </div>
    </div>

    <div class="cancel text-center mt-3 text-white">
      <a href="{{url('mbc_portal_login' )}}" class="Are_you_a_subscriber">
        <p>@lang('messages.Are_you_a_subscriber')</p>
      </a>
      <p style="font-size: 9px;">@lang('messages.click_sub_landing')</p>
      {{-- <p>@lang('messages.unsubscribelink') <a href="{{url('mbc_portal_unsub' )}}">@lang('messages.Link')</a></p> --}}

    </div>

  </div>

  </div>
  <!-- script -->
  <script src="{{url('front/stc')}}/js/jquery-3.4.0.min.js"></script>
  <script src="{{ url('front/stc')}}/js/popper.min.js"></script>
  <script src="{{url('front/stc')}}/js/bootstrap.min.js"></script>
  <script src="{{ url('front/stc')}}/js/script_viva.js"></script>


  <script>

    $('.select_option').click(function () {
      var x= $(this).data('select');
      $('#dropdownMenu1').html(x);
    })

    // $('.select_option').click(function (e) {
    // document.getElementById("county_code").innerHTML = e.target.id
    // })

    $('.select_option').click(function (e) {
    document.getElementById("phone").value = e.target.id
    })

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
