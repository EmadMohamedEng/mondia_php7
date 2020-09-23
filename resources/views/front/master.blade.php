<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="url" content="{{url('/')}}">
  @if(request()->has('OpID') && request()->get('OpID') == omantel)
  <link rel="shortcut icon" href="{{asset('front/images/omantel_logo.png')}}">
  @elseif(request()->has('OpID') && request()->get('OpID') == stc)
  <link rel="shortcut icon" href="{{asset('front/images/STC01.png')}}">
  @elseif(request()->has('OpID') && request()->get('OpID') == mbc)
  <link rel="shortcut icon" href="{{asset('front/images/mbc_header - fav.png')}}">
  @else
  <link rel="shortcut icon" href="{{asset('front/images/favicon.ico')}}">
  @endif
  <title> @yield('page_title')</title>
  <link rel="stylesheet" href="{{asset('front/css/all.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/bootstrap.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/owl.carousel.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/owl.theme.default.css')}}">
  <link rel="stylesheet" href="{{asset('/front/css/animate.css')}}">
  @if(request()->has('OpID') && request()->get('OpID') == omantel)
  <link rel="stylesheet" href="{{asset('front/css/style_en_oman.css')}}">
  @elseif(request()->has('OpID') && request()->get('OpID') == stc)
  <link rel="stylesheet" href="{{asset('front/css/style_en_stc.css')}}">
  @elseif(request()->has('OpID') && request()->get('OpID') == mbc)
  <link rel="stylesheet" href="{{asset('front/css/style_en_mbc.css')}}">
  
  @else
  <link rel="stylesheet" href="{{asset('front/css/style_en.css')}}">
  @endif

@if(request()->get('OpID') == mbc)
  @if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur' )
  <link rel="stylesheet" href="{{asset('front/css/style_mbc_2_ar.css')}}">
  @else
  <link rel="stylesheet" href="{{asset('front/css/style_mbc_2.css')}}">
  @endif
@endif


  @if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
  <link rel="stylesheet" href="{{asset('front/css/style_ar.css')}}">
  @endif

  <style>
    .active_menu {
      color: #000;

      background: {
          {
          request()->get('OpID')==omantel ? '#ff9e1b': 'linear-gradient(to right, #00205b 0, #753bbd 30%, #00a9ce 60%)'
        }
      }

      ;
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
<body>
  <main class="main_container">
    <header class="header w-100">
      <div class="row">
        <div class="col-md-12 col-lg-12 col-xl-12 col-12">
          <div class="header_logo">
          @if(request()->get('OpID') == mbc)
          <span class="open_icon_nav_mbc" onclick="openNav()">&#9776;</span>
          @else
          <a class="arrow_back back" href="#0">
              <i class="fas fa-angle-left fa-lg"></i>
            </a>
          @endif


            <a href="{{route('front.index')}}" class="link_href">
              <!-- {{request()->get('OpID') == omantel ? '<img src="front/images/Du_header.png" alt="Logo">':'<img src="front/images/Du_header.png" alt="Logo">'}} -->
              @if(request()->get('OpID') == omantel)
              <img class="bounce-top" src='{{asset("front/images/omantel_header.png")}}' alt='Logo'>
              @elseif(request()->get('OpID') == du)
              <img class="bounce-top" src='{{asset("front/images/Du_header.png")}}' alt='Logo'>
              @elseif(request()->get('OpID') == mbc)
              <img class="bounce-top" src='{{asset("front/images/mbc_header.png")}}' alt='Logo'>
              @else
              {{-- <img class="bounce-top" src='{{asset("front/images/daleel_elmuslim.png")}}' alt='Logo'> --}}
              @lang('front.Daleel Al Muslim')
              @endif
            </a>

            @if(request()->get('OpID') == mbc)
            <div>

                              <div class="row m-0">
                                <div class="col-6 p-0 lang_show">
                                  <a class="nav-link nav-link2  slide_toggle text-capitalize"
                                    id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">{{array_key_exists(Session::get('applocale'), Config::get('languages'))?config()->get('languages')[getCode()] : 'English'}}
                                  </a>
                                  
                                    <div class="dropdown-menu dropdown-menu2 dropdown-primary slideContent lang_color"
                                    aria-labelledby="navbarDropdownMenuLink1">
                                    @foreach(Config::get('languages') as $key=>$lang)
                                    <a class="dropdown-item dropdown-item2 text-capitalize" href="{{url('lang/'.$key)}}">{{$lang}}</a>
                                    
                                    @endforeach
                                  </div>
                                </div>
                              </div>


            </div>
           
          <div class="row m-0">
             <div class="col-6 p-0 angle_show">
             <i class="fas fa-angle-down"></i>
              </div>
           </div>
           @else
          @endif
          </div>
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
    @if(request()->get('OpID') == mbc)
      <div class="" style="z-index: 9999999999;">
      <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn_mbc" onclick="closeNav()">&times;</a>
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
                      @else
                      {{-- <img class="pulsate-bck" src="{{asset('front/images/daleel_elmuslim.png')}}" alt="Logo"> --}}
                      @endif

                    </a>
                  </div>
                </div>
              </li>



              <div class="border-bottom"></div>

              <?php
              if(request()->get('OpID') == 9 || request()->get('OpID') == 10 || request()->get('OpID') == 11 || request()->get('OpID') == 12 || request()->get('OpID') == 13  ){
              $style = "background: #FFF;" ;

              }else{
                $style = "background: transparent;" ;
              }

              ?>


              <li class="nav-item">
                <a class="nav-link text-capitalize active_menu link_href" href="{{route('front.index')}}"
                  style=" <?php echo $style ?>color:#efc049!important">
                  <svg version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 27 22"
                    style="enable-background:new 0 0 27 22;" xml:space="preserve">
                    <path class="st0"
                      d="M21.8,9.6L21.8,9.6l-7.3-7.3c-0.3-0.3-0.8-0.5-1.2-0.5c-0.5,0-0.9,0.2-1.2,0.5L4.9,9.6l0,0  c-0.7,0.7-0.7,1.7,0,2.3c0.3,0.3,0.7,0.5,1.1,0.5c0,0,0,0,0.1,0h0.3v5.4c0,1.1,0.9,1.9,1.9,1.9h2.9c0.3,0,0.5-0.2,0.5-0.5V15  c0-0.5,0.4-0.9,0.9-0.9h1.7c0.5,0,0.9,0.4,0.9,0.9v4.2c0,0.3,0.2,0.5,0.5,0.5h2.9c1.1,0,1.9-0.9,1.9-1.9v-5.4h0.3  c0.5,0,0.9-0.2,1.2-0.5C22.5,11.3,22.5,10.3,21.8,9.6z M21,11.2c-0.1,0.1-0.3,0.2-0.4,0.2h-0.8c-0.3,0-0.5,0.2-0.5,0.5v5.9  c0,0.5-0.4,0.9-0.9,0.9h-2.3V15c0-1.1-0.9-1.9-1.9-1.9h-1.7c-1.1,0-1.9,0.9-1.9,1.9v3.6H8.4c-0.5,0-0.9-0.4-0.9-0.9v-5.9  c0-0.3-0.2-0.5-0.5-0.5H6.2l0,0c-0.2,0-0.3-0.1-0.4-0.2c-0.2-0.2-0.2-0.6,0-0.9l0,0l0,0l7.3-7.3c0.1-0.1,0.3-0.2,0.4-0.2  c0.2,0,0.3,0.1,0.4,0.2l7.3,7.3l0,0C21.3,10.7,21.3,11,21,11.2z" />
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
                  <path class="st0"
                    d="M22.8,10.7l-2.5-2.5V4.7c0-0.3-0.3-0.6-0.6-0.6h-3.5l-2.5-2.5c-0.1-0.1-0.2-0.2-0.4-0.2   c-0.1,0-0.3,0.1-0.4,0.2l-2.5,2.5H7c-0.3,0-0.6,0.3-0.6,0.6v3.5l-2.5,2.5c-0.2,0.2-0.2,0.6,0,0.8L6.4,14v3.5c0,0.3,0.3,0.6,0.6,0.6   h3.5l2.5,2.5c0.1,0.1,0.2,0.2,0.4,0.2s0.3-0.1,0.4-0.2l2.5-2.5h3.5c0.3,0,0.6-0.3,0.6-0.6V14l2.5-2.5c0.1-0.1,0.2-0.2,0.2-0.4   S22.9,10.8,22.8,10.7z M19.4,13.4c-0.1,0.1-0.2,0.2-0.2,0.4V17H16c-0.1,0-0.3,0.1-0.4,0.2l-2.2,2.2l-2.2-2.2C11,17,10.9,17,10.7,17   H7.5v-3.2c0-0.1-0.1-0.3-0.2-0.4l-2.2-2.2l2.2-2.2c0.1-0.1,0.2-0.2,0.2-0.4V5.3h3.2c0.1,0,0.3-0.1,0.4-0.2l2.2-2.2l2.2,2.2   c0.1,0.1,0.2,0.2,0.4,0.2h3.2v3.2c0,0.1,0.1,0.3,0.2,0.4l2.2,2.2L19.4,13.4z" />
                  <path class="st0"
                    d="M11.9,8.1C12,8.1,12,8,11.9,8.1C12,8,12,8,11.9,8.1l-0.3-1c0,0,0,0,0,0c0,0,0,0,0,0c-0.1,0-0.1,0.1-0.2,0.1   c-0.1,0.1-0.3,0.2-0.4,0.3c0,0,0,0,0,0.1c0.3,0.6,0.2,1.6,0.1,2.4c0,0.2,0,0.4-0.1,0.5c0,0.6-0.5,0.8-0.9,0.8   c-0.3,0-0.6-0.1-0.7-0.3c-0.1-0.2-0.1-0.5,0.1-0.9c0,0,0,0,0-0.1c0,0,0,0-0.1,0c-0.1,0-0.7,0.8-0.7,1.4c0,0.3,0.1,0.7,0.8,0.8   c0.1,0,0.1,0,0.2,0c0.7,0,1.7-0.3,1.8-1.2c0-0.1,0-0.3,0-0.6C11.5,9.6,11.6,8.1,11.9,8.1z" />
                  <path class="st0"
                    d="M18.4,10.5c-0.3,0-0.6-0.2-0.8-0.4c-0.1-0.1-0.2-0.2-0.3-0.2c-0.2-0.2-0.5-0.5-0.8-0.6c-0.1,0-0.1-0.1-0.2-0.1   c-0.4,0-0.8,0.5-0.8,0.8c0,0.1,0,0.2,0.2,0.3c0,0,0,0,0.1,0c0.1-0.2,0.2-0.3,0.4-0.3c0.2,0,0.3,0.2,0.5,0.3   c0.1,0.1,0.2,0.1,0.2,0.2c-0.3,0-0.6,0.1-0.8,0.1c-0.5,0-1-0.1-1-0.4C15,9.6,15.1,9,15.2,8.4c0.1-0.3,0.1-0.7,0.1-1c0,0,0,0,0-0.1   c0,0,0,0-0.1,0c-0.6,0.3-0.8,0.9-1,1.4c-0.1,0.4-0.3,0.8-0.6,1.1c-0.2-1.1-0.6-1.9-1.3-2.6c0,0,0,0-0.1,0c0,0,0,0,0,0   c0,0.1,0,0.2-0.1,0.3c-0.1,0.5-0.3,1,0.3,1.3c0,0,0,0,0.1,0c0,0,0,0,0,0l0-0.1c0.3,0.5,0.5,0.9,0.6,1.4c-0.2,0.1-0.4,0.3-0.6,0.4   c-0.3,0.1-0.6,0.3-0.7,0.5c0,0,0,0.1,0,0.1c0.2,0.2,0.4,0.4,0.7,0.4c0.8,0,1.6-1.4,1.9-2.2c0,0,0,0,0,0c-0.1,0.8-0.3,1.7,0.8,2   c0,0,0,0,0,0c0.1,0,0.2,0,0.3,0h0C16.1,11.4,18.2,11.4,18.4,10.5C18.5,10.6,18.5,10.6,18.4,10.5C18.5,10.5,18.4,10.5,18.4,10.5z" />
                  <polygon class="st0"
                    points="11,13.2 10.5,13.2 10.5,12.5 10.1,12.5 10.1,14.3 10.5,14.3 10.5,13.5 11,13.5 11,14.3 11.4,14.3    11.4,12.5 11,12.5  " />
                  <path class="st0"
                    d="M12,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H12z M12.1,13.6l0.1-0.7l0.1,0.7H12.1z" />
                  <polygon class="st0" points="13.4,12.5 13.1,12.5 13.1,14.3 14.1,14.3 14.1,14 13.4,14  " />
                  <path class="st0"
                    d="M14.6,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H14.6z M14.7,13.6l0.1-0.7l0.1,0.7H14.7z" />
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
                <a class="nav-link dropdown-toggle slide_toggle text-capitalize ul_menu" id="navbarDropdownMenuLink1"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  @if($provider->image)
                  {!! $provider->image !!}
                  @else
                  <i class="icon_before fas fa-mosque fa-lg"></i>
                  @endif
                  {{$provider->getTranslation('title',getCode())}}
                </a>
                <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">
                  @foreach($provider->services as $value)

                  <?php
                  if($provider->id == 23 && $value->id == 40  && request()->get("OpID") == 12  ){// The Holy Quran and TIMWE
                     continue ;
                  }
                  ?>

                  <a class="dropdown-item text-capitalize link_href ul_menu"
                    href="{{route('front.list',['service_id' => $value->id])}}">{{$value->getTranslation('title',getCode())}}</a>
                  @endforeach
                </div>
              </li>
              @endforeach


              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink1"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <svg version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 27 22" xml:space="preserve">
                    <g>
                      <path class="st0"
                        d="M22.8,10.7l-2.5-2.5V4.7c0-0.3-0.3-0.6-0.6-0.6h-3.5l-2.5-2.5c-0.1-0.1-0.2-0.2-0.4-0.2   c-0.1,0-0.3,0.1-0.4,0.2l-2.5,2.5H7c-0.3,0-0.6,0.3-0.6,0.6v3.5l-2.5,2.5c-0.2,0.2-0.2,0.6,0,0.8L6.4,14v3.5c0,0.3,0.3,0.6,0.6,0.6   h3.5l2.5,2.5c0.1,0.1,0.2,0.2,0.4,0.2s0.3-0.1,0.4-0.2l2.5-2.5h3.5c0.3,0,0.6-0.3,0.6-0.6V14l2.5-2.5c0.1-0.1,0.2-0.2,0.2-0.4   S22.9,10.8,22.8,10.7z M19.4,13.4c-0.1,0.1-0.2,0.2-0.2,0.4V17H16c-0.1,0-0.3,0.1-0.4,0.2l-2.2,2.2l-2.2-2.2C11,17,10.9,17,10.7,17   H7.5v-3.2c0-0.1-0.1-0.3-0.2-0.4l-2.2-2.2l2.2-2.2c0.1-0.1,0.2-0.2,0.2-0.4V5.3h3.2c0.1,0,0.3-0.1,0.4-0.2l2.2-2.2l2.2,2.2   c0.1,0.1,0.2,0.2,0.4,0.2h3.2v3.2c0,0.1,0.1,0.3,0.2,0.4l2.2,2.2L19.4,13.4z" />
                      <path class="st0"
                        d="M11.9,8.1C12,8.1,12,8,11.9,8.1C12,8,12,8,11.9,8.1l-0.3-1c0,0,0,0,0,0c0,0,0,0,0,0c-0.1,0-0.1,0.1-0.2,0.1   c-0.1,0.1-0.3,0.2-0.4,0.3c0,0,0,0,0,0.1c0.3,0.6,0.2,1.6,0.1,2.4c0,0.2,0,0.4-0.1,0.5c0,0.6-0.5,0.8-0.9,0.8   c-0.3,0-0.6-0.1-0.7-0.3c-0.1-0.2-0.1-0.5,0.1-0.9c0,0,0,0,0-0.1c0,0,0,0-0.1,0c-0.1,0-0.7,0.8-0.7,1.4c0,0.3,0.1,0.7,0.8,0.8   c0.1,0,0.1,0,0.2,0c0.7,0,1.7-0.3,1.8-1.2c0-0.1,0-0.3,0-0.6C11.5,9.6,11.6,8.1,11.9,8.1z" />
                      <path class="st0"
                        d="M18.4,10.5c-0.3,0-0.6-0.2-0.8-0.4c-0.1-0.1-0.2-0.2-0.3-0.2c-0.2-0.2-0.5-0.5-0.8-0.6c-0.1,0-0.1-0.1-0.2-0.1   c-0.4,0-0.8,0.5-0.8,0.8c0,0.1,0,0.2,0.2,0.3c0,0,0,0,0.1,0c0.1-0.2,0.2-0.3,0.4-0.3c0.2,0,0.3,0.2,0.5,0.3   c0.1,0.1,0.2,0.1,0.2,0.2c-0.3,0-0.6,0.1-0.8,0.1c-0.5,0-1-0.1-1-0.4C15,9.6,15.1,9,15.2,8.4c0.1-0.3,0.1-0.7,0.1-1c0,0,0,0,0-0.1   c0,0,0,0-0.1,0c-0.6,0.3-0.8,0.9-1,1.4c-0.1,0.4-0.3,0.8-0.6,1.1c-0.2-1.1-0.6-1.9-1.3-2.6c0,0,0,0-0.1,0c0,0,0,0,0,0   c0,0.1,0,0.2-0.1,0.3c-0.1,0.5-0.3,1,0.3,1.3c0,0,0,0,0.1,0c0,0,0,0,0,0l0-0.1c0.3,0.5,0.5,0.9,0.6,1.4c-0.2,0.1-0.4,0.3-0.6,0.4   c-0.3,0.1-0.6,0.3-0.7,0.5c0,0,0,0.1,0,0.1c0.2,0.2,0.4,0.4,0.7,0.4c0.8,0,1.6-1.4,1.9-2.2c0,0,0,0,0,0c-0.1,0.8-0.3,1.7,0.8,2   c0,0,0,0,0,0c0.1,0,0.2,0,0.3,0h0C16.1,11.4,18.2,11.4,18.4,10.5C18.5,10.6,18.5,10.6,18.4,10.5C18.5,10.5,18.4,10.5,18.4,10.5z" />
                      <polygon class="st0"
                        points="11,13.2 10.5,13.2 10.5,12.5 10.1,12.5 10.1,14.3 10.5,14.3 10.5,13.5 11,13.5 11,14.3 11.4,14.3    11.4,12.5 11,12.5  " />
                      <path class="st0"
                        d="M12,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H12z M12.1,13.6l0.1-0.7l0.1,0.7H12.1z" />
                      <polygon class="st0" points="13.4,12.5 13.1,12.5 13.1,14.3 14.1,14.3 14.1,14 13.4,14  " />
                      <path class="st0"
                        d="M14.6,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H14.6z M14.7,13.6l0.1-0.7l0.1,0.7H14.7z" />
                      <polygon class="st0" points="16.1,12.5 15.7,12.5 15.7,14.3 16.7,14.3 16.7,14 16.1,14  " />
                    </g>
                  </svg>
                  @lang('front.muslim_guide')</a>
                <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">


                  <a class="dropdown-item text-capitalize link_href" href="{{url('sebha')}}">@lang('front.sebha')</a>
                  <a class="dropdown-item text-capitalize link_href" href="{{url('zakah')}}">@lang('front.zakah')</a>
                  @if (request()->get("OpID") == 9 )

                  @elseif ( request()->get("OpID") == ooredoo )

                  @else
                  <a class="dropdown-item text-capitalize link_href" href="{{url('merath')}}">@lang('front.merath')</a>
                  @endif
                  @if ( request()->get("OpID") == mbc )

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
                <a class="nav-link text-capitalize" href="{{route('front.unsub')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                @elseif(request()->get('OpID') == du && session()->has('menu_unsub_du') &&
                session()->get('menu_unsub_du') == 'active' )
                <a class="nav-link text-capitalize" href="{{route('front.du_unsub')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                @endif
              </li>
              <li class="nav-item ">
                @if(request()->get('OpID') == omantel && session()->has('menu_unsub_omantel') &&
                session()->get('menu_unsub_omantel') == 'active' )
                <a class="nav-link text-capitalize" href="{{route('front.logout')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                @elseif(request()->get('OpID') == du && session()->has('menu_unsub_du') &&
                session()->get('menu_unsub_du') == 'active' )
                <a class="nav-link text-capitalize" href="{{route('front.du_logout')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                @endif
              </li>
              @endif

              <li class="nav-item ">
                @if(request()->get('OpID') == ooredoo && session()->has('ooredoo_op_id') && session()->get('status') ==
                'active' )
                <a class="nav-link text-capitalize" href="{{url('ooredoo_q_unsub')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                @elseif(request()->get('OpID') == imi_op_id() && session()->has('imi_op_id') && session()->get('status')
                == 'active' )
                <a class="nav-link text-capitalize" href="{{url('imi/unsubscribe')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                @endif
              </li>
              <li class="nav-item ">
                @if(request()->get('OpID') == ooredoo && session()->has('ooredoo_op_id') && session()->get('status') ==
                'active' )
                <a class="nav-link text-capitalize" href="{{url('ooredoo_q_logout')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                @elseif(request()->get('OpID') == imi_op_id() && session()->has('imi_op_id') && session()->get('status')
                == 'active' )
                <a class="nav-link text-capitalize" href="{{url('imi/logout')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                @endif
              </li>

              <li class="nav-item">
                <a class="nav-link text-capitalize link_href" href="{{url('/terms')}}"
                  style=" <?php echo $style ?>">
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 27 22" style="enable-background:new 0 0 27 22;" xml:space="preserve">
                  <g>     <path class="st0" d="M22.8,4.6v13.5h-8.4v0.3c0,0.5-0.4,1-1,1c-0.5,0-1-0.4-1-1v-0.3H4.1V4h0.6v13.5h17.4v-10h-0.6v9.3h-7.7V2.7   h1.6V2.1H4.7v1.3H3.4v15.5h8.4c0.1,0.7,0.8,1.3,1.6,1.3c0.8,0,1.4-0.6,1.6-1.3h8.4V4.6H22.8z M13.1,2.7v14.2H5.4c0,0,0-14.2,0-14.2   H13.1z"></path>     <path class="st0" d="M12.5,3.3H6v5.2h6.4V3.3z M11.8,7.8H6.7V4h5.2V7.8z"></path>     <rect x="11.8" y="15.6" class="st0" width="0.6" height="0.6"></rect>     <rect x="6" y="15.6" class="st0" width="5.2" height="0.6"></rect>     <rect x="6" y="14.3" class="st0" width="6.4" height="0.6"></rect>     <rect x="6" y="13" class="st0" width="6.4" height="0.6"></rect>     <rect x="6" y="11.7" class="st0" width="6.4" height="0.6"></rect>     <rect x="7.3" y="10.4" class="st0" width="5.2" height="0.6"></rect>     <rect x="6" y="10.4" class="st0" width="0.6" height="0.6"></rect>     <rect x="6" y="9.1" class="st0" width="6.4" height="0.6"></rect>     <rect x="20.2" y="15.6" class="st0" width="0.6" height="0.6"></rect>     <rect x="14.4" y="15.6" class="st0" width="5.2" height="0.6"></rect>     <rect x="14.4" y="14.3" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="13" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="11.7" class="st0" width="6.4" height="0.6"></rect>     <rect x="15.7" y="10.4" class="st0" width="5.2" height="0.6"></rect>     <rect x="14.4" y="10.4" class="st0" width="0.6" height="0.6"></rect>     <rect x="14.4" y="9.1" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="8" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="6.9" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="5.8" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="4.7" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="3.5" class="st0" width="6.4" height="0.6"></rect> </g> </svg>
                  @lang('front.terms')
                  <span class="sr-only">(current)</span>
                </a>
              </li>

              <li class="nav-item">
                <a class="nav-link text-capitalize link_href" href="{{url('/faq')}}"
                  style=" <?php echo $style ?>">
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 27 22" style="enable-background:new 0 0 27 22;" xml:space="preserve">
                  <g>     <path class="st0" d="M22.8,4.6v13.5h-8.4v0.3c0,0.5-0.4,1-1,1c-0.5,0-1-0.4-1-1v-0.3H4.1V4h0.6v13.5h17.4v-10h-0.6v9.3h-7.7V2.7   h1.6V2.1H4.7v1.3H3.4v15.5h8.4c0.1,0.7,0.8,1.3,1.6,1.3c0.8,0,1.4-0.6,1.6-1.3h8.4V4.6H22.8z M13.1,2.7v14.2H5.4c0,0,0-14.2,0-14.2   H13.1z"></path>     <path class="st0" d="M12.5,3.3H6v5.2h6.4V3.3z M11.8,7.8H6.7V4h5.2V7.8z"></path>     <rect x="11.8" y="15.6" class="st0" width="0.6" height="0.6"></rect>     <rect x="6" y="15.6" class="st0" width="5.2" height="0.6"></rect>     <rect x="6" y="14.3" class="st0" width="6.4" height="0.6"></rect>     <rect x="6" y="13" class="st0" width="6.4" height="0.6"></rect>     <rect x="6" y="11.7" class="st0" width="6.4" height="0.6"></rect>     <rect x="7.3" y="10.4" class="st0" width="5.2" height="0.6"></rect>     <rect x="6" y="10.4" class="st0" width="0.6" height="0.6"></rect>     <rect x="6" y="9.1" class="st0" width="6.4" height="0.6"></rect>     <rect x="20.2" y="15.6" class="st0" width="0.6" height="0.6"></rect>     <rect x="14.4" y="15.6" class="st0" width="5.2" height="0.6"></rect>     <rect x="14.4" y="14.3" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="13" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="11.7" class="st0" width="6.4" height="0.6"></rect>     <rect x="15.7" y="10.4" class="st0" width="5.2" height="0.6"></rect>     <rect x="14.4" y="10.4" class="st0" width="0.6" height="0.6"></rect>     <rect x="14.4" y="9.1" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="8" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="6.9" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="5.8" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="4.7" class="st0" width="6.4" height="0.6"></rect>     <rect x="14.4" y="3.5" class="st0" width="6.4" height="0.6"></rect> </g> </svg>
                  @lang('front.faq')
                  <span class="sr-only">(current)</span>
                </a>
              </li>

            </ul>
      </div>
      @else
      <div class="col-md-0 col-lg-0 col-xl-3 col-0 p-0" style="z-index: 9999999999">
      @endif
        <nav class="nav_nav navbar navbar-expand-xl primary-color">
          <button id="menu_toggle" class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#basicExampleNav" aria-controls="basicExampleNav" aria-expanded="false"
            aria-label="Toggle navigation">
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

                  <div class="col-6 p-0">
                    <a class="nav-link nav-link2 dropdown-toggle slide_toggle text-capitalize"
                      id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true"
                      aria-expanded="false">{{array_key_exists(Session::get('applocale'), Config::get('languages'))?config()->get('languages')[getCode()] : 'English'}}</a>
                    <div class="dropdown-menu dropdown-menu2 dropdown-primary slideContent"
                      aria-labelledby="navbarDropdownMenuLink1">
                      @foreach(Config::get('languages') as $key=>$lang)
                      <a class="dropdown-item dropdown-item2 text-capitalize" href="{{url('lang/'.$key)}}">{{$lang}}</a>
                      @endforeach
                    </div>
                  </div>
                </div>
              </li>

              <div class="border-bottom"></div>

              <?php
              if(request()->get('OpID') == 9 || request()->get('OpID') == 10 || request()->get('OpID') == 11 || request()->get('OpID') == 12 || request()->get('OpID') == 13  ){
              $style = "background: #FFF;" ;

              }else{
                $style = "background: transparent;" ;
              }

              ?>


              <li class="nav-item">
                <a class="nav-link text-capitalize active_menu link_href" href="{{route('front.index')}}"
                  style=" <?php echo $style ?>">
                  <svg version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 27 22"
                    style="enable-background:new 0 0 27 22;" xml:space="preserve">
                    <path class="st0"
                      d="M21.8,9.6L21.8,9.6l-7.3-7.3c-0.3-0.3-0.8-0.5-1.2-0.5c-0.5,0-0.9,0.2-1.2,0.5L4.9,9.6l0,0  c-0.7,0.7-0.7,1.7,0,2.3c0.3,0.3,0.7,0.5,1.1,0.5c0,0,0,0,0.1,0h0.3v5.4c0,1.1,0.9,1.9,1.9,1.9h2.9c0.3,0,0.5-0.2,0.5-0.5V15  c0-0.5,0.4-0.9,0.9-0.9h1.7c0.5,0,0.9,0.4,0.9,0.9v4.2c0,0.3,0.2,0.5,0.5,0.5h2.9c1.1,0,1.9-0.9,1.9-1.9v-5.4h0.3  c0.5,0,0.9-0.2,1.2-0.5C22.5,11.3,22.5,10.3,21.8,9.6z M21,11.2c-0.1,0.1-0.3,0.2-0.4,0.2h-0.8c-0.3,0-0.5,0.2-0.5,0.5v5.9  c0,0.5-0.4,0.9-0.9,0.9h-2.3V15c0-1.1-0.9-1.9-1.9-1.9h-1.7c-1.1,0-1.9,0.9-1.9,1.9v3.6H8.4c-0.5,0-0.9-0.4-0.9-0.9v-5.9  c0-0.3-0.2-0.5-0.5-0.5H6.2l0,0c-0.2,0-0.3-0.1-0.4-0.2c-0.2-0.2-0.2-0.6,0-0.9l0,0l0,0l7.3-7.3c0.1-0.1,0.3-0.2,0.4-0.2  c0.2,0,0.3,0.1,0.4,0.2l7.3,7.3l0,0C21.3,10.7,21.3,11,21,11.2z" />
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
                  <path class="st0"
                    d="M22.8,10.7l-2.5-2.5V4.7c0-0.3-0.3-0.6-0.6-0.6h-3.5l-2.5-2.5c-0.1-0.1-0.2-0.2-0.4-0.2   c-0.1,0-0.3,0.1-0.4,0.2l-2.5,2.5H7c-0.3,0-0.6,0.3-0.6,0.6v3.5l-2.5,2.5c-0.2,0.2-0.2,0.6,0,0.8L6.4,14v3.5c0,0.3,0.3,0.6,0.6,0.6   h3.5l2.5,2.5c0.1,0.1,0.2,0.2,0.4,0.2s0.3-0.1,0.4-0.2l2.5-2.5h3.5c0.3,0,0.6-0.3,0.6-0.6V14l2.5-2.5c0.1-0.1,0.2-0.2,0.2-0.4   S22.9,10.8,22.8,10.7z M19.4,13.4c-0.1,0.1-0.2,0.2-0.2,0.4V17H16c-0.1,0-0.3,0.1-0.4,0.2l-2.2,2.2l-2.2-2.2C11,17,10.9,17,10.7,17   H7.5v-3.2c0-0.1-0.1-0.3-0.2-0.4l-2.2-2.2l2.2-2.2c0.1-0.1,0.2-0.2,0.2-0.4V5.3h3.2c0.1,0,0.3-0.1,0.4-0.2l2.2-2.2l2.2,2.2   c0.1,0.1,0.2,0.2,0.4,0.2h3.2v3.2c0,0.1,0.1,0.3,0.2,0.4l2.2,2.2L19.4,13.4z" />
                  <path class="st0"
                    d="M11.9,8.1C12,8.1,12,8,11.9,8.1C12,8,12,8,11.9,8.1l-0.3-1c0,0,0,0,0,0c0,0,0,0,0,0c-0.1,0-0.1,0.1-0.2,0.1   c-0.1,0.1-0.3,0.2-0.4,0.3c0,0,0,0,0,0.1c0.3,0.6,0.2,1.6,0.1,2.4c0,0.2,0,0.4-0.1,0.5c0,0.6-0.5,0.8-0.9,0.8   c-0.3,0-0.6-0.1-0.7-0.3c-0.1-0.2-0.1-0.5,0.1-0.9c0,0,0,0,0-0.1c0,0,0,0-0.1,0c-0.1,0-0.7,0.8-0.7,1.4c0,0.3,0.1,0.7,0.8,0.8   c0.1,0,0.1,0,0.2,0c0.7,0,1.7-0.3,1.8-1.2c0-0.1,0-0.3,0-0.6C11.5,9.6,11.6,8.1,11.9,8.1z" />
                  <path class="st0"
                    d="M18.4,10.5c-0.3,0-0.6-0.2-0.8-0.4c-0.1-0.1-0.2-0.2-0.3-0.2c-0.2-0.2-0.5-0.5-0.8-0.6c-0.1,0-0.1-0.1-0.2-0.1   c-0.4,0-0.8,0.5-0.8,0.8c0,0.1,0,0.2,0.2,0.3c0,0,0,0,0.1,0c0.1-0.2,0.2-0.3,0.4-0.3c0.2,0,0.3,0.2,0.5,0.3   c0.1,0.1,0.2,0.1,0.2,0.2c-0.3,0-0.6,0.1-0.8,0.1c-0.5,0-1-0.1-1-0.4C15,9.6,15.1,9,15.2,8.4c0.1-0.3,0.1-0.7,0.1-1c0,0,0,0,0-0.1   c0,0,0,0-0.1,0c-0.6,0.3-0.8,0.9-1,1.4c-0.1,0.4-0.3,0.8-0.6,1.1c-0.2-1.1-0.6-1.9-1.3-2.6c0,0,0,0-0.1,0c0,0,0,0,0,0   c0,0.1,0,0.2-0.1,0.3c-0.1,0.5-0.3,1,0.3,1.3c0,0,0,0,0.1,0c0,0,0,0,0,0l0-0.1c0.3,0.5,0.5,0.9,0.6,1.4c-0.2,0.1-0.4,0.3-0.6,0.4   c-0.3,0.1-0.6,0.3-0.7,0.5c0,0,0,0.1,0,0.1c0.2,0.2,0.4,0.4,0.7,0.4c0.8,0,1.6-1.4,1.9-2.2c0,0,0,0,0,0c-0.1,0.8-0.3,1.7,0.8,2   c0,0,0,0,0,0c0.1,0,0.2,0,0.3,0h0C16.1,11.4,18.2,11.4,18.4,10.5C18.5,10.6,18.5,10.6,18.4,10.5C18.5,10.5,18.4,10.5,18.4,10.5z" />
                  <polygon class="st0"
                    points="11,13.2 10.5,13.2 10.5,12.5 10.1,12.5 10.1,14.3 10.5,14.3 10.5,13.5 11,13.5 11,14.3 11.4,14.3    11.4,12.5 11,12.5  " />
                  <path class="st0"
                    d="M12,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H12z M12.1,13.6l0.1-0.7l0.1,0.7H12.1z" />
                  <polygon class="st0" points="13.4,12.5 13.1,12.5 13.1,14.3 14.1,14.3 14.1,14 13.4,14  " />
                  <path class="st0"
                    d="M14.6,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H14.6z M14.7,13.6l0.1-0.7l0.1,0.7H14.7z" />
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
                <a class="nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink1"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  @if($provider->image)
                  {!! $provider->image !!}
                  @else
                  <i class="icon_before fas fa-mosque fa-lg"></i>
                  @endif
                  {{$provider->getTranslation('title',getCode())}}
                </a>
                <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">
                  @foreach($provider->services as $value)

                  <?php
                  if($provider->id == 23 && $value->id == 40  && request()->get("OpID") == 12  ){// The Holy Quran and TIMWE
                     continue ;
                  }
                  ?>

                  <a class="dropdown-item text-capitalize link_href"
                    href="{{route('front.list',['service_id' => $value->id])}}">{{$value->getTranslation('title',getCode())}}</a>
                  @endforeach
                </div>
              </li>
              @endforeach


              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink1"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <svg version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 27 22" xml:space="preserve">
                    <g>
                      <path class="st0"
                        d="M22.8,10.7l-2.5-2.5V4.7c0-0.3-0.3-0.6-0.6-0.6h-3.5l-2.5-2.5c-0.1-0.1-0.2-0.2-0.4-0.2   c-0.1,0-0.3,0.1-0.4,0.2l-2.5,2.5H7c-0.3,0-0.6,0.3-0.6,0.6v3.5l-2.5,2.5c-0.2,0.2-0.2,0.6,0,0.8L6.4,14v3.5c0,0.3,0.3,0.6,0.6,0.6   h3.5l2.5,2.5c0.1,0.1,0.2,0.2,0.4,0.2s0.3-0.1,0.4-0.2l2.5-2.5h3.5c0.3,0,0.6-0.3,0.6-0.6V14l2.5-2.5c0.1-0.1,0.2-0.2,0.2-0.4   S22.9,10.8,22.8,10.7z M19.4,13.4c-0.1,0.1-0.2,0.2-0.2,0.4V17H16c-0.1,0-0.3,0.1-0.4,0.2l-2.2,2.2l-2.2-2.2C11,17,10.9,17,10.7,17   H7.5v-3.2c0-0.1-0.1-0.3-0.2-0.4l-2.2-2.2l2.2-2.2c0.1-0.1,0.2-0.2,0.2-0.4V5.3h3.2c0.1,0,0.3-0.1,0.4-0.2l2.2-2.2l2.2,2.2   c0.1,0.1,0.2,0.2,0.4,0.2h3.2v3.2c0,0.1,0.1,0.3,0.2,0.4l2.2,2.2L19.4,13.4z" />
                      <path class="st0"
                        d="M11.9,8.1C12,8.1,12,8,11.9,8.1C12,8,12,8,11.9,8.1l-0.3-1c0,0,0,0,0,0c0,0,0,0,0,0c-0.1,0-0.1,0.1-0.2,0.1   c-0.1,0.1-0.3,0.2-0.4,0.3c0,0,0,0,0,0.1c0.3,0.6,0.2,1.6,0.1,2.4c0,0.2,0,0.4-0.1,0.5c0,0.6-0.5,0.8-0.9,0.8   c-0.3,0-0.6-0.1-0.7-0.3c-0.1-0.2-0.1-0.5,0.1-0.9c0,0,0,0,0-0.1c0,0,0,0-0.1,0c-0.1,0-0.7,0.8-0.7,1.4c0,0.3,0.1,0.7,0.8,0.8   c0.1,0,0.1,0,0.2,0c0.7,0,1.7-0.3,1.8-1.2c0-0.1,0-0.3,0-0.6C11.5,9.6,11.6,8.1,11.9,8.1z" />
                      <path class="st0"
                        d="M18.4,10.5c-0.3,0-0.6-0.2-0.8-0.4c-0.1-0.1-0.2-0.2-0.3-0.2c-0.2-0.2-0.5-0.5-0.8-0.6c-0.1,0-0.1-0.1-0.2-0.1   c-0.4,0-0.8,0.5-0.8,0.8c0,0.1,0,0.2,0.2,0.3c0,0,0,0,0.1,0c0.1-0.2,0.2-0.3,0.4-0.3c0.2,0,0.3,0.2,0.5,0.3   c0.1,0.1,0.2,0.1,0.2,0.2c-0.3,0-0.6,0.1-0.8,0.1c-0.5,0-1-0.1-1-0.4C15,9.6,15.1,9,15.2,8.4c0.1-0.3,0.1-0.7,0.1-1c0,0,0,0,0-0.1   c0,0,0,0-0.1,0c-0.6,0.3-0.8,0.9-1,1.4c-0.1,0.4-0.3,0.8-0.6,1.1c-0.2-1.1-0.6-1.9-1.3-2.6c0,0,0,0-0.1,0c0,0,0,0,0,0   c0,0.1,0,0.2-0.1,0.3c-0.1,0.5-0.3,1,0.3,1.3c0,0,0,0,0.1,0c0,0,0,0,0,0l0-0.1c0.3,0.5,0.5,0.9,0.6,1.4c-0.2,0.1-0.4,0.3-0.6,0.4   c-0.3,0.1-0.6,0.3-0.7,0.5c0,0,0,0.1,0,0.1c0.2,0.2,0.4,0.4,0.7,0.4c0.8,0,1.6-1.4,1.9-2.2c0,0,0,0,0,0c-0.1,0.8-0.3,1.7,0.8,2   c0,0,0,0,0,0c0.1,0,0.2,0,0.3,0h0C16.1,11.4,18.2,11.4,18.4,10.5C18.5,10.6,18.5,10.6,18.4,10.5C18.5,10.5,18.4,10.5,18.4,10.5z" />
                      <polygon class="st0"
                        points="11,13.2 10.5,13.2 10.5,12.5 10.1,12.5 10.1,14.3 10.5,14.3 10.5,13.5 11,13.5 11,14.3 11.4,14.3    11.4,12.5 11,12.5  " />
                      <path class="st0"
                        d="M12,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H12z M12.1,13.6l0.1-0.7l0.1,0.7H12.1z" />
                      <polygon class="st0" points="13.4,12.5 13.1,12.5 13.1,14.3 14.1,14.3 14.1,14 13.4,14  " />
                      <path class="st0"
                        d="M14.6,12.5l-0.4,1.8h0.4l0.1-0.4h0.4l0.1,0.4h0.4l-0.4-1.8H14.6z M14.7,13.6l0.1-0.7l0.1,0.7H14.7z" />
                      <polygon class="st0" points="16.1,12.5 15.7,12.5 15.7,14.3 16.7,14.3 16.7,14 16.1,14  " />
                    </g>
                  </svg>
                  @lang('front.muslim_guide')</a>
                <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">


                  <a class="dropdown-item text-capitalize link_href" href="{{url('sebha')}}">@lang('front.sebha')</a>
                  <a class="dropdown-item text-capitalize link_href" href="{{url('zakah')}}">@lang('front.zakah')</a>
                  @if (request()->get("OpID") == 9 )

                  @elseif ( request()->get("OpID") == ooredoo )

                  @else
                  <a class="dropdown-item text-capitalize link_href" href="{{url('merath')}}">@lang('front.merath')</a>
                  @endif
                  @if ( request()->get("OpID") == mbc )

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
                <a class="nav-link text-capitalize" href="{{route('front.unsub')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                @elseif(request()->get('OpID') == du && session()->has('menu_unsub_du') &&
                session()->get('menu_unsub_du') == 'active' )
                <a class="nav-link text-capitalize" href="{{route('front.du_unsub')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                @endif
              </li>
              <li class="nav-item ">
                @if(request()->get('OpID') == omantel && session()->has('menu_unsub_omantel') &&
                session()->get('menu_unsub_omantel') == 'active' )
                <a class="nav-link text-capitalize" href="{{route('front.logout')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                @elseif(request()->get('OpID') == du && session()->has('menu_unsub_du') &&
                session()->get('menu_unsub_du') == 'active' )
                <a class="nav-link text-capitalize" href="{{route('front.du_logout')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                @endif
              </li>
              @endif

              <li class="nav-item ">
                @if(request()->get('OpID') == ooredoo && session()->has('ooredoo_op_id') && session()->get('status') ==
                'active' )
                <a class="nav-link text-capitalize" href="{{url('ooredoo_q_unsub')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                @elseif(request()->get('OpID') == imi_op_id() && session()->has('imi_op_id') && session()->get('status')
                == 'active' )
                <a class="nav-link text-capitalize" href="{{url('imi/unsubscribe')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                @endif
              </li>
              <li class="nav-item ">
                @if(request()->get('OpID') == ooredoo && session()->has('ooredoo_op_id') && session()->get('status') ==
                'active' )
                <a class="nav-link text-capitalize" href="{{url('ooredoo_q_logout')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                @elseif(request()->get('OpID') == imi_op_id() && session()->has('imi_op_id') && session()->get('status')
                == 'active' )
                <a class="nav-link text-capitalize" href="{{url('imi/logout')}}"><i
                    class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                @endif
              </li>

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
  @if(request()->get('OpID') == mbc)
  <script src="{{asset('front/js/scriptmbc.js')}}"></script>
  @else
  <script src="{{asset('front/js/script.js')}}"></script>
  @endif
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


<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "266px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>

  @yield('script')
</body>

</html>
