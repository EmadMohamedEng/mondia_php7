<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
    <meta charset="utf-8">
    <!--IE Compatibility Meta-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile Meta-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Alafasy landing page</title>
    <link rel="stylesheet" href='{{url('front/stc')}}/css/bootstrap.min.css'>
    <link rel="stylesheet" href='{{url('front/stc')}}/css/all.min.css'>
    <link rel="stylesheet" type="text/css" href="{{ url('front/stc/css/')}}/main-style_urdu.css">

</head>

<body>
    <div class="main_container">
        <div class="landing_page">

            <div class="strip" style="color:#000;">
                <h4>استمتع بوقتك مع خدمه</h4>
                <h2>دليل مسلم</h2>
            </div>

            <div class="shbka">
                <div class="container">
                    <h3 style="color:#000 !important;">اشترك الان</h3>
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
                            <!--<div class="col-12">
                                <img src="img/viva.png" id="viva">
                            </div>-->

                            {{-- <div class="col-12">
                                <img src="{{ asset('front/images/STC01.png') }}" id="zain">
                            </div> --}}

                            <!--<div class="col-12">
                                <img src="img/oredoo.png" id="ooredoo">
                            </div>-->
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="form_content">
                    <!--<h5>ادخل رقم الهاتف</h5>-->
                    <form method="post" action="viva_login_action" id="viva_form">
                        {{ csrf_field() }}
                        <div class="form-group form-inline">
                            <label for="phone"><span>965</span></label>
                            <input type="hidden" name="prev_url"
                                value="{{(isset($_REQUEST['prev_url'])?$_REQUEST['prev_url']:'')}}">
                            <input autocomplete="off" type="tel" class="form-control" value="{{$msisdn}}" id="phone"
                                placeholder="ادخل رقم تليفونك"
                                oninvalid="setCustomValidity('يجب ان تدخل 8 ارقام')" name="number" required
                                pattern="[0-9]{8}">
                            <span class="validity"></span>


                        </div>

                        <!--<button class="btn back">رجوع</button>-->
                        <button id="zain_submit" class="btn" type="submit">اشترك</button>
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
        $(document).ready(function(){
           var msisdn =   $("#phone").val() ;
            if(msisdn != "" && msisdn.length == 8 && msisdn!= "@_MSISDN"){
                $("#viva_form").submit();
             }
         });

        $('#zain_submit').focusin(function () {
            $('#viva_form').submit()
        });

    </script>

</body>

</html>
