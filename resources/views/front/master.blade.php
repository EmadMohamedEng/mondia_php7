<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="url" content="{{url('/')}}">
    <link rel="shortcut icon" href="https://du-portal.mondiamedia.com/du-uae-portal/en/favicon.ico">
    <title>{{get_setting('title_page')}} | @yield('page_title')</title>
    <link rel="stylesheet" href="{{asset('front/css/all.min.css')}}">
    <link rel="stylesheet" href="{{asset('front/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('front/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('front/css/owl.theme.default.css')}}">
    <link rel="stylesheet" href="{{asset('front/css/style_en.css')}}">
    <script>
        window.base_url = '{{url("/")}}';
    </script>
</head>

<body>
    <main class="main_container">
        <header class="header w-100">
            <div class="row">
                <div class="col-md-6 col-lg-6 col-xl-6 col-8">
                    <div class="header_logo">
                        <a href="{{route('front.index')}}">

                            <h6 class="h5">
                                <a class="arrow_back back" href="#">
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
                            <li class="nav-item nav_item_logo d-block d-sm-none d-md-none d-lg-none d-xl-none">
                                <div class="row m-0">
                                  <div class="col-12 p-0">
                                    <a class="arrow_back back" href="#0">
                                      <i class="fas fa-angle-left fa-lg"></i>
                                    </a>
                                  </div>

                                  <div class="col-12 p-0">
                                    <a class="link_href" href="{{route('front.index')}}">
                                      <img src="{{asset('front/images/du_logo.png')}}" alt="Logo">
                                    </a>
                                  </div>
                                </div>
                              </li>

                            <li class="nav-item">
                                <div class="row m-0">
                                    <div class="col-6 p-0">
                                        <div class="nav_item_welc text-capitalize font-weight-bolder" href="#0">@lang('front.welcome')</div>
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

                            <li id="indexed" class="nav-item">
                                <a class="nav-link text-capitalize link_href" href="{{route('front.index')}}"><i class="icon_before fas fa-home fa-lg"></i> @lang('front.home')
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            @foreach(provider_menu() as $provider)
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon_before fas fa-mosque fa-lg"></i> {{$provider->getTranslation('title',getCode())}}</a>
                                <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">
                                    @foreach($provider->services as $value)
                                    <a class="dropdown-item text-capitalize link_href" href="{{route('front.list',['service_id' => $value->id])}}">{{$value->getTranslation('title',getCode())}}</a>
                                    @endforeach
                                </div>
                            </li>
                            @endforeach
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon_before fas fa-mosque fa-lg"></i> @lang('front.muslim_guide')</a>
                                <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">
                                    <a class="dropdown-item text-capitalize link_href" href="{{url('sebha')}}">@lang('front.sebha')</a>
                                    <a class="dropdown-item text-capitalize link_href" href="{{url('zakah')}}">@lang('front.zakah')</a>
                                    <a class="dropdown-item text-capitalize link_href" href="{{url('merath')}}">@lang('front.merath')</a>
                                    <a class="dropdown-item text-capitalize link_href" href="{{url('salah_time')}}">@lang('front.prayer')</a>
                                    <a class="dropdown-item text-capitalize link_href" href="{{url('mosque')}}"> @lang('front.mosque')</a>
                                    @if(request()->has('OpID') && request()->get('OpID') != '')
                                    <a class="dropdown-item text-capitalize link_href" href="{{url('azan')}}">@lang('front.azan')</a>
                                    <a class="dropdown-item text-capitalize link_href" href="{{url('rbts')}}"> @lang('front.call_tone')</a>
                                    @endif
                                </div>
                            </li>
                            @if(session()->has('requestId') && session()->has('status') && session()->get('status') == 'active')
                            <li class="nav-item ">
                                <a class="nav-link text-capitalize" href="{{route('front.unsub',['requestId' => session()->get('requestId') , 'userToken' => session()->get('userToken')])}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link text-capitalize" href="{{route('front.logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                            </li>
                            @endif

                            @if(session()->has('msisdn'))
                            <div class="border-bottom"></div>

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

    <!-- loading -->
    <div class="loading-overlay">
        <span class="spinner spinner-large spinner-blue spinner-slow"></span>
    </div>
  <!-- end loading -->

    <script src="{{asset('front/js/jquery-3.3.1.min.js')}}"></script>
    <script src="{{asset('front/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('front/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('front/js/script.js')}}"></script>
    <script>
        op_id = {{isset($_REQUEST['OpID']) ? 1 : 0}}
        if (op_id) {
            var operator_id = {{isset($_REQUEST['OpID']) ? $_REQUEST['OpID'] : ''}}
            $('.link_href').each(function() {
                var $this = $(this);
                var _href = $this.attr("href");
                if (_href.includes('?')) {
                    $this.attr("href", _href + '&OpID=' + operator_id);
                } else {
                    $this.attr("href", _href + '?OpID=' + operator_id);
                }
            });
        }
        $('.search-res').val('{{request()->get("search")}}')

    </script>
    @yield('script')
</body>

</html>
