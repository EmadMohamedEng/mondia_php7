<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
  <meta charset="utf-8">
  <!--IE Compatibility Meta-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--Mobile Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Ooredoo Qatar landing page</title>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/bootstrap.min.css'>
  <link rel="stylesheet" href='{{url('front/stc')}}/css/all.min.css'>
  <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_urdu.css">

</head>

<style>
  @media (min-width: 1025px) {
    .main_container {
      width: 25%;
      margin: 0 auto;
    }
  }

  /* .main_container {
    position: unset !important;
    overflow-y: hidden !important;
  } */
</style>

<body>
  <div class="main_container ">
    <input type="checkbox" id="on-off" name="on-off" class="switch-input">
    <label for="on-off" class="switch-label">
      <span class="toggle--on toggle--option">EN</span>
      <span class="toggle--off toggle--option">AR</span>
    </label>

    <div class="landing_page">
      <div class="strip text-dark">
        <h4>استمتع بوقتك مع خدمه</h4>
        <h2>دليل المسلم</h2>
      </div>

      <div class="shbka">
        <div class="container">
          <h3 class="text-dark">اشترك الان</h3>

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
          <form method="post" action="{{url('subscription/optin/'.partnerRoleId)}}" onsubmit="document.getElementById('zain_submit').disabled='true';" id="form_zain">
            {{ csrf_field() }}
            <div class="form-group form-inline">
              <label for="phone"><span>974</span></label>
              <input type="hidden" name="prev_url" value="{{(isset($_REQUEST['prev_url'])?$_REQUEST['prev_url']:'')}}">
              <input type="tel" class="form-control" value="{{(session()->has('landing_msisdn')?session()->get('landing_msisdn'):'')}}" id="phone" placeholder="أدخل رقم هاتفك الجوال" oninvalid="setCustomValidity('يجب ان تدخل 8 ارقام')" name="number" required pattern="[0-9]{8}">
              <span class="validity"></span>
            </div>

            <h3 class="text-white font-weight-bold mb-3" style="font-size:20px">قيمة الاشتراك 10 ريال / الاسبوع </h3>
            <button id="zain_submit" class="btn" type="submit" style="width: 100%">اشترك</button>
          </form>
          <!--<h5>للاشتراك يرجى الارسال الى <span>965</span></h5>
                <h5>الى <span>965</span><span> STOP1 </span>لالغاء الاشتراك ارسل</h5>-->
        </div>
      </div>

      <div class="container">
        <ul class="terms text-right text-white font-weight-bold" dir="rtl">
          <li>تجديد الاشتراك سيكون تلقائي وفعال بتكلفة 10 ريال فى الاسبوع</li>
          <li>يمكنك إيقاف هذه الخدمة في أي وقت عن طريق إرسال Unsub ISL الى 92842</li>
          <li>يجب ان يكون عمرك 18 عاماً أو أكثر أو لديك الإذن من والديك أو الشخص المسؤول عن دفع فاتورتك حتى تستطيع الاشتراك هذه الخدمة</li>
        </ul>
      </div>

      <div class="cancel text-center mt-3 text-white">
        <p>لالغاء الاشتراك يرجي الضغط علي هذا <a href="{{url('ooredoo_qatar_unsub' )}}">الرابط</a></p>
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
  </script>

</body>

</html>
