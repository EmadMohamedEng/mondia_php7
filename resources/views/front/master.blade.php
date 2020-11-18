<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="url" content="{{url('/')}}">
  <!-- Start Favicon -->
  @if(request()->has('OpID') && request()->get('OpID') == omantel)
  <link rel="shortcut icon" href="{{asset('front/images/omantel_logo.png')}}">
  @elseif(request()->has('OpID') && request()->get('OpID') == stc)
  <link rel="shortcut icon" href="{{asset('front/images/STC01.png')}}">
  @elseif(request()->has('OpID') && request()->get('OpID') == mbc)
  <link rel="shortcut icon" href="{{asset('front/images/mbc_header - fav.png')}}">
  @elseif(request()->has('OpID') && request()->get('OpID') == orange)
  <link rel="shortcut icon" href="{{asset('front/images/orange.png')}}">
  @else
  <link rel="shortcut icon" href="{{asset('front/images/favicon.ico')}}">
  @endif
  <!-- End Favicon -->
  <title> @yield('page_title')</title>
  <link rel="stylesheet" href="{{asset('front/css/all.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/bootstrap.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/owl.carousel.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/owl.theme.default.css')}}">
  <link rel="stylesheet" href="{{asset('/front/css/animate.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/all_op.css')}}">
  @if(request()->has('OpID') && request()->get('OpID') == omantel)
  <link rel="stylesheet" href="{{asset('front/css/style_en_oman.css')}}">
  @elseif(request()->has('OpID') && request()->get('OpID') == stc)
  <link rel="stylesheet" href="{{asset('front/css/style_en_stc.css')}}">
  @elseif(request()->has('OpID') && request()->get('OpID') == mbc)
  <link rel="stylesheet" href="{{asset('front/css/style_en_mbc.css')}}">
  @elseif(request()->has('OpID') && request()->get('OpID') == orange)
  <link rel="stylesheet" href="{{asset('front/css/style_en_orange.css')}}">
  @else
  <link rel="stylesheet" href="{{asset('front/css/style_en.css')}}">
  @endif

  @if(request()->get('OpID') == mbc)
  @if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur' )
  <link rel="stylesheet" href="{{asset('front/css/style_mbc_2_ar.css')}}">
  @endif
  <!-- <link rel="stylesheet" href="{{asset('front/css/style_mbc_2.css')}}"> -->
  <link rel="stylesheet" href="{{asset('front/css/style_mbc_menu.css')}}">
  @endif

  @if(request()->get('OpID') == orange)
  @if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur' )
  <link rel="stylesheet" href="{{asset('front/css/style_orange_2_ar.css')}}">
  @else
  <link rel="stylesheet" href="{{asset('front/css/style_orange_2.css')}}">
  @endif
  @endif

  @if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
  <link rel="stylesheet" href="{{asset('front/css/style_ar.css')}}">
  @endif


  <style>
    .active_menu {
      color: #000;
    }
  </style>

  <script>
    window.base_url = '{{url("/")}}';
  </script>
</head>

<?php
$enable = get_setting('enable_testing');
?>
@if(request()->get('OpID') == omantel)
<style>
  .main_container .modal_cover .modal-dialog .modal-content .modal-footer .btn.btn_2 {
    background: #ff9e1b;
  }
</style>
@endif
<style>
  .main_container .nav_nav .navbar_ul .nav-item .dropdown-menu .dropdown-item {
    font-size: 14px;
  }
</style>

@if(request()->get('OpID') == mbc )
<style>
  .navbar {
    z-index: 999;
    width: 100%;
    margin-top: 0;
    background: #0f1218 !important;
  }

  .navbar .navbar-nav .nav-item {
    cursor: pointer;
  }

  .navbar-light .navbar-nav .active>.nav-link,
  .navbar-light .navbar-nav .nav-link.active,
  .navbar-light .navbar-nav .nav-link.show,
  .navbar-light .navbar-nav .show>.nav-link {
    color: #efc049;
  }

  .navbar-light .navbar-nav .nav-link {
    color: #efc049;
    font-size: 17px;
    text-indent: -5px;
  }

  .navbar-light .navbar-nav .nav-link:focus,
  .navbar-light .navbar-nav .nav-link:hover {
    background: linear-gradient(to right, #aa6620 0, #efc049 30%, #aa6620 60%);
    color: #FFF;
    border-radius: 0.25rem;
  }

  .dropdown-item:focus,
  .dropdown-item:hover {
    background: linear-gradient(to right, #aa6620 0, #efc049 30%, #aa6620 60%);
    color: #FFF;
    ;
  }

  .dropdown-item {
    color: #efc049;
  }

  .dropdown-divider {
    border-top: 1px solid #efc049;
  }

  .ul_menu {
    background-color: unset;
    font-size: 13px;
  }

  .navbar-nav .dropdown-menu {
    background-color: #0f1218;
  }
</style>
@endif

@if(request()->get('OpID') == orange )
<style>
  .navbar {
    z-index: 999;
    width: 100%;
    margin-top: 0;
    background: #0f1218 !important;
  }

  .navbar .navbar-nav .nav-item {
    cursor: pointer;
  }

  .navbar-light .navbar-nav .active>.nav-link,
  .navbar-light .navbar-nav .nav-link.active,
  .navbar-light .navbar-nav .nav-link.show,
  .navbar-light .navbar-nav .show>.nav-link {
    color: #FF6600;
  }

  /* .navbar-light .navbar-nav .nav-link {
    color: #FF6600;
    font-size: 18px;
    text-indent: 5px;
  } */

  .navbar-light .navbar-nav .nav-link:focus,
  .navbar-light .navbar-nav .nav-link:hover {
    background: #FF6600;
    color: #FFF;
    border-radius: 0.25rem;
  }

  .dropdown-item:focus,
  .dropdown-item:hover {
    background: #FF6600;
    color: #FFF;
    ;
  }

  .dropdown-item {
    color: #FF6600;
  }

  .dropdown-divider {
    border-top: 1px solid #FF6600;
  }

  .ul_menu {
    background-color: unset;
    font-size: 13px;
  }

  .navbar-nav .dropdown-menu {
    background-color: #111;
  }
</style>
@endif

<body>
  <main class="main_container">
    <header class="header w-100">
      <div class="row">
        @if(request()->get('OpID') == mbc || request()->get('OpID') == orange )
        <div class="col-md-2 col-lg-2 col-xl-4 col-2 d-flex justify-content-start">
          <span class="open_icon_nav_mbc" onclick="openNav()">&#9776;</span>
        </div>
        @endif


        @if(request()->get('OpID') == mbc)
        <div class="col-md-4 col-lg-4 col-xl-4 col-4 p-0 d-flex justify-content-center">
          @elseif(request()->get('OpID') == orange)
          <div class="col-md-7 col-lg-7 col-xl-4 col-7 p-0 d-flex justify-content-center">

            @else
            <div class="col-md-7 col-lg-7 col-xl-7 col-7 p-0 d-flex justify-content-center">
              @endif
              <div class="header_logo">
                <a href="{{route('front.index')}}" class="link_href">
                  <!-- {{request()->get('OpID') == omantel ? '<img src="front/images/Du_header.png" alt="Logo">':'<img src="front/images/Du_header.png" alt="Logo">'}} -->
                  @if(request()->get('OpID') == omantel)
                  <img class="bounce-top" src='{{asset("front/images/omantel_header.png")}}' alt='Logo'>
                  @elseif(request()->get('OpID') == du)
                  <img class="bounce-top" src='{{asset("front/images/Du_header.png")}}' alt='Logo'>
                  @elseif(request()->get('OpID') == mbc)
                  <img class="bounce-top" src='{{asset("front/images/mbc_header.png")}}' alt='Logo'>
                  @elseif(request()->get('OpID') == orange)

                  <div class="row">
                    <div class="col-md-6 col-6">
                      <img class="bounce-top" src='{{asset("front/images/orange.png")}}' alt='Logo'>
                    </div>

                    <div class="col-md-6 col-6 img_khir p-0">
                      @if (getCode() == 'ar')
                      <img class="bounce-top" src='{{asset("front/images/orange/al_kheer_ar.png")}}' alt='Logo'>
                      @else
                      <img class="bounce-top" src='{{asset("front/images/orange/al_kheer_en.png")}}' alt='Logo'>
                      @endif
                      <!-- <img class="bounce-top" src='{{asset("front/images/orange/al_kheer_ar.png")}}' alt='Logo'> -->
                    </div>
                  </div>

                  @else
                  {{-- <img class="bounce-top" src='{{asset("front/images/daleel_elmuslim.png")}}' alt='Logo'> --}}
                  @lang('front.Daleel Al Muslim')
                  @endif
                </a>
              </div>
            </div>

            @if(request()->get('OpID') == mbc || request()->get('OpID') == orange)
            <div class="col-md-3 col-lg-3 col-xl-4 col-3 d-flex justify-content-end">
              @else
              <div class="col-md-5 col-lg-5 col-xl-5 col-5 d-flex justify-content-end">
                @endif

                @if(request()->get('OpID') == mbc || request()->get('OpID') == orange)

                @else
                <a class="arrow_back back" href="#0">
                  <i class="fas fa-angle-left fa-lg"></i>
                </a>
                @endif

                @if(request()->get('OpID') == mbc || request()->get('OpID') == orange)
                <div class="lang_mbc m-md-1 m-lg-1">
                  <a class="nav-link nav-link2 dropdown-toggle slide_toggle text-capitalize p-0" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{array_key_exists(Session::get('applocale'), Config::get('languages'))?config()->get('languages')[getCode()] : 'English'}}</a>
                  <div class="dropdown-menu dropdown-menu2 dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">
                    @foreach(Config::get('languages') as $key=>$lang)
                    <a class="dropdown-item text-capitalize" href="{{url('lang/'.$key)}}">{{$lang}}</a>
                    @endforeach
                  </div>
                </div>
                @endif
              </div>

              {{-- <div class="col-md-2 col-lg-2 col-xl-6 col-4">
          <a href="#0">
            <div class="header_icon">
              <i class="fas fa-search fa-lg"></i>
            </div>
          </a>
        </div> --}}
            </div>
    </header>

    <div class="row m-0">
      @if(request()->get('OpID') == mbc || request()->get('OpID') == orange)
      <div class="" style="z-index: 9999999999;">

        <div id="mySidenav" class="sidenav">
          <a href="javascript:void(0)" class="closebtn_mbc" onclick="closeNav()"><i class="fas fa-times"></i></a>
          <!-- start menu 2  -->
          <ul class="navbar_ul navbar-nav mr-auto">
            <li class="nav-item nav_item_logo d-block d-sm-none d-md-block d-lg-block d-xl-none">
              <div class="row m-0">
                <div class="col-12 p-0">
                  <a class="arrow_back close_nav">
                    <i class="fas fa-times fa-lg"></i>
                  </a>
                </div>

                <div class="col-12 p-0">
                  <a class="link_href" href="{{route('front.index')}}">
                    @if(request()->has('OpID') && request()->get('OpID') == omantel)
                    <img class="pulsate-bck" src="{{asset('front/images/omantel_logo.png')}}" alt="Logo">
                    @elseif(request()->has('OpID') && request()->get('OpID') == du)
                    <img class="pulsate-bck" src="{{asset('front/images/du_logo.png')}}" alt="Logo">
                    @elseif(request()->has('OpID') && request()->get('OpID') == mbc)
                    <img class="pulsate-bck" src="{{asset('front/images/mbc_header.png')}}" alt="Logo">
                    @elseif(request()->has('OpID') && request()->get('OpID') == orange)
                    <img class="pulsate-bck" src="{{asset('front/images/orange.png')}}" alt="Logo">
                    @else
                    {{-- <img class="pulsate-bck" src="{{asset('front/images/daleel_elmuslim.png')}}" alt="Logo"> --}}
                    @endif
                  </a>
                </div>
              </div>
            </li>

            <div class="border-bottom"></div>

            <?php
            if (request()->get('OpID') == 9 || request()->get('OpID') == 10 || request()->get('OpID') == 11 || request()->get('OpID') == 12 || request()->get('OpID') == 13) {
              $style = "background: #FFF;";
              $color = "";
              $svg =  "";
            } elseif (request()->get('OpID') == orange) {
              $style = "background: transparent;";
              $color = "color:#FFF!important";
              $svg =  "fill: #FFF";
            } else {
              $style = "background: transparent;";
              $color = "color:#efc049!important";
              $svg =  "";
            }
            ?>

            <li class="nav-item">
              <a class="menuTwo nav-link text-capitalize link_href" href="{{route('front.index')}}" style=" <?php echo $style ?>">
                <svg version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 27 22" xml:space="preserve">
                  <path class="st0" d="M21.8,9.6L21.8,9.6l-7.3-7.3c-0.3-0.3-0.8-0.5-1.2-0.5c-0.5,0-0.9,0.2-1.2,0.5L4.9,9.6l0,0  c-0.7,0.7-0.7,1.7,0,2.3c0.3,0.3,0.7,0.5,1.1,0.5c0,0,0,0,0.1,0h0.3v5.4c0,1.1,0.9,1.9,1.9,1.9h2.9c0.3,0,0.5-0.2,0.5-0.5V15  c0-0.5,0.4-0.9,0.9-0.9h1.7c0.5,0,0.9,0.4,0.9,0.9v4.2c0,0.3,0.2,0.5,0.5,0.5h2.9c1.1,0,1.9-0.9,1.9-1.9v-5.4h0.3  c0.5,0,0.9-0.2,1.2-0.5C22.5,11.3,22.5,10.3,21.8,9.6z M21,11.2c-0.1,0.1-0.3,0.2-0.4,0.2h-0.8c-0.3,0-0.5,0.2-0.5,0.5v5.9  c0,0.5-0.4,0.9-0.9,0.9h-2.3V15c0-1.1-0.9-1.9-1.9-1.9h-1.7c-1.1,0-1.9,0.9-1.9,1.9v3.6H8.4c-0.5,0-0.9-0.4-0.9-0.9v-5.9  c0-0.3-0.2-0.5-0.5-0.5H6.2l0,0c-0.2,0-0.3-0.1-0.4-0.2c-0.2-0.2-0.2-0.6,0-0.9l0,0l0,0l7.3-7.3c0.1-0.1,0.3-0.2,0.4-0.2  c0.2,0,0.3,0.1,0.4,0.2l7.3,7.3l0,0C21.3,10.7,21.3,11,21,11.2z" />
                </svg>
                @lang('front.home')
                <span class="sr-only">(current)</span>
              </a>
            </li>

            @if(request()->get('OpID') == stc)
            {{-- <li class="nav-item">
                <a class="nav-link text-capitalize link_href" href="{{url("latest/quran")}}">
            <svg version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 27 22" xml:space="preserve">
              <g>
                <path class="st0" d="M22.8,10.7l-2.5-2.5V4.7c0-0.3-0.3-0.6-0.6-0.6h-3.5l-2.5-2.5c-0.1-0.1-0.2-0.2-0.4-0.2   c-0.1,0-0.3,0.1-0.4,0.2l-2.5,2.5H7c-0.3,0-0.6,0.3-0.6,0.6v3.5l-2.5,2.5c-0.2,0.2-0.2,0.6,0,0.8L6.4,14v3.5c0,0.3,0.3,0.6,0.6,0.6   h3.5l2.5,2.5c0.1,0.1,0.2,0.2,0.4,0.2s0.3-0.1,0.4-0.2l2.5-2.5h3.5c0.3,0,0.6-0.3,0.6-0.6V14l2.5-2.5c0.1-0.1,0.2-0.2,0.2-0.4   S22.9,10.8,22.8,10.7z M19.4,13.4c-0.1,0.1-0.2,0.2-0.2,0.4V17H16c-0.1,0-0.3,0.1-0.4,0.2l-2.2,2.2l-2.2-2.2C11,17,10.9,17,10.7,17   H7.5v-3.2c0-0.1-0.1-0.3-0.2-0.4l-2.2-2.2l2.2-2.2c0.1-0.1,0.2-0.2,0.2-0.4V5.3h3.2c0.1,0,0.3-0.1,0.4-0.2l2.2-2.2l2.2,2.2   c0.1,0.1,0.2,0.2,0.4,0.2h3.2v3.2c0,0.1,0.1,0.3,0.2,0.4l2.2,2.2L19.4,13.4z" />
                <path class="st0" d="M11.9,8.1C12,8.1,12,8,11.9,8.1C12,8,12,8,11.9,8.1l-0.3-1c0,0,0,0,0,0c0,0,0,0,0,0c-0.1,0-0.1,0.1-0.2,0.1   c-0.1,0.1-0.3,0.2-0.4,0.3c0,0,0,0,0,0.1c0.3,0.6,0.2,1.6,0.1,2.4c0,0.2,0,0.4-0.1,0.5c0,0.6-0.5,0.8-0.9,0.8   c-0.3,0-0.6-0.1-0.7-0.3c-0.1-0.2-0.1-0.5,0.1-0.9c0,0,0,0,0-0.1c0,0,0,0-0.1,0c-0.1,0-0.7,0.8-0.7,1.4c0,0.3,0.1,0.7,0.8,0.8   c0.1,0,0.1,0,0.2,0c0.7,0,1.7-0.3,1.8-1.2c0-0.1,0-0.3,0-0.6C11.5,9.6,11.6,8.1,11.9,8.1z" />
                <path class="st0" d="M18.4,10.5c-0.3,0-0.6-0.2-0.8-0.4c-0.1-0.1-0.2-0.2-0.3-0.2c-0.2-0.2-0.5-0.5-0.8-0.6c-0.1,0-0.1-0.1-0.2-0.1   c-0.4,0-0.8,0.5-0.8,0.8c0,0.1,0,0.2,0.2,0.3c0,0,0,0,0.1,0c0.1-0.2,0.2-0.3,0.4-0.3c0.2,0,0.3,0.2,0.5,0.3   c0.1,0.1,0.2,0.1,0.2,0.2c-0.3,0-0.6,0.1-0.8,0.1c-0.5,0-1-0.1-1-0.4C15,9.6,15.1,9,15.2,8.4c0.1-0.3,0.1-0.7,0.1-1c0,0,0,0,0-0.1   c0,0,0,0-0.1,0c-0.6,0.3-0.8,0.9-1,1.4c-0.1,0.4-0.3,0.8-0.6,1.1c-0.2-1.1-0.6-1.9-1.3-2.6c0,0,0,0-0.1,0c0,0,0,0,0,0   c0,0.1,0,0.2-0.1,0.3c-0.1,0.5-0.3,1,0.3,1.3c0,0,0,0,0.1,0c0,0,0,0,0,0l0-0.1c0.3,0.5,0.5,0.9,0.6,1.4c-0.2,0.1-0.4,0.3-0.6,0.4   c-0.3,0.1-0.6,0.3-0.7,0.5c0,0,0,0.1,0,0.1c0.2,0.2,0.4,0.4,0.7,0.4c0.8,0,1.6-1.4,1.9-2.2c0,0,0,0,0,0c-0.1,0.8-0.3,1.7,0.8,2   c0,0,0,0,0,0c0.1,0,0.2,0,0.3,0h0C16.1,11.4,18.2,11.4,18.4,10.5C18.5,10.6,18.5,10.6,18.4,10.5C18.5,10.5,18.4,10.5,18.4,10.5z" />
                <polygon class="st0" points="11,13.2 10.5,13.2 10.5,12.5 10.1,12.5 10.1,14.3 10.5,14.3 10.5,13.5 11,13.5 11,14.3 11.4,14.3    11.4,12.5 11,12.5  " />
                <path class="st0" d="M12,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H12z M12.1,13.6l0.1-0.7l0.1,0.7H12.1z" />
                <polygon class="st0" points="13.4,12.5 13.1,12.5 13.1,14.3 14.1,14.3 14.1,14 13.4,14  " />
                <path class="st0" d="M14.6,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H14.6z M14.7,13.6l0.1-0.7l0.1,0.7H14.7z" />
                <polygon class="st0" points="16.1,12.5 15.7,12.5 15.7,14.3 16.7,14.3 16.7,14 16.1,14  " />
              </g>
            </svg>
            @lang('front.quran')
            <span class="sr-only">(current)</span>
            </a>
            </li> --}}
            @endif

            @foreach(provider_menu() as $provider)
            <li class="nav-item dropdown">
              <a class="menuTwo nav-link dropdown-toggle slide_toggle text-capitalize ul_menu" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                @if($provider->image)
                {!! $provider->image !!}
                @else
                <i class="icon_before fas fa-mosque fa-lg"></i>
                @endif
                {{$provider->getTranslation('title',getCode())}}
              </a>
              <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink2">
                @foreach($provider->services as $value)

                <?php
                if ($provider->id == 23 && $value->id == 40  && request()->get("OpID") == 12) { // The Holy Quran and TIMWE
                  continue;
                }
                ?>

                <a class="dropdown-item text-capitalize link_href ul_menu" href="{{route('front.list',['service_id' => $value->id])}}">{{$value->getTranslation('title',getCode())}}</a>
                @endforeach
              </div>
            </li>
            @endforeach

            <li class="nav-item dropdown">
              <a class="menuTwo nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" style="enable-background:new 0 0 500 500;" xml:space="preserve">
                  <g>
                    <path d="M344.94,154.96L344.94,154.96c-18.11-53.29-58.53-80.54-81.01-92.04c-8.72-4.46-19.13-4.46-27.85,0
                    c-22.48,11.5-62.91,38.74-81.01,92.04c-3.83,11.25-6.04,23.16-6.6,35.38c-0.14,3.08,2.25,5.7,5.33,5.83
                    c3.08,0.12,5.7-2.25,5.83-5.33c0.51-11.17,2.52-22.04,6.01-32.29c16.85-49.56,54.55-74.96,75.53-85.69
                    c5.54-2.83,12.15-2.83,17.68,0c20.97,10.72,58.68,36.12,75.53,85.69c4.08,11.98,6.13,24.7,6.13,37.82v233.52h-22.98
                    c-3.08,0-5.59,2.5-5.59,5.59s2.5,5.59,5.59,5.59h28.57c3.08,0,5.59-2.5,5.59-5.59V196.37C351.67,182.02,349.4,168.1,344.94,154.96z
                    " />
                    <path d="M291.47,429.88H159.49V216.29c0-3.08-2.5-5.59-5.59-5.59s-5.59,2.5-5.59,5.59v219.18c0,3.08,2.5,5.59,5.59,5.59h137.56
                    c3.08,0,5.59-2.5,5.59-5.59S294.56,429.88,291.47,429.88z" />
                    <path d="M197.2,235.31c-3.04,1.95-5.82,4.05-8.47,6.5c-8.03,7.44-12.63,18.16-12.63,29.38v131.13c0,6.46,5.26,11.71,11.71,11.71
                    h124.36c6.46,0,11.71-5.26,11.71-11.71V271.21c0-11.45-4.82-22.35-13.22-29.93c-1.65-1.48-3.4-2.89-5.22-4.16
                    c-1.24-0.87-3.07-1.46-3.68-2.98c-0.43-1.07-0.14-2.28,0.72-2.99c15.28-12.88,21.7-30.49,21.4-50.07
                    c-0.37-23.71-12.27-43.88-30.14-58.75c-9.76-8.13-21-14.42-31.98-20.7c-3.24-1.85-8.01-3.13-11.78-3.13
                    c-5.79,0-10.46,2.4-15.36,5.15c-9.41,5.29-18.51,10.69-26.87,17.42c-18.55,14.92-31.21,35.52-31.67,59.71
                    c-0.32,16.79,4.02,32.53,15.89,45.17c1.6,1.7,3.38,3.4,5.35,5.08c0.46,0.39,0.78,0.81,0.9,1.19
                    C198.71,233.61,198.06,234.77,197.2,235.31z M187.27,290.19l20.32,15.19l-20.32,15.19V290.19z M208.87,228.72
                    c-0.76-2.31-2.21-4.42-4.19-6.14l12.24-9.15l23.74,17.76l-23.74,17.76l-10.11-7.55C209.46,237.85,210.32,233.14,208.87,228.72z
                    M291.39,238.23c0.45,1.13,1.05,2.19,1.79,3.16l-10.1,7.55l-23.74-17.75l23.74-17.76l12.24,9.15c-0.01,0.01-0.01,0.01-0.02,0.02
                    C290.77,226.41,289.2,232.69,291.39,238.23z M250,238.16l23.74,17.76L250,273.68l-23.74-17.76L250,238.16z M250,224.21
                    l-23.74-17.76L250,188.69l23.74,17.75L250,224.21z M273.74,305.38l-23.75,17.76l-23.74-17.76L250,287.61L273.74,305.38z
                    M240.67,330.11l-23.74,17.76l-23.75-17.76l23.75-17.76L240.67,330.11z M250,337.09l23.74,17.75L250,372.6l-23.74-17.75L250,337.09
                    z M259.32,330.11l23.75-17.76l23.74,17.75l-23.75,17.76L259.32,330.11z M283.08,298.41l-23.74-17.76l23.74-17.76l23.74,17.76
                    L283.08,298.41z M283.07,199.47l-23.74-17.75l23.74-17.76l23.74,17.75L283.07,199.47z M250,174.75l-23.75-17.76L250,139.22
                    l23.75,17.76L250,174.75z M240.67,181.72l-23.74,17.76l-23.75-17.76l23.74-17.75L240.67,181.72z M240.67,280.65l-23.75,17.76
                    l-23.74-17.76l23.75-17.76L240.67,280.65z M187.27,339.66l20.32,15.19l-20.32,15.19V339.66z M187.81,402.87L187.81,402.87
                    c-0.3,0-0.54-0.24-0.54-0.54v-13.21l18.39,13.75H187.81z M193.18,379.58l23.75-17.76l23.74,17.75l-23.74,17.76L193.18,379.58z
                    M228.17,402.87L250,386.55l21.82,16.32H228.17z M259.32,379.57l23.74-17.75l23.74,17.75l-23.74,17.75L259.32,379.57z
                    M312.72,402.32c0,0.3-0.24,0.54-0.54,0.54h-17.85l18.39-13.75V402.32z M312.72,370.04l-20.32-15.2l20.32-15.19V370.04z
                    M312.72,320.57l-20.32-15.19l20.32-15.19V320.57z M302.11,248.65c0.37,0.31,0.74,0.62,1.08,0.93c6.03,5.43,9.49,13.27,9.52,21.52
                    l-20.32-15.19L302.11,248.65z M311.11,197.93c-0.01,0.06-0.03,0.16-0.04,0.23c-0.07,0.41-1.36,7.78-7.95,16.31l-10.71-8.01
                    l19.72-14.75C311.86,193.75,311.52,195.83,311.11,197.93z M303.07,149.01c4.51,7.01,7.43,14.49,8.79,22.52l-19.45-14.54
                    L303.07,149.01z M296.28,140.14l-13.21,9.87l-23.75-17.76l14.37-10.74C281.37,126.4,289.42,132.44,296.28,140.14z M240.11,113.38
                    c1.95-1.09,4.06-2.52,6.23-3.14c5.04-1.43,9.23,0.72,13.54,3.13c1.1,0.63,2.27,1.27,3.44,1.94l-13.33,9.96l-13.33-9.96
                    C237.81,114.67,238.97,114.03,240.11,113.38z M226.29,121.51l14.37,10.74l-23.74,17.76l-13.21-9.88
                    C210.57,132.44,218.62,126.4,226.29,121.51z M196.91,149.01l10.67,7.98l-19.45,14.55C189.48,163.5,192.4,156.02,196.91,149.01z
                    M196.87,214.46c-6.59-8.53-7.88-15.9-7.94-16.27c-0.01-0.09-0.03-0.17-0.05-0.26c-0.42-2.11-0.76-4.18-1.01-6.23l19.72,14.75
                    L196.87,214.46z M207.59,255.92l-20.32,15.19c0.03-8.09,3.32-15.77,9.05-21.1c0.5-0.46,1-0.91,1.54-1.36L207.59,255.92z" />
                  </g>
                </svg>
                @lang('front.muslim_guide')</a>

              <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink3">
                <a class="dropdown-item text-capitalize link_href" href="{{url('sebha')}}">@lang('front.sebha')</a>
                <a class="dropdown-item text-capitalize link_href" href="{{url('zakah')}}">@lang('front.zakah')</a>
                @if (request()->get("OpID") == 9 )

                @elseif ( request()->get("OpID") == ooredoo )

                @else
                <a class="dropdown-item text-capitalize link_href" href="{{url('merath')}}">@lang('front.merath')</a>
                @endif
                @if ( request()->get("OpID") == mbc)

                @else
                <a class="dropdown-item text-capitalize link_href" href="{{url('salah_time')}}">@lang('front.prayer')</a>
                @endif
                <a class="dropdown-item text-capitalize link_href" href="{{url('mosque')}}"> @lang('front.mosque')</a>
              </div>
            </li>

            @if(session()->has('check_status_id') && session()->has('status') && session()->get('status') == 'active')
            <li class="nav-item ">
              @if(request()->get('OpID') == omantel && session()->has('menu_unsub_omantel') &&
              session()->get('menu_unsub_omantel') == 'active' )
              <a class="menuTwo nav-link text-capitalize" href="{{route('front.unsub')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
              @elseif(request()->get('OpID') == du && session()->has('menu_unsub_du') &&
              session()->get('menu_unsub_du') == 'active' )
              <a class="menuTwo nav-link text-capitalize" href="{{route('front.du_unsub')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
              @endif
            </li>

            <li class="nav-item ">
              @if(request()->get('OpID') == omantel && session()->has('menu_unsub_omantel') &&
              session()->get('menu_unsub_omantel') == 'active' )
              <a class="menuTwo nav-link text-capitalize" href="{{route('front.logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
              @elseif(request()->get('OpID') == du && session()->has('menu_unsub_du') &&
              session()->get('menu_unsub_du') == 'active' )
              <a class="menuTwo nav-link text-capitalize" href="{{route('front.du_logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
              @endif
            </li>
            @endif

            <li class="nav-item ">
              @if(request()->get('OpID') == ooredoo && session()->has('ooredoo_op_id') && session()->get('status') ==
              'active' )
              <a class="menuTwo nav-link text-capitalize" href="{{url('ooredoo_q_unsub')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
              @elseif(request()->get('OpID') == imi_op_id() && session()->has('imi_op_id') && session()->get('status')
              == 'active' )
              <a class="menuTwo nav-link text-capitalize" href="{{url('imi/unsubscribe')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
              @endif
            </li>

            <li class="nav-item ">
              @if(request()->get('OpID') == ooredoo && session()->has('ooredoo_op_id') && session()->get('status') ==
              'active' )
              <a class="menuTwo nav-link text-capitalize" href="{{url('ooredoo_q_logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
              @elseif(request()->get('OpID') == imi_op_id() && session()->has('imi_op_id') && session()->get('status')
              == 'active' )
              <a class="menuTwo nav-link text-capitalize" href="{{url('imi/logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
              @endif
            </li>

            @if(request()->get('OpID') == mbc)
            <li class="nav-item">
              <a class="menuTwo nav-link text-capitalize link_href" href="{{url('/terms')}}" style=" <?php echo $style ?>">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" style="enable-background:new 0 0 500 500;" xml:space="preserve">
                  <g>
                    <path d="M112.62,249.8c0-47.71-0.07-95.43,0.03-143.14c0.05-26.24,13.3-39.3,39.81-39.35c41.99-0.09,84-0.77,125.95,0.53
                        c9.8,0.3,21.41,5.29,28.71,11.95c23.6,21.51,46.26,44.18,67.79,67.77c6.67,7.31,11.99,18.93,12.13,28.65c1,72.99,0.61,146,0.5,219
                        c-0.04,25.22-13.62,38.62-39.1,38.66c-65.85,0.09-131.69,0.11-197.54-0.01c-24.46-0.05-38.17-13.7-38.24-38.05
                        C112.51,347.14,112.62,298.47,112.62,249.8z M273.01,90.2c-40.77,0-79.82-0.06-118.86,0.03c-16.42,0.04-18.6,2.35-18.61,19.48
                        c-0.04,94.01-0.04,188.02,0,282.03c0.01,16.96,2.21,19.21,18.87,19.23c63.47,0.06,126.94,0.05,190.4,0.01
                        c17.77-0.01,19.81-2.04,19.83-19.74c0.04-65.38,0.03-130.75-0.02-196.13c0-4.12-0.5-8.24-0.83-13.25
                        c-16.15,0-31.35,0.17-46.54-0.04c-26.63-0.36-43.82-17.4-44.2-43.87C272.83,122.72,273.01,107.49,273.01,90.2z M296.12,104.42
                        c0,12.15-1.88,25.25,0.76,37.37c1.42,6.53,9.86,14.81,16.44,16.23c12.09,2.62,25.14,0.75,37.32,0.75
                        C332.39,140.59,314.65,122.9,296.12,104.42z" />
                    <path d="M181.97,249.62c0-7.46,0-13.97,0-21.2c45.61,0,90.61,0,136.24,0c0,7.2,0,13.71,0,21.2
                        C273.17,249.62,228.17,249.62,181.97,249.62z" />
                    <path d="M318.21,274.47c0,7.48,0,13.98,0,21.21c-45.62,0-90.62,0-136.24,0c0-7.23,0-13.73,0-21.21
                        C227.04,274.47,272.04,274.47,318.21,274.47z" />
                    <path d="M181.6,341.39c0-7.49,0-13.66,0-20.94c29.91,0,59.62,0,90.37,0c0,6.41,0,13.23,0,20.94
                        C242.34,341.39,212.62,341.39,181.6,341.39z" />
                  </g>
                </svg>
                @lang('front.terms')
                <span class="sr-only">(current)</span>
              </a>
            </li>

            <li class="nav-item">
              <a class="menuTwo nav-link text-capitalize link_href" href="{{url('/faq')}}" style=" <?php echo $style ?>">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" style="enable-background:new 0 0 500 500;" xml:space="preserve">
                  <g>
                    <path d="M425.71,254.85c0.07,96.65-78.89,175.7-175.63,175.8C153.48,430.76,74.34,351.68,74.29,255
                        c-0.05-96.66,78.91-175.7,175.63-175.79C346.56,79.12,425.63,158.13,425.71,254.85z M249.81,398.64
                        c78.34,0.51,143.21-63.73,143.89-142.51c0.69-79.51-63.51-144.43-143.33-144.92c-78.61-0.49-143.46,63.74-144.08,142.69
                        C105.67,333.37,169.88,398.12,249.81,398.64z" />
                    <path d="M234.13,296.79c0.49-26.33,12.27-46.83,32.86-62.5c10.73-8.16,16.2-18.33,14.54-31.92c-1.86-15.16-15.51-27.04-31.32-27.29
                        c-15.35-0.24-29.4,11.51-31.63,26.49c-0.31,2.09-0.47,4.21-0.63,6.33c-0.67,8.97-7.48,15.21-16.37,15
                        c-8.55-0.2-15.17-6.93-15.38-15.64c-0.74-30.37,22.59-58.32,52.65-63.08c36.53-5.78,69.14,17.6,74.27,54.23
                        c3.31,23.62-5.11,43.27-23.43,58.73c-5.49,4.63-10.92,9.53-15.43,15.07c-6.07,7.47-8.42,16.54-8.39,26.21
                        c0.01,2.86,0.13,5.81-0.52,8.55c-1.86,7.74-9.14,12.51-17.28,11.68c-7.65-0.77-13.59-7.18-13.94-15.12
                        C234.05,301.28,234.13,299.03,234.13,296.79z" />
                    <path d="M250.01,334.87c8.92,0.01,15.87,6.96,15.86,15.89c-0.01,8.91-6.98,15.87-15.9,15.86c-8.92-0.01-15.86-6.98-15.85-15.91
                        C234.14,341.74,241.03,334.86,250.01,334.87z" />
                  </g>
                </svg>
                @lang('front.faq')
                <span class="sr-only">(current)</span>
              </a>
            </li>

            <li class="nav-item">
              <a class="menuTwo nav-link text-capitalize link_href" href="{{url('/profile')}}" style=" <?php echo $style ?>">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" style="enable-background:new 0 0 500 500;" xml:space="preserve">
                  <g>
                    <path d="M429.66,250.5c-0.73,99.14-78.96,176.9-174.87,179.36c-101.62,2.6-183.95-78.67-184.46-178.78
                      c-0.5-98.69,78.5-179.81,178.02-180.52C348.98,69.84,429.24,149.88,429.66,250.5z M378.82,337.26
                      c41.8-59.58,37.17-151.57-29.65-207.2C283.62,75.49,185.2,84.6,130.55,150.41c-52.64,63.39-40.87,144.61-8.93,186.64
                      C192.26,265.29,308.68,265.41,378.82,337.26z M363.41,356.23c-62.47-67.34-168.84-63.48-226.38,0.21
                      C197.26,423.21,305.84,421.15,363.41,356.23z" />
                    <path d="M321.95,190.49c0.02,39.34-32.36,71.69-71.7,71.65c-39.6-0.04-72.01-32.14-72.04-71.34
                      c-0.03-40.35,32.07-72.43,72.48-72.42C289.85,118.38,321.93,150.84,321.95,190.49z M202.18,190.01
                      c-0.05,26.6,21.36,48.11,47.93,48.15c26.28,0.04,47.8-21.47,47.89-47.86c0.08-26.29-21.5-47.96-47.76-47.96
                      C223.78,142.35,202.23,163.73,202.18,190.01z" />
                  </g>
                </svg>
                @lang('front.profile')
                <span class="sr-only">(current)</span>
              </a>
            </li>
            @endif

            @if((session()->get('mbc_op_id') == MBC_OP_ID && session()->get('status') == 'active' && session()->has('MSISDN')))
            <li class="nav-item">
              <a class="menuTwo nav-link text-capitalize link_href" href="{{url('/mbc_portal_logout')}}" style=" <?php echo $style ?>">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" style="enable-background:new 0 0 500 500;" xml:space="preserve">
                  <g>
                    <path d="M410.58,235.55c0.04-0.05,0.07-0.1,0.11-0.14c0.16-0.21,0.32-0.42,0.47-0.64c0.09-0.14,0.17-0.28,0.26-0.42
                  c0.08-0.14,0.17-0.27,0.24-0.41c0.1-0.19,0.19-0.38,0.27-0.57c0.05-0.1,0.1-0.2,0.14-0.31c0.1-0.23,0.18-0.47,0.26-0.71
                  c0.02-0.07,0.05-0.14,0.07-0.21c0.09-0.31,0.17-0.61,0.24-0.92c0-0.01,0-0.01,0-0.02c0.67-3.24-0.25-6.74-2.76-9.25l-50.79-50.79
                  c-3.97-3.97-10.4-3.97-14.37,0c-3.97,3.97-3.97,10.4,0,14.37l33.47,33.47H274.04c-5.61,0-10.16,4.55-10.16,10.16
                  c0,5.61,4.55,10.16,10.16,10.16h104.14l-33.44,33.44c-3.97,3.97-3.97,10.4,0,14.37c1.98,1.99,4.58,2.98,7.18,2.98
                  c2.6,0,5.2-0.99,7.19-2.99l50.7-50.7C410.08,236.13,410.34,235.85,410.58,235.55z" />
                    <path d="M294.36,263c-5.61,0-10.16,4.55-10.16,10.16v60.94c0,9.33-7.6,16.93-16.93,16.93h-44.02V141.12
                  c0-11.55-7.35-21.88-18.45-25.76l-81.5-27.15c-2.75-0.85-5.5-1.26-8.4-1.26c-14.94,0-27.09,12.15-27.09,27.09v243.78
                  c0,11.55,7.36,21.88,18.45,25.76l81.51,27.15c2.75,0.85,5.5,1.26,8.4,1.26c14.94,0,27.08-12.15,27.08-27.09v-13.54h44.02
                  c20.55,0,37.24-16.7,37.24-37.24v-60.94C304.52,267.55,299.97,263,294.36,263z M202.94,384.89c0,3.72-3.05,6.77-6.77,6.77
                  c-0.87,0-1.63-0.11-2.21-0.3l-81.12-27.03c-2.76-0.96-4.7-3.64-4.7-6.53V114.03c0-3.72,3.05-6.77,6.77-6.77
                  c0.87,0,1.62,0.11,2.21,0.3l81.12,27.03c2.76,0.96,4.7,3.64,4.7,6.53V384.89z" />
                  </g>
                </svg>
                @lang('front.logout')
                <span class="sr-only">(current)</span>
              </a>
            </li>
            @endif
          </ul>
          <!-- end menu 2  -->
        </div>

        @else
        <div class="col-md-0 col-lg-0 col-xl-4 col-0 p-0" style="z-index: 9999999999">
          @endif
          <!-- start menu 1  -->
          <nav class="nav_nav navbar navbar-expand-xl primary-color">
            <button id="menu_toggle" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
              <i class="icon_before fas fa-bars fa-lg"></i>
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="basicExampleNav">
              <ul class="navbar_ul navbar-nav mr-auto">
                <li class="nav-item nav_item_logo d-block d-sm-none d-md-block d-lg-block d-xl-none">
                  <div class="row m-0">
                    <div class="col-12 p-0">
                      <a class="arrow_back close_nav">
                        <i class="fas fa-times fa-lg"></i>
                      </a>
                    </div>

                    <div class="col-12 p-0">
                      <a class="link_href" href="{{route('front.index')}}">
                        @if(request()->has('OpID') && request()->get('OpID') == omantel)
                        <img class="pulsate-bck" src="{{asset('front/images/omantel_logo.png')}}" alt="Logo">
                        @elseif(request()->has('OpID') && request()->get('OpID') == du)
                        <img class="pulsate-bck" src="{{asset('front/images/du_logo.png')}}" alt="Logo">
                        @elseif(request()->has('OpID') && request()->get('OpID') == mbc)
                        <img class="pulsate-bck" src="{{asset('front/images/mbc_header.png')}}" alt="Logo">
                        @elseif(request()->has('OpID') && request()->get('OpID') == orange)
                        <img class="" src="{{asset('front/images/orange.png')}}" alt="Logo">
                        @else
                        {{-- <img class="pulsate-bck" src="{{asset('front/images/daleel_elmuslim.png')}}" alt="Logo"> --}}
                        @endif

                      </a>
                    </div>
                  </div>
                </li>

                <li class="nav-item">
                  <div class="row m-0">
                    <div class="col-6 p-0">
                      <div class="nav_item_welc text-capitalize font-weight-bolder" href="#0">@lang('front.welcome')</div>
                    </div>

                    @if(request()->get('OpID') == mbc || request()->get('OpID') == orange)

                    @else
                    <div class="col-6 p-0">
                      <a class="nav-link nav-link2 dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{array_key_exists(Session::get('applocale'), Config::get('languages'))?config()->get('languages')[getCode()] : 'English'}}</a>
                      <div class="dropdown-menu dropdown-menu2 dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink4">
                        @foreach(Config::get('languages') as $key=>$lang)
                        <a class="dropdown-item dropdown-item2 text-capitalize" href="{{url('lang/'.$key)}}">{{$lang}}</a>
                        @endforeach
                      </div>
                    </div>
                    @endif
                  </div>
                </li>

                <div class="border-bottom"></div>

                <?php
                if (request()->get('OpID') == 9 || request()->get('OpID') == 10 || request()->get('OpID') == 11 || request()->get('OpID') == 12 || request()->get('OpID') == 13) {
                  $style = "background: #FFF;";
                } else {
                  $style = "background: transparent;";
                }

                ?>

                <li class="nav-item">
                  <a class="nav-link text-capitalize active_menu link_href" href="{{route('front.index')}}" style=" <?php echo $style ?>">
                    <svg version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 27 22" style="enable-background:new 0 0 27 22;" xml:space="preserve">
                      <path class="st0" d="M21.8,9.6L21.8,9.6l-7.3-7.3c-0.3-0.3-0.8-0.5-1.2-0.5c-0.5,0-0.9,0.2-1.2,0.5L4.9,9.6l0,0  c-0.7,0.7-0.7,1.7,0,2.3c0.3,0.3,0.7,0.5,1.1,0.5c0,0,0,0,0.1,0h0.3v5.4c0,1.1,0.9,1.9,1.9,1.9h2.9c0.3,0,0.5-0.2,0.5-0.5V15  c0-0.5,0.4-0.9,0.9-0.9h1.7c0.5,0,0.9,0.4,0.9,0.9v4.2c0,0.3,0.2,0.5,0.5,0.5h2.9c1.1,0,1.9-0.9,1.9-1.9v-5.4h0.3  c0.5,0,0.9-0.2,1.2-0.5C22.5,11.3,22.5,10.3,21.8,9.6z M21,11.2c-0.1,0.1-0.3,0.2-0.4,0.2h-0.8c-0.3,0-0.5,0.2-0.5,0.5v5.9  c0,0.5-0.4,0.9-0.9,0.9h-2.3V15c0-1.1-0.9-1.9-1.9-1.9h-1.7c-1.1,0-1.9,0.9-1.9,1.9v3.6H8.4c-0.5,0-0.9-0.4-0.9-0.9v-5.9  c0-0.3-0.2-0.5-0.5-0.5H6.2l0,0c-0.2,0-0.3-0.1-0.4-0.2c-0.2-0.2-0.2-0.6,0-0.9l0,0l0,0l7.3-7.3c0.1-0.1,0.3-0.2,0.4-0.2  c0.2,0,0.3,0.1,0.4,0.2l7.3,7.3l0,0C21.3,10.7,21.3,11,21,11.2z" />
                    </svg>
                    @lang('front.home')
                    <span class="sr-only">(current)</span>
                  </a>
                </li>

                @if(request()->get('OpID') == stc)
                {{-- <li class="nav-item">
                <a class="nav-link text-capitalize link_href" href="{{url("latest/quran")}}">
                <svg version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 27 22" xml:space="preserve">
                  <g>
                    <path class="st0" d="M22.8,10.7l-2.5-2.5V4.7c0-0.3-0.3-0.6-0.6-0.6h-3.5l-2.5-2.5c-0.1-0.1-0.2-0.2-0.4-0.2   c-0.1,0-0.3,0.1-0.4,0.2l-2.5,2.5H7c-0.3,0-0.6,0.3-0.6,0.6v3.5l-2.5,2.5c-0.2,0.2-0.2,0.6,0,0.8L6.4,14v3.5c0,0.3,0.3,0.6,0.6,0.6   h3.5l2.5,2.5c0.1,0.1,0.2,0.2,0.4,0.2s0.3-0.1,0.4-0.2l2.5-2.5h3.5c0.3,0,0.6-0.3,0.6-0.6V14l2.5-2.5c0.1-0.1,0.2-0.2,0.2-0.4   S22.9,10.8,22.8,10.7z M19.4,13.4c-0.1,0.1-0.2,0.2-0.2,0.4V17H16c-0.1,0-0.3,0.1-0.4,0.2l-2.2,2.2l-2.2-2.2C11,17,10.9,17,10.7,17   H7.5v-3.2c0-0.1-0.1-0.3-0.2-0.4l-2.2-2.2l2.2-2.2c0.1-0.1,0.2-0.2,0.2-0.4V5.3h3.2c0.1,0,0.3-0.1,0.4-0.2l2.2-2.2l2.2,2.2   c0.1,0.1,0.2,0.2,0.4,0.2h3.2v3.2c0,0.1,0.1,0.3,0.2,0.4l2.2,2.2L19.4,13.4z" />
                    <path class="st0" d="M11.9,8.1C12,8.1,12,8,11.9,8.1C12,8,12,8,11.9,8.1l-0.3-1c0,0,0,0,0,0c0,0,0,0,0,0c-0.1,0-0.1,0.1-0.2,0.1   c-0.1,0.1-0.3,0.2-0.4,0.3c0,0,0,0,0,0.1c0.3,0.6,0.2,1.6,0.1,2.4c0,0.2,0,0.4-0.1,0.5c0,0.6-0.5,0.8-0.9,0.8   c-0.3,0-0.6-0.1-0.7-0.3c-0.1-0.2-0.1-0.5,0.1-0.9c0,0,0,0,0-0.1c0,0,0,0-0.1,0c-0.1,0-0.7,0.8-0.7,1.4c0,0.3,0.1,0.7,0.8,0.8   c0.1,0,0.1,0,0.2,0c0.7,0,1.7-0.3,1.8-1.2c0-0.1,0-0.3,0-0.6C11.5,9.6,11.6,8.1,11.9,8.1z" />
                    <path class="st0" d="M18.4,10.5c-0.3,0-0.6-0.2-0.8-0.4c-0.1-0.1-0.2-0.2-0.3-0.2c-0.2-0.2-0.5-0.5-0.8-0.6c-0.1,0-0.1-0.1-0.2-0.1   c-0.4,0-0.8,0.5-0.8,0.8c0,0.1,0,0.2,0.2,0.3c0,0,0,0,0.1,0c0.1-0.2,0.2-0.3,0.4-0.3c0.2,0,0.3,0.2,0.5,0.3   c0.1,0.1,0.2,0.1,0.2,0.2c-0.3,0-0.6,0.1-0.8,0.1c-0.5,0-1-0.1-1-0.4C15,9.6,15.1,9,15.2,8.4c0.1-0.3,0.1-0.7,0.1-1c0,0,0,0,0-0.1   c0,0,0,0-0.1,0c-0.6,0.3-0.8,0.9-1,1.4c-0.1,0.4-0.3,0.8-0.6,1.1c-0.2-1.1-0.6-1.9-1.3-2.6c0,0,0,0-0.1,0c0,0,0,0,0,0   c0,0.1,0,0.2-0.1,0.3c-0.1,0.5-0.3,1,0.3,1.3c0,0,0,0,0.1,0c0,0,0,0,0,0l0-0.1c0.3,0.5,0.5,0.9,0.6,1.4c-0.2,0.1-0.4,0.3-0.6,0.4   c-0.3,0.1-0.6,0.3-0.7,0.5c0,0,0,0.1,0,0.1c0.2,0.2,0.4,0.4,0.7,0.4c0.8,0,1.6-1.4,1.9-2.2c0,0,0,0,0,0c-0.1,0.8-0.3,1.7,0.8,2   c0,0,0,0,0,0c0.1,0,0.2,0,0.3,0h0C16.1,11.4,18.2,11.4,18.4,10.5C18.5,10.6,18.5,10.6,18.4,10.5C18.5,10.5,18.4,10.5,18.4,10.5z" />
                    <polygon class="st0" points="11,13.2 10.5,13.2 10.5,12.5 10.1,12.5 10.1,14.3 10.5,14.3 10.5,13.5 11,13.5 11,14.3 11.4,14.3    11.4,12.5 11,12.5  " />
                    <path class="st0" d="M12,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H12z M12.1,13.6l0.1-0.7l0.1,0.7H12.1z" />
                    <polygon class="st0" points="13.4,12.5 13.1,12.5 13.1,14.3 14.1,14.3 14.1,14 13.4,14  " />
                    <path class="st0" d="M14.6,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H14.6z M14.7,13.6l0.1-0.7l0.1,0.7H14.7z" />
                    <polygon class="st0" points="16.1,12.5 15.7,12.5 15.7,14.3 16.7,14.3 16.7,14 16.1,14  " />
                  </g>
                </svg>
                @lang('front.quran')
                <span class="sr-only">(current)</span>
                </a>
                </li> --}}
                @endif

                @foreach(provider_menu() as $provider)
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    @if($provider->image)
                    {!! $provider->image !!}
                    @else
                    <i class="icon_before fas fa-mosque fa-lg"></i>
                    @endif
                    {{$provider->getTranslation('title',getCode())}}
                  </a>

                  <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink5">
                    @foreach($provider->services as $value)

                    <?php
                    if ($provider->id == 23 && $value->id == 40  && request()->get("OpID") == 12) { // The Holy Quran and TIMWE
                      continue;
                    }
                    ?>

                    <a class="dropdown-item text-capitalize link_href" href="{{route('front.list',['service_id' => $value->id])}}">{{$value->getTranslation('title',getCode())}}</a>
                    @endforeach
                  </div>
                </li>
                @endforeach

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink6" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" style="enable-background:new 0 0 500 500;" xml:space="preserve">
                      <g>
                        <path d="M344.94,154.96L344.94,154.96c-18.11-53.29-58.53-80.54-81.01-92.04c-8.72-4.46-19.13-4.46-27.85,0
                    c-22.48,11.5-62.91,38.74-81.01,92.04c-3.83,11.25-6.04,23.16-6.6,35.38c-0.14,3.08,2.25,5.7,5.33,5.83
                    c3.08,0.12,5.7-2.25,5.83-5.33c0.51-11.17,2.52-22.04,6.01-32.29c16.85-49.56,54.55-74.96,75.53-85.69
                    c5.54-2.83,12.15-2.83,17.68,0c20.97,10.72,58.68,36.12,75.53,85.69c4.08,11.98,6.13,24.7,6.13,37.82v233.52h-22.98
                    c-3.08,0-5.59,2.5-5.59,5.59s2.5,5.59,5.59,5.59h28.57c3.08,0,5.59-2.5,5.59-5.59V196.37C351.67,182.02,349.4,168.1,344.94,154.96z
                    " />
                        <path d="M291.47,429.88H159.49V216.29c0-3.08-2.5-5.59-5.59-5.59s-5.59,2.5-5.59,5.59v219.18c0,3.08,2.5,5.59,5.59,5.59h137.56
                    c3.08,0,5.59-2.5,5.59-5.59S294.56,429.88,291.47,429.88z" />
                        <path d="M197.2,235.31c-3.04,1.95-5.82,4.05-8.47,6.5c-8.03,7.44-12.63,18.16-12.63,29.38v131.13c0,6.46,5.26,11.71,11.71,11.71
                    h124.36c6.46,0,11.71-5.26,11.71-11.71V271.21c0-11.45-4.82-22.35-13.22-29.93c-1.65-1.48-3.4-2.89-5.22-4.16
                    c-1.24-0.87-3.07-1.46-3.68-2.98c-0.43-1.07-0.14-2.28,0.72-2.99c15.28-12.88,21.7-30.49,21.4-50.07
                    c-0.37-23.71-12.27-43.88-30.14-58.75c-9.76-8.13-21-14.42-31.98-20.7c-3.24-1.85-8.01-3.13-11.78-3.13
                    c-5.79,0-10.46,2.4-15.36,5.15c-9.41,5.29-18.51,10.69-26.87,17.42c-18.55,14.92-31.21,35.52-31.67,59.71
                    c-0.32,16.79,4.02,32.53,15.89,45.17c1.6,1.7,3.38,3.4,5.35,5.08c0.46,0.39,0.78,0.81,0.9,1.19
                    C198.71,233.61,198.06,234.77,197.2,235.31z M187.27,290.19l20.32,15.19l-20.32,15.19V290.19z M208.87,228.72
                    c-0.76-2.31-2.21-4.42-4.19-6.14l12.24-9.15l23.74,17.76l-23.74,17.76l-10.11-7.55C209.46,237.85,210.32,233.14,208.87,228.72z
                    M291.39,238.23c0.45,1.13,1.05,2.19,1.79,3.16l-10.1,7.55l-23.74-17.75l23.74-17.76l12.24,9.15c-0.01,0.01-0.01,0.01-0.02,0.02
                    C290.77,226.41,289.2,232.69,291.39,238.23z M250,238.16l23.74,17.76L250,273.68l-23.74-17.76L250,238.16z M250,224.21
                    l-23.74-17.76L250,188.69l23.74,17.75L250,224.21z M273.74,305.38l-23.75,17.76l-23.74-17.76L250,287.61L273.74,305.38z
                    M240.67,330.11l-23.74,17.76l-23.75-17.76l23.75-17.76L240.67,330.11z M250,337.09l23.74,17.75L250,372.6l-23.74-17.75L250,337.09
                    z M259.32,330.11l23.75-17.76l23.74,17.75l-23.75,17.76L259.32,330.11z M283.08,298.41l-23.74-17.76l23.74-17.76l23.74,17.76
                    L283.08,298.41z M283.07,199.47l-23.74-17.75l23.74-17.76l23.74,17.75L283.07,199.47z M250,174.75l-23.75-17.76L250,139.22
                    l23.75,17.76L250,174.75z M240.67,181.72l-23.74,17.76l-23.75-17.76l23.74-17.75L240.67,181.72z M240.67,280.65l-23.75,17.76
                    l-23.74-17.76l23.75-17.76L240.67,280.65z M187.27,339.66l20.32,15.19l-20.32,15.19V339.66z M187.81,402.87L187.81,402.87
                    c-0.3,0-0.54-0.24-0.54-0.54v-13.21l18.39,13.75H187.81z M193.18,379.58l23.75-17.76l23.74,17.75l-23.74,17.76L193.18,379.58z
                    M228.17,402.87L250,386.55l21.82,16.32H228.17z M259.32,379.57l23.74-17.75l23.74,17.75l-23.74,17.75L259.32,379.57z
                    M312.72,402.32c0,0.3-0.24,0.54-0.54,0.54h-17.85l18.39-13.75V402.32z M312.72,370.04l-20.32-15.2l20.32-15.19V370.04z
                    M312.72,320.57l-20.32-15.19l20.32-15.19V320.57z M302.11,248.65c0.37,0.31,0.74,0.62,1.08,0.93c6.03,5.43,9.49,13.27,9.52,21.52
                    l-20.32-15.19L302.11,248.65z M311.11,197.93c-0.01,0.06-0.03,0.16-0.04,0.23c-0.07,0.41-1.36,7.78-7.95,16.31l-10.71-8.01
                    l19.72-14.75C311.86,193.75,311.52,195.83,311.11,197.93z M303.07,149.01c4.51,7.01,7.43,14.49,8.79,22.52l-19.45-14.54
                    L303.07,149.01z M296.28,140.14l-13.21,9.87l-23.75-17.76l14.37-10.74C281.37,126.4,289.42,132.44,296.28,140.14z M240.11,113.38
                    c1.95-1.09,4.06-2.52,6.23-3.14c5.04-1.43,9.23,0.72,13.54,3.13c1.1,0.63,2.27,1.27,3.44,1.94l-13.33,9.96l-13.33-9.96
                    C237.81,114.67,238.97,114.03,240.11,113.38z M226.29,121.51l14.37,10.74l-23.74,17.76l-13.21-9.88
                    C210.57,132.44,218.62,126.4,226.29,121.51z M196.91,149.01l10.67,7.98l-19.45,14.55C189.48,163.5,192.4,156.02,196.91,149.01z
                    M196.87,214.46c-6.59-8.53-7.88-15.9-7.94-16.27c-0.01-0.09-0.03-0.17-0.05-0.26c-0.42-2.11-0.76-4.18-1.01-6.23l19.72,14.75
                    L196.87,214.46z M207.59,255.92l-20.32,15.19c0.03-8.09,3.32-15.77,9.05-21.1c0.5-0.46,1-0.91,1.54-1.36L207.59,255.92z" />
                      </g>
                    </svg>
                    @lang('front.muslim_guide')</a>
                  <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink6">
                    <a class="dropdown-item text-capitalize link_href" href="{{url('sebha')}}">@lang('front.sebha')</a>
                    <a class="dropdown-item text-capitalize link_href" href="{{url('zakah')}}">@lang('front.zakah')</a>
                    @if (request()->get("OpID") == 9 )

                    @elseif ( request()->get("OpID") == ooredoo )

                    @else
                    <a class="dropdown-item text-capitalize link_href" href="{{url('merath')}}">@lang('front.merath')</a>
                    @endif
                    @if ( request()->get("OpID") == mbc)

                    @else
                    <a class="dropdown-item text-capitalize link_href" href="{{url('salah_time')}}">@lang('front.prayer')</a>
                    @endif
                    <a class="dropdown-item text-capitalize link_href" href="{{url('mosque')}}"> @lang('front.mosque')</a>
                  </div>
                </li>

                @if(session()->has('check_status_id') && session()->has('status') && session()->get('status') == 'active')
                <li class="nav-item ">
                  @if(request()->get('OpID') == omantel && session()->has('menu_unsub_omantel') &&
                  session()->get('menu_unsub_omantel') == 'active' )
                  <a class="nav-link text-capitalize" href="{{route('front.unsub')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                  @elseif(request()->get('OpID') == du && session()->has('menu_unsub_du') &&
                  session()->get('menu_unsub_du') == 'active' )
                  <a class="nav-link text-capitalize" href="{{route('front.du_unsub')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                  @endif
                </li>

                <li class="nav-item ">
                  @if(request()->get('OpID') == omantel && session()->has('menu_unsub_omantel') &&
                  session()->get('menu_unsub_omantel') == 'active' )
                  <a class="nav-link text-capitalize" href="{{route('front.logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                  @elseif(request()->get('OpID') == du && session()->has('menu_unsub_du') &&
                  session()->get('menu_unsub_du') == 'active' )
                  <a class="nav-link text-capitalize" href="{{route('front.du_logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                  @endif
                </li>
                @endif

                @if ( request()->get("OpID") == mbc )
                <li class="nav-item">
                  <a class="nav-link text-capitalize link_href" href="{{url('/terms')}}" style=" <?php echo $style ?>">
                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" style="enable-background:new 0 0 500 500;" xml:space="preserve">
                      <g>
                        <path d="M112.62,249.8c0-47.71-0.07-95.43,0.03-143.14c0.05-26.24,13.3-39.3,39.81-39.35c41.99-0.09,84-0.77,125.95,0.53
                        c9.8,0.3,21.41,5.29,28.71,11.95c23.6,21.51,46.26,44.18,67.79,67.77c6.67,7.31,11.99,18.93,12.13,28.65c1,72.99,0.61,146,0.5,219
                        c-0.04,25.22-13.62,38.62-39.1,38.66c-65.85,0.09-131.69,0.11-197.54-0.01c-24.46-0.05-38.17-13.7-38.24-38.05
                        C112.51,347.14,112.62,298.47,112.62,249.8z M273.01,90.2c-40.77,0-79.82-0.06-118.86,0.03c-16.42,0.04-18.6,2.35-18.61,19.48
                        c-0.04,94.01-0.04,188.02,0,282.03c0.01,16.96,2.21,19.21,18.87,19.23c63.47,0.06,126.94,0.05,190.4,0.01
                        c17.77-0.01,19.81-2.04,19.83-19.74c0.04-65.38,0.03-130.75-0.02-196.13c0-4.12-0.5-8.24-0.83-13.25
                        c-16.15,0-31.35,0.17-46.54-0.04c-26.63-0.36-43.82-17.4-44.2-43.87C272.83,122.72,273.01,107.49,273.01,90.2z M296.12,104.42
                        c0,12.15-1.88,25.25,0.76,37.37c1.42,6.53,9.86,14.81,16.44,16.23c12.09,2.62,25.14,0.75,37.32,0.75
                        C332.39,140.59,314.65,122.9,296.12,104.42z" />
                        <path d="M181.97,249.62c0-7.46,0-13.97,0-21.2c45.61,0,90.61,0,136.24,0c0,7.2,0,13.71,0,21.2
                        C273.17,249.62,228.17,249.62,181.97,249.62z" />
                        <path d="M318.21,274.47c0,7.48,0,13.98,0,21.21c-45.62,0-90.62,0-136.24,0c0-7.23,0-13.73,0-21.21
                        C227.04,274.47,272.04,274.47,318.21,274.47z" />
                        <path d="M181.6,341.39c0-7.49,0-13.66,0-20.94c29.91,0,59.62,0,90.37,0c0,6.41,0,13.23,0,20.94
                        C242.34,341.39,212.62,341.39,181.6,341.39z" />
                      </g>
                    </svg>

                    @lang('front.terms')
                    <span class="sr-only">(current)</span>
                  </a>
                </li>

                <li class="nav-item">
                  <a class="nav-link text-capitalize link_href" href="{{url('/faq')}}" style=" <?php echo $style ?>">
                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" style="enable-background:new 0 0 500 500;" xml:space="preserve">
                      <g>
                        <path d="M425.71,254.85c0.07,96.65-78.89,175.7-175.63,175.8C153.48,430.76,74.34,351.68,74.29,255
                        c-0.05-96.66,78.91-175.7,175.63-175.79C346.56,79.12,425.63,158.13,425.71,254.85z M249.81,398.64
                        c78.34,0.51,143.21-63.73,143.89-142.51c0.69-79.51-63.51-144.43-143.33-144.92c-78.61-0.49-143.46,63.74-144.08,142.69
                        C105.67,333.37,169.88,398.12,249.81,398.64z" />
                        <path d="M234.13,296.79c0.49-26.33,12.27-46.83,32.86-62.5c10.73-8.16,16.2-18.33,14.54-31.92c-1.86-15.16-15.51-27.04-31.32-27.29
                        c-15.35-0.24-29.4,11.51-31.63,26.49c-0.31,2.09-0.47,4.21-0.63,6.33c-0.67,8.97-7.48,15.21-16.37,15
                        c-8.55-0.2-15.17-6.93-15.38-15.64c-0.74-30.37,22.59-58.32,52.65-63.08c36.53-5.78,69.14,17.6,74.27,54.23
                        c3.31,23.62-5.11,43.27-23.43,58.73c-5.49,4.63-10.92,9.53-15.43,15.07c-6.07,7.47-8.42,16.54-8.39,26.21
                        c0.01,2.86,0.13,5.81-0.52,8.55c-1.86,7.74-9.14,12.51-17.28,11.68c-7.65-0.77-13.59-7.18-13.94-15.12
                        C234.05,301.28,234.13,299.03,234.13,296.79z" />
                        <path d="M250.01,334.87c8.92,0.01,15.87,6.96,15.86,15.89c-0.01,8.91-6.98,15.87-15.9,15.86c-8.92-0.01-15.86-6.98-15.85-15.91
                        C234.14,341.74,241.03,334.86,250.01,334.87z" />
                      </g>
                    </svg>

                    @lang('front.faq')
                    <span class="sr-only">(current)</span>
                  </a>
                </li>

                <li class="nav-item">
                  <a class="nav-link text-capitalize link_href" href="{{url('/profile')}}" style=" <?php echo $style ?>">
                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" style="enable-background:new 0 0 500 500;" xml:space="preserve">
                      <g>
                        <path d="M429.66,250.5c-0.73,99.14-78.96,176.9-174.87,179.36c-101.62,2.6-183.95-78.67-184.46-178.78
                      c-0.5-98.69,78.5-179.81,178.02-180.52C348.98,69.84,429.24,149.88,429.66,250.5z M378.82,337.26
                      c41.8-59.58,37.17-151.57-29.65-207.2C283.62,75.49,185.2,84.6,130.55,150.41c-52.64,63.39-40.87,144.61-8.93,186.64
                      C192.26,265.29,308.68,265.41,378.82,337.26z M363.41,356.23c-62.47-67.34-168.84-63.48-226.38,0.21
                      C197.26,423.21,305.84,421.15,363.41,356.23z" />
                        <path d="M321.95,190.49c0.02,39.34-32.36,71.69-71.7,71.65c-39.6-0.04-72.01-32.14-72.04-71.34
                      c-0.03-40.35,32.07-72.43,72.48-72.42C289.85,118.38,321.93,150.84,321.95,190.49z M202.18,190.01
                      c-0.05,26.6,21.36,48.11,47.93,48.15c26.28,0.04,47.8-21.47,47.89-47.86c0.08-26.29-21.5-47.96-47.76-47.96
                      C223.78,142.35,202.23,163.73,202.18,190.01z" />
                      </g>
                    </svg>

                    @lang('front.profile')
                    <span class="sr-only">(current)</span>
                  </a>
                </li>
                @else
                @endif

                @if((session()->get('mbc_op_id') == MBC_OP_ID && session()->get('status') == 'active' && session()->has('MSISDN')))
                <li class="nav-item">
                  <a class="nav-link text-capitalize link_href" href="{{url('/mbc_portal_logout')}}" style=" <?php echo $style ?>">
                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" style="enable-background:new 0 0 500 500;" xml:space="preserve">
                      <g>
                        <path d="M410.58,235.55c0.04-0.05,0.07-0.1,0.11-0.14c0.16-0.21,0.32-0.42,0.47-0.64c0.09-0.14,0.17-0.28,0.26-0.42
                  c0.08-0.14,0.17-0.27,0.24-0.41c0.1-0.19,0.19-0.38,0.27-0.57c0.05-0.1,0.1-0.2,0.14-0.31c0.1-0.23,0.18-0.47,0.26-0.71
                  c0.02-0.07,0.05-0.14,0.07-0.21c0.09-0.31,0.17-0.61,0.24-0.92c0-0.01,0-0.01,0-0.02c0.67-3.24-0.25-6.74-2.76-9.25l-50.79-50.79
                  c-3.97-3.97-10.4-3.97-14.37,0c-3.97,3.97-3.97,10.4,0,14.37l33.47,33.47H274.04c-5.61,0-10.16,4.55-10.16,10.16
                  c0,5.61,4.55,10.16,10.16,10.16h104.14l-33.44,33.44c-3.97,3.97-3.97,10.4,0,14.37c1.98,1.99,4.58,2.98,7.18,2.98
                  c2.6,0,5.2-0.99,7.19-2.99l50.7-50.7C410.08,236.13,410.34,235.85,410.58,235.55z" />
                        <path d="M294.36,263c-5.61,0-10.16,4.55-10.16,10.16v60.94c0,9.33-7.6,16.93-16.93,16.93h-44.02V141.12
                  c0-11.55-7.35-21.88-18.45-25.76l-81.5-27.15c-2.75-0.85-5.5-1.26-8.4-1.26c-14.94,0-27.09,12.15-27.09,27.09v243.78
                  c0,11.55,7.36,21.88,18.45,25.76l81.51,27.15c2.75,0.85,5.5,1.26,8.4,1.26c14.94,0,27.08-12.15,27.08-27.09v-13.54h44.02
                  c20.55,0,37.24-16.7,37.24-37.24v-60.94C304.52,267.55,299.97,263,294.36,263z M202.94,384.89c0,3.72-3.05,6.77-6.77,6.77
                  c-0.87,0-1.63-0.11-2.21-0.3l-81.12-27.03c-2.76-0.96-4.7-3.64-4.7-6.53V114.03c0-3.72,3.05-6.77,6.77-6.77
                  c0.87,0,1.62,0.11,2.21,0.3l81.12,27.03c2.76,0.96,4.7,3.64,4.7,6.53V384.89z" />
                      </g>
                    </svg>
                    @lang('front.logout')
                    <span class="sr-only">(current)</span>
                  </a>
                </li>
                @endif

                <li class="nav-item">
                  @if(request()->get('OpID') == ooredoo && session()->has('ooredoo_op_id') && session()->get('status') ==
                  'active' )
                  <a class="nav-link text-capitalize" href="{{url('ooredoo_q_unsub')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                  @elseif(request()->get('OpID') == imi_op_id() && session()->has('imi_op_id') && session()->get('status')
                  == 'active' )
                  <a class="nav-link text-capitalize" href="{{url('imi/unsubscribe')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                  @endif
                </li>

                <li class="nav-item ">
                  @if(request()->get('OpID') == ooredoo && session()->has('ooredoo_op_id') && session()->get('status') ==
                  'active' )
                  <a class="nav-link text-capitalize" href="{{url('ooredoo_q_logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                  @elseif(request()->get('OpID') == imi_op_id() && session()->has('imi_op_id') && session()->get('status')
                  == 'active' )
                  <a class="nav-link text-capitalize" href="{{url('imi/logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                  @endif
                </li>
              </ul>
            </div>
          </nav>
          <!-- end menu 1  -->
        </div>

        @if(request()->get('OpID') == mbc || request()->get('OpID') == orange)
        <?php
        if (request()->get('OpID') == mbc) $style_color = "#efc049";
        if (request()->get('OpID') == orange) $style_color = "#FF6600";

        ?>
        <!-- start menu 3  -->
        <nav class="navbar navbar-expand-lg navbar-light " style="cursor: pointer;">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="col-md-12 col-lg-12 col-xl-12 col-12 no_padding close_nav">
              <div class="navbar_ul_three navbar navbar-nav mr-auto">
                <?php
                $style = "background: transparent;";
                ?>
                <!-- <li class="nav-item">
                  <a class="nav-link text-capitalize active_menu link_href" href="{{route('front.index')}}" style=" <?php echo $style ?>color:$style_color!important;margin-top: 0px;">
                    @lang('front.home')
                    <span class="sr-only">(current)</span>
                  </a>
                </li> -->
                @foreach(provider_menu() as $provider)
                <li class="nav-item dropdown">
                  <a class="menuThree nav-link dropdown-toggle slide_toggle text-capitalize ul_menu" id="navbarDropdownMenuLink7" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    @if($provider->image)
                    @else
                    <i class="icon_before fas fa-mosque fa-lg"></i>
                    @endif
                    {{$provider->getTranslation('title',getCode())}}
                  </a>
                  <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink7">
                    @foreach($provider->services as $value)
                    <?php
                    if ($provider->id == 23 && $value->id == 40  && request()->get("OpID") == 12) { // The Holy Quran and TIMWE
                      continue;
                    }
                    ?>
                    <a class="dropdown-item text-capitalize link_href ul_menu" href="{{route('front.list',['service_id' => $value->id])}}">{{$value->getTranslation('title',getCode())}}</a>
                    @endforeach
                  </div>
                </li>
                @endforeach

                <li class="nav-item dropdown">
                  <a class="menuThree nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink8" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                    @lang('front.muslim_guide')</a>
                  <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink8">
                    <a class="menuThree dropdown-item text-capitalize link_href" href="{{url('sebha')}}">@lang('front.sebha')</a>
                    <a class="menuThree dropdown-item text-capitalize link_href" href="{{url('zakah')}}">@lang('front.zakah')</a>
                    @if (request()->get("OpID") == 9 )

                    @elseif ( request()->get("OpID") == ooredoo )

                    @else
                    <a class="menuThree dropdown-item text-capitalize link_href" href="{{url('merath')}}">@lang('front.merath')</a>
                    @endif
                    @if ( request()->get("OpID") == mbc )

                    @else
                    <a class="menuThree dropdown-item text-capitalize link_href" href="{{url('salah_time')}}">@lang('front.prayer')</a>
                    @endif
                    <a class="menuThree dropdown-item text-capitalize link_href" href="{{url('mosque')}}"> @lang('front.mosque')</a>
                  </div>
                </li>

                @if ( request()->get("OpID") == mbc )
                <li class="nav-item dropdown">
                  <a class="menuThree nav-link dropdown-toggle slide_toggle text-capitalize ul_menu" id="navbarDropdownMenuLink9" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Terms and Faq
                  </a>
                  <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink9">
                    <a class="menuThree dropdown-item text-capitalize link_href ul_menu" href="{{url('/terms')}}">@lang('front.terms')</a>
                    <a class="menuThree dropdown-item text-capitalize link_href ul_menu" href="{{url('/faq')}}">@lang('front.faq')</a>
                  </div>
                </li>
                @endif

                @if ( request()->get("OpID") == mbc )
                <li class="nav-item">
                  <a class="menuThree nav-link text-capitalize link_href" href="{{url('/profile')}}" style=" <?php echo $style ?>">
                    @lang('front.profile')
                    <span class="sr-only">(current)</span>
                  </a>
                </li>
                @endif
              </div>
            </div>
        </nav>
        <!-- end menu 3  -->
        @else
        @endif
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
  <script src="{{asset('front/js/js_PrayTimes.js')}}"></script>

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
    // $(document).on('click','.play_za',function(){
    //   var _this = this
    //   if($(this).children('.fa-play').hasClass('fa-play')){
    //     $(this).children('.fa-play').removeClass('fa-play').addClass('fa-pause')

    //       $('.play_za').not(this).each(function(){
    //         $(this).children('.fa-play').removeClass('fa-pause').addClass('fa-play')
    //       });
    //   }
    //   else{
    //     $(this).children('.fa-play').removeClass('fa-pause').addClass('fa-play')
    //   }
    // })

    document.addEventListener('contextmenu', function(e) {
      if("{{get_setting('inspector_debug')}}" == "0")
      e.preventDefault();
    });

// Disable debuging by setting flag
    document.onkeydown = function(e) {
      if("{{get_setting('inspector_debug')}}" == "0"){  // debuging is disable
        if(
        event.keyCode == 123   // f12
        || e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)   // ctrl+shift+I
        || e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)  // ctrl+shift+C
        || e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)
        || e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)  // CTRL+u

        ) {
          return false;
        }
      }
    }
  </script>

@if(request()->get('OpID') == mbc)
<script>
    function openNav() {
      document.getElementById("mySidenav").style.width = "266px";
      $('.sidenav').css('border', '2px solid #aa6620');
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
      $('.sidenav').css('border', '0');
    }
  </script>
@elseif(request()->get('OpID') == orange)
<script>
    function openNav() {
      document.getElementById("mySidenav").style.width = "266px";
      $('.sidenav').css('border', '2px solid #fe6600');
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
      $('.sidenav').css('border', '0');
    }
  </script>
@else @endif

  @yield('script')
</body>

</html>
