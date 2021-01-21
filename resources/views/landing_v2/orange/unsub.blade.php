<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
  <meta charset="utf-8">
  <!--IE Compatibility Meta-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--Mobile Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>islamic page</title>
  <link rel="stylesheet" href="{{asset('front/css/all.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/bootstrap.min.css')}}">
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_urdu.css">
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/orange_login.css">

</head>

<style>
  .landing_page .form_content .validity {
    margin: 4px;
  }

  .landing_page .form_content form .form-group input {
    width: 78%;
  }
</style>

<body>
  <div class="main_container pt-5">
    <div class="img-fluid text-center p-3">
      <img class="bounce-top" src='{{asset("front/images/orange.png")}}' alt='Logo'>
    </div>

    <div class="landing_page">

      <div class="strip text-dark">
      <h2>@lang('messages.orange_elker')</h2>
        {{--  <p class="best_features">@lang('messages.Mbc_Muslim_guide_landing')</p>  --}}
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
          <form method="post" action="{{url('orange_portal_unsub')}}" onsubmit="document.getElementById('zain_submit').disabled='true';" id="form_zain">
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
                <input type="tel" class="form-control show_class" id="phone" placeholder="@lang('messages.Enter_your')" name="number" required>
              </div>
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

      $('#zain_submit').click(function (e) {
        e.preventDefault();
        var str = $("#phone").val();
        var RegExp1 = new RegExp('^[1-9][0-9]{9}$');
        var RegExp2 = new RegExp('^[0][0-9]{10}$');
        var lang = "{{session()->get('applocale')}}";
        if(lang == 'ar'){
          var msg = 'هذا الرقم غير صحيح';
        }else{
          var msg = 'This is not a valid number';
        }
        if(RegExp1.test(str) || RegExp2.test(str)){
          $("#form_zain").submit();
        }else{
          $('.zain_viva').html(`<div class="alert alert-danger alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                ${msg}
                </div>`);
        }
      });

      $(document).ready(function() {
        $(window).keydown(function(event){
          if(event.keyCode == 13) {
            event.preventDefault();
            return false;
          }
        });
      });

      $('#zain_submit').focusin(function() {
        $('#viva_form').submit()
      });
  </script>

</body>

</html>
