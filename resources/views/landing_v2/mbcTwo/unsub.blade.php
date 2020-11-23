<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
  <meta charset="utf-8">
  <!--IE Compatibility Meta-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--Mobile Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>islamic page</title>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/bootstrap.min.css'>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/all.min.css'>
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_urdu.css">
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_mbc_two.css">

</head>

<style>
  .main_container .img-fluid img {
    width: 20%;
  }

  .landing_page .form_content .validity {
    margin: 4px;
  }

  .landing_page .form_content form .form-group input {
    width: 78%;
  }
</style>


@php
App::setLocale($lang);
@endphp

<body>
  <div class="main_container">
    <div class="img-fluid text-center p-3">
      <img class="bounce-top" src='{{asset("front/images/mbc_header.png")}}' alt='Logo'>
    </div>

    <div class="landing_page">

      <div class="strip text-dark">
        <h2>@lang('messages.enjoy_time_landing')</h2>
        <p class="best_features">@lang('messages.Mbc_Muslim_guide_landing')</p>
      </div>

      <div class="shbka">
        <div class="container">
          <h3 class="">@lang('messages.unsubscribe')</h3>
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
          <form method="post" action="{{url('mbc_subscription/optout/')}}" onsubmit="document.getElementById('zain_submit').disabled='true';" id="form_zain">
            {{ csrf_field() }}
            <div class="form-group form-inline">
              <label for="phone"><span>966</span></label>
              <input type="hidden" name="prev_url" value="{{(isset($_REQUEST['prev_url'])?$_REQUEST['prev_url']:'')}}">
              <input type="tel" class="form-control" @if(session()->has('userIdentifier')) @endif id="phone"
              placeholder="@lang('messages.Enter_your')" name="number" required>
              {{-- <span class="validity"></span> --}}
            </div>

            <!--<button class="btn back">رجوع</button>-->
            <button id="zain_submit" class="btn" type="submit">@lang('messages.unsubscribe')</button>
          </form>
          <!--<h5>للاشتراك يرجى الارسال الى <span>965</span></h5>
                <h5>الى <span>965</span><span> STOP1 </span>لالغاء الاشتراك ارسل</h5>-->
        </div>
      </div>

    </div>

  </div>
  <!-- script -->
  <script src="{{url('front/stc')}}/js/jquery-3.4.0.min.js"></script>
  <script src="{{url('front/stc')}}/js/bootstrap.min.js"></script>

  <script src="{{ url('front/stc')}}/js/popper.min.js"></script>
  <script src="{{ url('front/stc')}}/js/script_viva.js"></script>


  <script>
    // $(document).ready(function() {
    //   var msisdn = $("#phone").val();
    //   if (msisdn != "" && msisdn.length == 8 && msisdn != "@_MSISDN") {
    //     $("#viva_form").submit();
    //   }
    // });

    $('#zain_submit').focusin(function() {
      $('#viva_form').submit()
    });
  </script>

</body>

</html>
