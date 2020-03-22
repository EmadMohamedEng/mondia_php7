<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
    <meta charset="utf-8">
    <!--IE Compatibility Meta-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile Meta-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>islamic WebApp</title>
    <link rel="stylesheet" type="text/css" href="{{url('assets/front/')}}/css/animate.css">
    <link rel="stylesheet" type="text/css" href="{{url('assets/front/')}}/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('assets/front/')}}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('assets/front/')}}/css/main-style.css">
    <!--[if lt IE 9]>
      <script src="{{url('assets/front/')}}/js/html5shiv.min.js"></script>
      <script src="{{url('assets/front/')}}/js/respond.min.js"></script>
      <![endif]-->
    <style>
        .welcome_page .logo {
            margin-top: 6%;
        }

        .landing_page {
            margin-top:9%;
        }
    @media only screen and (min-width: 0) and (max-width: 600px) {
        .welcome_page .logo {
            margin-top: 13%;
        }

        .landing_page {
            margin-top: 28%;
        }
    }
    </style>
</head>

<body style="height:100%;">
    <div class="welcome_page">
        <div class="logo">
            {{-- <img src="{{url('assets/front/')}}/img/logo.png" alt="دليل المسلم"> --}}
            <img src="{{url('assets/front/')}}/img/logo-khair.png" alt="دو الخير">
        </div>
        <!--<h2>دليل المسلم</h2>-->

        <!--<h6>تصميم وتطوير</h6>
        <img src="{{url('assets/front/')}}/img/ivas.png" alt="ivas">-->
        <div class="landing_page">
            <div class="container">
            <h5 class="text-center">استمتع مع خدمة دو الخير</h5>
                <div class="form_content">
                    <form method="get" action="{{url('/DuSecureRedirect')}}" id="form_zain">
                        {{ csrf_field() }}
                        <div class="form-group form-inline">
                            <label for="phone"><span>+ 971</span></label>
                            <input type="hidden" name="peroid" value="{{$peroid}}">
                            <input type="hidden" name="lang" value="{{$lang}}">
                            <input type="tel" class="form-control" id="phone" required="" placeholder="ادخل رقم تليفونك"
                                name="number" required pattern="[0-9]{9}">
                            <span class="validity"></span>
                        </div>
                        <!--<button class="btn back">رجوع</button>-->
                        <button id="zain_submit" class="btn" type="submit">اشترك</button>
                    </form>
                </div>
            </div>
        </div>

        <script src="{{url('assets/front/')}}/js/wow.min.js"></script>
        <script>
        new WOW().init();
        </script>
