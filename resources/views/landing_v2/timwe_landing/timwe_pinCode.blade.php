<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
  <meta charset="utf-8">
  <!--IE Compatibility Meta-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--Mobile Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Ooredoo Qatar pincode page</title>
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

    .copy {
      left: 45%;
    }
  }

  .main_container {
    position: unset !important;
    overflow-y: hidden !important;
  }
</style>

<body>
  <div class="main_container">
    <div class="landing_page">
      <div class="strip text-dark">
        <h4>استمتع بوقتك مع خدمه</h4>
        <h2>دليل مسلم</h2>
        <h3>ادخل كود التفعيل</h3>
      </div>


      <div class="container pt-2">
        <div class="form_content">
          <!--<h5>ادخل رقم الهاتف</h5>-->
          {!! Form::open(['url'=>'subscription/confirm/'.partnerRoleId,'method'=>'post','class'=>'form mt-3']) !!}
          <div class="form-group">
            <input style="width: 100% !important" type="tel" style="font-family: cursive" name="pincode" class="form-control text-center" id="pincode" placeholder="أدخل رمز التأكيد" required pattern="[0-9]{4}">
          </div>
          <h2 style="color: aliceblue;font-size:25px;text-align:center;margin-top:5px;">قيمة الاشتراك 10 ريال / الاسبوع
          </h2>

          <button class="btn" type="submit" style="width: 100%">تاكيد</button>
          {!! Form::close() !!}
        </div>
      </div>
      <div class="cancel text-center">
        {!! Form::open(['url'=>'subscription/optin/'.partnerRoleId,'method'=>'post','class'=>'form']) !!}
        <div class="form-group">
          <input type="submit" value=" اضغط لارسال رمز التاكيد مرة اخري">
        </div>
        {!! Form::close() !!}
      </div>
    </div>

    <div class="container">
      <ul class="terms text-right text-white" dir="rtl" style="font-size: 17px;color:#fff !important;font-weight:500">
        <li>تجديد الاشتراك سيكون تلقائي وفعال بتكلفة 10 ريال فى الاسبوع</li>
        <li>يمكنك إيقاف هذه الخدمة في أي وقت عن طريق إرسال Unsub ISL الى 92842</li>
        <li>يجب ان يكون عمرك 18 عاماً أو أكثر أو لديك الإذن من والديك أو الشخص المسؤول عن دفع فاتورتك حتى تستطيع الاشتراك
          هذه الخدمة</li>
      </ul>
    </div>

    <!-- copyright -->
    <div class="copy">
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
