<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Islamic | @yield('page_title')</title>
    <link rel="stylesheet" href="{{asset('front/css/all.min.css')}}">
    <link rel="stylesheet" href="{{asset('front/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('front/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('front/css/owl.theme.default.css')}}">
    <link rel="stylesheet" href="{{asset('front/css/style_en.css')}}">
</head>

<body>
    <main class="main_container">
        <header class="header w-100">
            <div class="row">
                <div class="col-md-6 col-lg-6 col-xl-6 col-8">
                    <div class="header_logo">
                        <a href="index.php">

                            <h6 class="h5">
                                <a class="arrow_back back" href="{{route('front.index')}}">
                                    <i class="fas fa-angle-left fa-lg"></i>
                                </a> {{get_setting('title_page')}}</h6>
                        </a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-6 col-4">
                    <div class="header_icon">
                        <i class="fas fa-search fa-lg"></i>
                    </div>
                </div>
            </div>
        </header>

        <div class="row m-0">
            <div class="col-md-3 col-lg-3 col-xl-3 col-12 p-0" style="z-index: 9999999999">
                <nav class="nav_nav navbar navbar-expand-lg  primary-color">
                    <button id="menu_toggle" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="icon_before fas fa-bars fa-lg"></i>
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="basicExampleNav">
                        <ul class="navbar_ul navbar-nav mr-auto">
                            <li class="nav-item">
                                <div class="row m-0">
                                    <div class="col-6 p-0">
                                        <div class="nav_item_welc text-capitalize font-weight-bolder" href="#0">welcome</div>
                                    </div>

                                    <div class="col-6 p-0">
                                        <a class="nav-link nav-link2 dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{getCode() == 'ar' ? 'عربى' : 'English'}}</a>
                                        <div class="dropdown-menu dropdown-menu2 dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">
                                            <a class="dropdown-item dropdown-item2 text-capitalize" href="{{url('lang/en')}}">English</a>
                                            <a class="dropdown-item dropdown-item2 text-capitalize" href="{{url('lang/ar')}}">عربى</a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <div class="border-bottom"></div>

                            <li class="nav-item active">
                                <a class="nav-link text-capitalize" href="{{route('front.index')}}"><i class="icon_before fas fa-home fa-lg"></i> Home
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            @foreach(provider_menu() as $provider)
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon_before fas fa-futbol fa-lg"></i> {{$provider->getTranslation('title',getCode())}}</a>
                                <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">
                                    @foreach($provider->services as $value)
                                    <a class="dropdown-item text-capitalize" href="{{route('front.list',['service_id' => $value->id])}}">{{$value->getTranslation('title',getCode())}}</a>
                                    @endforeach
                                </div>
                            </li>
                            @endforeach
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon_before fas fa-futbol fa-lg"></i> دليل مسلم</a>
                                <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">
                                    <a class="dropdown-item text-capitalize" href="{{url('sebha')}}">السبحة الإلكترونية</a>
                                    <a class="dropdown-item text-capitalize" href="{{url('zakah')}}">حساب الزكاة</a>
                                    <a class="dropdown-item text-capitalize" href="{{url('merath')}}">حساب المواريث</a>
                                    <a class="dropdown-item text-capitalize" href="{{url('salah_time')}}">مواقيت الصلاة</a>
                                    <a class="dropdown-item text-capitalize" href="{{url('mosque')}}">اقرب مسجد</a>
                                    <a class="dropdown-item text-capitalize" href="{{url('azan')}}">اذان</a>
                                    <a class="dropdown-item text-capitalize" href="{{url('rbts')}}">كول تون</a>
                                </div>
                            </<a>

                            <div class="border-bottom"></div>
                            @if(session()->has('msisdn'))
                            <li class="nav-item ">
                                <a class="nav-link text-capitalize" href="#0"><i class="icon_before fas fa-sign-in-alt fa-lg"></i> Login</a>
                            </li>
                            @endif
                        </ul>
                    </div>
                </nav>
            </div>
            @yield('content')
        </div>
    </main>

    <script src="{{asset('front/js/jquery-3.3.1.min.js')}}"></script>
    <script src="{{asset('front/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('front/js/owl.carousel.min.js')}}"></script>
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
    <script src="{{asset('front/js/script.js')}}"></script>
    @yield('script')
</body>

</html>
