<header class="header w-100">
  <div class="row">
    <div class="col-md-2 col-lg-2 col-xl-4 col-2 d-flex justify-content-start">
      <span class="open_icon_nav_mbc" onclick="openNav()">&#9776;</span>
    </div>

    <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-0 d-flex justify-content-center">
      <div class="header_logo">
        <a href="{{route('front.index')}}" class="link_href">

          <div class="row">
            <div class="col-md-6 col-6 p-0 logo_orange">
              <img class="bounce-top" src='{{asset("front/images/orange.png")}}' alt='Logo'>
            </div>

            <div class="col-md-6 col-6 img_khir p-0">
              <img class="bounce-top" src='{{asset("front/images/orange/el_kheer.png")}}' alt='Logo'>
            </div>
          </div>
        </a>
      </div>
    </div>

    <div class="col-md-4 col-lg-4 col-xl-4 col-4 d-flex justify-content-end">
      <div class="lang_mbc">
        <a class="nav-link nav-link2 dropdown-toggle slide_toggle text-capitalize p-0" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{array_key_exists(Session::get('applocale'), Config::get('languages'))?config()->get('languages')[getCode()] : 'English'}}</a>
        <div class="dropdown-menu dropdown-menu2 dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink1">
          @foreach(Config::get('languages') as $key=>$lang)
          @php
          if ($key == 'ur' && request()->get('OpID') == orange)
          continue;
          @endphp
          <a class="dropdown-item text-capitalize" href="{{url('lang/'.$key)}}">{{$lang}}</a>
          @endforeach
        </div>
      </div>
    </div>
  </div>
</header>

<div class="row m-0">
  <div class="" style="z-index: 9999999999;">
    <!-- start burger menu => For MBC & Orange Only  -->
    <div class="burger_menu">
      <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn_mbc" onclick="closeNav()"><i class="fas fa-times"></i></a>
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
                  <img class="pulsate-bck" src="{{asset('front/images/orange.png')}}" alt="Logo">
                </a>
              </div>
            </div>
          </li>

          <div class="border-bottom"></div>

          <?php
          $style = "background: transparent;";
          $color = "color:#FFF!important";
          $svg =  "fill: #FFF";
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

              <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 488.477 488.477" style="enable-background:new 0 0 488.477 488.477;" xml:space="preserve">
                <g>
                  <path d="M472.227,35.998H16.25C7.29,35.998,0,43.288,0,52.248v383.98c0,8.961,7.29,16.25,16.25,16.25h455.977
                    c8.96,0,16.25-7.289,16.25-16.25V52.248C488.477,43.288,481.187,35.998,472.227,35.998z M8.5,269.795
                    c8.632-7.003,18.187-12.819,28.452-17.27c29.968-12.996,63.203-13.544,93.585-1.541c30.38,12.002,54.269,35.117,67.265,65.087
                    c13.004,29.988,13.292,64.555,0.883,95.235H8.5V269.795z M205.6,312.689c-13.899-32.053-39.448-56.774-71.94-69.61
                    c-32.492-12.837-68.039-12.251-100.09,1.648c-8.89,3.855-17.292,8.657-25.07,14.324v-71.738l37.286-16.169l10.427,24.048
                    c0.766,1.766,2.626,2.802,4.527,2.512c14.637-2.186,29.51-2.429,44.209-0.718c1.919,0.219,3.736-0.869,4.444-2.66l9.636-24.388
                    l75.301,29.748l-9.635,24.388c-0.708,1.791-0.122,3.834,1.426,4.979c11.915,8.811,22.61,19.158,31.79,30.752
                    c1.294,1.636,3.56,2.069,5.35,1.103l23.714-10.283l32.21,74.282l-23.667,10.263c-0.029,0.009-0.058,0.019-0.086,0.029
                    c-1.933,0.67-3.113,2.622-2.811,4.645c2.192,14.644,2.435,29.525,0.722,44.23c-0.223,1.913,0.869,3.737,2.661,4.444l24.389,9.632
                    l-5.198,13.156h-67.388C219.788,379.331,219.058,343.726,205.6,312.689z M283.73,390.329l-21.597-8.529
                    c1.299-13.296,1.081-26.706-0.65-39.954l21.293-9.234c4.183-1.813,6.108-6.698,4.293-10.89l-32.383-74.68
                    c-1.818-4.189-6.698-6.122-10.882-4.309l-21.295,9.234c-8.479-10.308-18.118-19.631-28.72-27.779l8.531-21.595
                    c1.673-4.237-0.418-9.052-4.667-10.735l-75.706-29.908c-4.247-1.675-9.066,0.41-10.74,4.649l-8.532,21.594
                    c-13.296-1.297-26.705-1.08-39.951,0.649l-9.235-21.297c-1.817-4.183-6.703-6.104-10.891-4.286L8.5,178.047v-75.241h471.477v43.833
                    h-88.882c-2.347,0-4.25,1.903-4.25,4.25s1.903,4.25,4.25,4.25h88.882v256.167H284.333l4.043-10.233
                    C290.052,396.825,287.969,392.006,283.73,390.329z M16.25,44.498h455.977c4.273,0,7.75,3.476,7.75,7.75v15.058H170.095
                    c-2.347,0-4.25,1.903-4.25,4.25s1.903,4.25,4.25,4.25h309.882v18.5H8.5V52.248C8.5,47.975,11.977,44.498,16.25,44.498z
                      M472.227,443.978H16.25c-4.273,0-7.75-3.477-7.75-7.75v-16.423h471.477v16.423C479.977,440.502,476.5,443.978,472.227,443.978z" />
                  <path d="M38.095,84.806c8.409,0,15.25-6.841,15.25-15.25s-6.841-15.25-15.25-15.25c-8.409,0-15.25,6.841-15.25,15.25
                    S29.686,84.806,38.095,84.806z M38.095,62.806c3.722,0,6.75,3.028,6.75,6.75s-3.028,6.75-6.75,6.75c-3.722,0-6.75-3.028-6.75-6.75
                    S34.373,62.806,38.095,62.806z" />
                  <path d="M80.595,84.806c8.409,0,15.25-6.841,15.25-15.25s-6.841-15.25-15.25-15.25c-8.409,0-15.25,6.841-15.25,15.25
                    S72.186,84.806,80.595,84.806z M80.595,62.806c3.722,0,6.75,3.028,6.75,6.75s-3.028,6.75-6.75,6.75c-3.722,0-6.75-3.028-6.75-6.75
                    S76.873,62.806,80.595,62.806z" />
                  <path d="M123.095,84.806c8.409,0,15.25-6.841,15.25-15.25s-6.841-15.25-15.25-15.25c-8.409,0-15.25,6.841-15.25,15.25
                    S114.686,84.806,123.095,84.806z M123.095,62.806c3.722,0,6.75,3.028,6.75,6.75s-3.028,6.75-6.75,6.75
                    c-3.722,0-6.75-3.028-6.75-6.75S119.373,62.806,123.095,62.806z" />
                  <path d="M52.633,288.691c-2.153,0.934-3.142,3.437-2.208,5.59c0.935,2.154,3.438,3.141,5.59,2.208
                    c37.625-16.315,81.507,1.022,97.823,38.646c0.695,1.603,2.259,2.56,3.901,2.56c0.564,0,1.138-0.113,1.689-0.352
                    c2.153-0.934,3.142-3.437,2.208-5.59C143.456,289.83,94.557,270.512,52.633,288.691z" />
                </g>
              </svg>

              @lang('front.muslim_guide')</a>
            <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink3">
              <a class="dropdown-item text-capitalize link_href" href="{{url('sebha')}}">@lang('front.sebha')</a>
              <a class="dropdown-item text-capitalize link_href" href="{{url('zakah')}}">@lang('front.zakah')</a>
              <a class="dropdown-item text-capitalize link_href" href="{{url('merath')}}">@lang('front.merath')</a>
              <a class="dropdown-item text-capitalize link_href" href="{{url('salah_time')}}">@lang('front.prayer')</a>
              <a class="dropdown-item text-capitalize link_href" href="{{url('mosque')}}"> @lang('front.mosque')</a>
            </div>
          </li>

          @if(count_list() > 0)
          <li class="nav-item">
            <a class="menuTwo nav-link text-capitalize link_href" href="{{route('front.rbts')}}" style=" <?php echo $style ?>">
            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 19.18 18.82"><defs></defs><title>volume</title><path class="cls-1" d="M23.09,15l-.09.42a3,3,0,0,1-2.84,2.25c-1.68,0-3.36,0-5,0a.9.9,0,0,0-.39.1c-1.49.78-3,1.57-4.46,2.37a1.33,1.33,0,0,1-1.49,0A1.3,1.3,0,0,1,8.22,19V17.69c-.39,0-.77,0-1.15,0a3.74,3.74,0,0,1-1-.11,2.93,2.93,0,0,1-2.18-2.45.45.45,0,0,0,0-.11V6.58a.31.31,0,0,1,.37-.18c.17.06.2.2.19.36v7.81A2.44,2.44,0,0,0,7,17.12H8.4c.3,0,.39.09.39.38V19a.75.75,0,0,0,1.17.7l4.58-2.43a1.08,1.08,0,0,1,.5-.12h5a2.43,2.43,0,0,0,2.45-1.91,2.6,2.6,0,0,0,.06-.56V4.59a2.44,2.44,0,0,0-2.47-2.47H7A2.45,2.45,0,0,0,4.47,4.61v.83c0,.15,0,.3-.18.36s-.28,0-.38-.15V4.22a.53.53,0,0,0,0-.12A3,3,0,0,1,6.85,1.56h13.3A3,3,0,0,1,23,3.88c0,.11.06.23.08.34Z" transform="translate(-3.91 -1.56)"/><path class="cls-1" d="M19.64,9.68a6.87,6.87,0,0,1-.52,2.67c-.06.14-.15.25-.32.23s-.28-.2-.21-.44A10.49,10.49,0,0,0,19,10.61a5.92,5.92,0,0,0-1.62-5.07l-.1-.11a.26.26,0,0,1,0-.37.26.26,0,0,1,.38,0,7,7,0,0,1,.52.57A6.56,6.56,0,0,1,19.64,9.68Z" transform="translate(-3.91 -1.56)"/><path class="cls-1" d="M17.73,9.86A4.71,4.71,0,0,1,16.4,13a.3.3,0,0,1-.4.1c-.17-.09-.19-.3,0-.47a4,4,0,0,0,.93-1.48,4.12,4.12,0,0,0-.84-4.25l0,0c-.2-.22-.22-.37-.08-.5s.29-.1.5.12A4.82,4.82,0,0,1,17.73,9.86Z" transform="translate(-3.91 -1.56)"/><path class="cls-1" d="M18.6,13.26a1.64,1.64,0,0,1-.1.22l-.77.94a.29.29,0,1,1-.42-.38l.74-.89a.26.26,0,0,1,.34-.11C18.47,13.08,18.53,13.19,18.6,13.26Z" transform="translate(-3.91 -1.56)"/><path class="cls-1" d="M14.66,5.6c0-.23-.1-.33-.33-.33H13.06a2.37,2.37,0,0,0-2.18,1.55l-.09.25H9.19A1.45,1.45,0,0,0,7.66,8.6v2.3a1.46,1.46,0,0,0,1.53,1.54h1.44c.13,0,.17.05.22.17a2.2,2.2,0,0,0,1.79,1.58,10.56,10.56,0,0,0,1.78.05c.18,0,.24-.14.24-.31Zm-4,6.2,0,0H9A.85.85,0,0,1,8.19,11V8.5A.85.85,0,0,1,9,7.66h1.64l0,0Zm3.4-5.74c0,2.45,0,4.91,0,7.36,0,.18-.05.24-.23.23-.37,0-.74,0-1.1,0a1.7,1.7,0,0,1-1.42-1.56c0-.67,0-1.34,0-2s0-1.58,0-2.37a1.81,1.81,0,0,1,1.85-1.81h.94Z" transform="translate(-3.91 -1.56)"/></svg>
              @lang('front.azin')
              <span class="sr-only">(current)</span>
            </a>
          </li>
          @endif

          @if((session()->get('orange_op_id') == orange && session()->get('status') == 'active' && session()->has('MSISDN')))
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

            <li class="nav-item">
              <a class="menuTwo nav-link text-capitalize link_href" href="{{url('/orange_logout')}}" style=" <?php echo $style ?>">
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
      </div>
    </div>
    <!-- end burger menu => For MBC & Orange Only  -->

    <!-- start menu 1 => For All Operator / Mobile Menu / And Sidenav for PC ( Oman - DU - STC ) -->
    <div class="menu_all_op">
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
                    <img class="" src="{{asset('front/images/orange.png')}}" alt="Logo">
                  </a>
                </div>
              </div>
            </li>

            <li class="nav-item">
              <div class="row m-0">
                <div class="col-6 p-0">
                  <div class="nav_item_welc text-capitalize font-weight-bolder">@lang('front.welcome')</div>
                </div>
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
                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 488.477 488.477" style="enable-background:new 0 0 488.477 488.477;" xml:space="preserve">
                  <g>
                    <path d="M472.227,35.998H16.25C7.29,35.998,0,43.288,0,52.248v383.98c0,8.961,7.29,16.25,16.25,16.25h455.977
                        c8.96,0,16.25-7.289,16.25-16.25V52.248C488.477,43.288,481.187,35.998,472.227,35.998z M8.5,269.795
                        c8.632-7.003,18.187-12.819,28.452-17.27c29.968-12.996,63.203-13.544,93.585-1.541c30.38,12.002,54.269,35.117,67.265,65.087
                        c13.004,29.988,13.292,64.555,0.883,95.235H8.5V269.795z M205.6,312.689c-13.899-32.053-39.448-56.774-71.94-69.61
                        c-32.492-12.837-68.039-12.251-100.09,1.648c-8.89,3.855-17.292,8.657-25.07,14.324v-71.738l37.286-16.169l10.427,24.048
                        c0.766,1.766,2.626,2.802,4.527,2.512c14.637-2.186,29.51-2.429,44.209-0.718c1.919,0.219,3.736-0.869,4.444-2.66l9.636-24.388
                        l75.301,29.748l-9.635,24.388c-0.708,1.791-0.122,3.834,1.426,4.979c11.915,8.811,22.61,19.158,31.79,30.752
                        c1.294,1.636,3.56,2.069,5.35,1.103l23.714-10.283l32.21,74.282l-23.667,10.263c-0.029,0.009-0.058,0.019-0.086,0.029
                        c-1.933,0.67-3.113,2.622-2.811,4.645c2.192,14.644,2.435,29.525,0.722,44.23c-0.223,1.913,0.869,3.737,2.661,4.444l24.389,9.632
                        l-5.198,13.156h-67.388C219.788,379.331,219.058,343.726,205.6,312.689z M283.73,390.329l-21.597-8.529
                        c1.299-13.296,1.081-26.706-0.65-39.954l21.293-9.234c4.183-1.813,6.108-6.698,4.293-10.89l-32.383-74.68
                        c-1.818-4.189-6.698-6.122-10.882-4.309l-21.295,9.234c-8.479-10.308-18.118-19.631-28.72-27.779l8.531-21.595
                        c1.673-4.237-0.418-9.052-4.667-10.735l-75.706-29.908c-4.247-1.675-9.066,0.41-10.74,4.649l-8.532,21.594
                        c-13.296-1.297-26.705-1.08-39.951,0.649l-9.235-21.297c-1.817-4.183-6.703-6.104-10.891-4.286L8.5,178.047v-75.241h471.477v43.833
                        h-88.882c-2.347,0-4.25,1.903-4.25,4.25s1.903,4.25,4.25,4.25h88.882v256.167H284.333l4.043-10.233
                        C290.052,396.825,287.969,392.006,283.73,390.329z M16.25,44.498h455.977c4.273,0,7.75,3.476,7.75,7.75v15.058H170.095
                        c-2.347,0-4.25,1.903-4.25,4.25s1.903,4.25,4.25,4.25h309.882v18.5H8.5V52.248C8.5,47.975,11.977,44.498,16.25,44.498z
                          M472.227,443.978H16.25c-4.273,0-7.75-3.477-7.75-7.75v-16.423h471.477v16.423C479.977,440.502,476.5,443.978,472.227,443.978z" />
                    <path d="M38.095,84.806c8.409,0,15.25-6.841,15.25-15.25s-6.841-15.25-15.25-15.25c-8.409,0-15.25,6.841-15.25,15.25
                        S29.686,84.806,38.095,84.806z M38.095,62.806c3.722,0,6.75,3.028,6.75,6.75s-3.028,6.75-6.75,6.75c-3.722,0-6.75-3.028-6.75-6.75
                        S34.373,62.806,38.095,62.806z" />
                    <path d="M80.595,84.806c8.409,0,15.25-6.841,15.25-15.25s-6.841-15.25-15.25-15.25c-8.409,0-15.25,6.841-15.25,15.25
                        S72.186,84.806,80.595,84.806z M80.595,62.806c3.722,0,6.75,3.028,6.75,6.75s-3.028,6.75-6.75,6.75c-3.722,0-6.75-3.028-6.75-6.75
                        S76.873,62.806,80.595,62.806z" />
                    <path d="M123.095,84.806c8.409,0,15.25-6.841,15.25-15.25s-6.841-15.25-15.25-15.25c-8.409,0-15.25,6.841-15.25,15.25
                        S114.686,84.806,123.095,84.806z M123.095,62.806c3.722,0,6.75,3.028,6.75,6.75s-3.028,6.75-6.75,6.75
                        c-3.722,0-6.75-3.028-6.75-6.75S119.373,62.806,123.095,62.806z" />
                    <path d="M52.633,288.691c-2.153,0.934-3.142,3.437-2.208,5.59c0.935,2.154,3.438,3.141,5.59,2.208
                        c37.625-16.315,81.507,1.022,97.823,38.646c0.695,1.603,2.259,2.56,3.901,2.56c0.564,0,1.138-0.113,1.689-0.352
                        c2.153-0.934,3.142-3.437,2.208-5.59C143.456,289.83,94.557,270.512,52.633,288.691z" />
                  </g>
                </svg>
                @lang('front.muslim_guide')</a>
              <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink6">
                <a class="dropdown-item text-capitalize link_href" href="{{url('sebha')}}">@lang('front.sebha')</a>
                <a class="dropdown-item text-capitalize link_href" href="{{url('zakah')}}">@lang('front.zakah')</a>
                <a class="dropdown-item text-capitalize link_href" href="{{url('merath')}}">@lang('front.merath')</a>
                <a class="dropdown-item text-capitalize link_href" href="{{url('salah_time')}}">@lang('front.prayer')</a>
                <a class="dropdown-item text-capitalize link_href" href="{{url('mosque')}}"> @lang('front.mosque')</a>
              </div>
            </li>

            @if(count_list() > 0)
            <li class="nav-item">
            <a class="menuTwo nav-link text-capitalize link_href" href="{{route('front.rbts')}}" style=" <?php echo $style ?>">
              <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 19.18 18.82"><defs></defs><title>volume</title><path class="cls-1" d="M23.09,15l-.09.42a3,3,0,0,1-2.84,2.25c-1.68,0-3.36,0-5,0a.9.9,0,0,0-.39.1c-1.49.78-3,1.57-4.46,2.37a1.33,1.33,0,0,1-1.49,0A1.3,1.3,0,0,1,8.22,19V17.69c-.39,0-.77,0-1.15,0a3.74,3.74,0,0,1-1-.11,2.93,2.93,0,0,1-2.18-2.45.45.45,0,0,0,0-.11V6.58a.31.31,0,0,1,.37-.18c.17.06.2.2.19.36v7.81A2.44,2.44,0,0,0,7,17.12H8.4c.3,0,.39.09.39.38V19a.75.75,0,0,0,1.17.7l4.58-2.43a1.08,1.08,0,0,1,.5-.12h5a2.43,2.43,0,0,0,2.45-1.91,2.6,2.6,0,0,0,.06-.56V4.59a2.44,2.44,0,0,0-2.47-2.47H7A2.45,2.45,0,0,0,4.47,4.61v.83c0,.15,0,.3-.18.36s-.28,0-.38-.15V4.22a.53.53,0,0,0,0-.12A3,3,0,0,1,6.85,1.56h13.3A3,3,0,0,1,23,3.88c0,.11.06.23.08.34Z" transform="translate(-3.91 -1.56)"/><path class="cls-1" d="M19.64,9.68a6.87,6.87,0,0,1-.52,2.67c-.06.14-.15.25-.32.23s-.28-.2-.21-.44A10.49,10.49,0,0,0,19,10.61a5.92,5.92,0,0,0-1.62-5.07l-.1-.11a.26.26,0,0,1,0-.37.26.26,0,0,1,.38,0,7,7,0,0,1,.52.57A6.56,6.56,0,0,1,19.64,9.68Z" transform="translate(-3.91 -1.56)"/><path class="cls-1" d="M17.73,9.86A4.71,4.71,0,0,1,16.4,13a.3.3,0,0,1-.4.1c-.17-.09-.19-.3,0-.47a4,4,0,0,0,.93-1.48,4.12,4.12,0,0,0-.84-4.25l0,0c-.2-.22-.22-.37-.08-.5s.29-.1.5.12A4.82,4.82,0,0,1,17.73,9.86Z" transform="translate(-3.91 -1.56)"/><path class="cls-1" d="M18.6,13.26a1.64,1.64,0,0,1-.1.22l-.77.94a.29.29,0,1,1-.42-.38l.74-.89a.26.26,0,0,1,.34-.11C18.47,13.08,18.53,13.19,18.6,13.26Z" transform="translate(-3.91 -1.56)"/><path class="cls-1" d="M14.66,5.6c0-.23-.1-.33-.33-.33H13.06a2.37,2.37,0,0,0-2.18,1.55l-.09.25H9.19A1.45,1.45,0,0,0,7.66,8.6v2.3a1.46,1.46,0,0,0,1.53,1.54h1.44c.13,0,.17.05.22.17a2.2,2.2,0,0,0,1.79,1.58,10.56,10.56,0,0,0,1.78.05c.18,0,.24-.14.24-.31Zm-4,6.2,0,0H9A.85.85,0,0,1,8.19,11V8.5A.85.85,0,0,1,9,7.66h1.64l0,0Zm3.4-5.74c0,2.45,0,4.91,0,7.36,0,.18-.05.24-.23.23-.37,0-.74,0-1.1,0a1.7,1.7,0,0,1-1.42-1.56c0-.67,0-1.34,0-2s0-1.58,0-2.37a1.81,1.81,0,0,1,1.85-1.81h.94Z" transform="translate(-3.91 -1.56)"/></svg>
              @lang('front.azin')
              <span class="sr-only">(current)</span>
            </a>
          </li>
          @endif

            @if((session()->get('orange_op_id') == orange && session()->get('status') == 'active' && session()->has('MSISDN')))
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
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-capitalize link_href" href="{{url('/orange_logout')}}" style=" <?php echo $style ?>">
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
        </div>
      </nav>
    </div>
    <!-- end menu 1 => For All Operator / Mobile Menu / And Sidenav for PC ( Oman - DU - STC ) -->
  </div>

  <?php
  $style_color = "#FF6600";
  ?>

  <!-- start menu 3 => For MBC & Orange Only  -->
  <div class="mbc_orange">
    <nav class="navbar navbar-expand-lg navbar-light navbar_three " style="cursor: pointer;">
      <button class="navbar-toggler nav_btn" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
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
              <a class="menuThree nav-link dropdown-toggle slide_toggle text-capitalize ul_menu" id="navbarDropdownMenuLink7" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style=" <?php echo $style ?>">
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
              <a class="menuThree nav-link dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink8" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style=" <?php echo $style ?>">

                @lang('front.muslim_guide')</a>
              <div class="dropdown-menu dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink8">
                <a class="menuThree dropdown-item text-capitalize link_href" href="{{url('sebha')}}">@lang('front.sebha')</a>
                <a class="menuThree dropdown-item text-capitalize link_href" href="{{url('zakah')}}">@lang('front.zakah')</a>
                <a class="menuThree dropdown-item text-capitalize link_href" href="{{url('merath')}}">@lang('front.merath')</a>
                <a class="menuThree dropdown-item text-capitalize link_href" href="{{url('salah_time')}}">@lang('front.prayer')</a>
                <a class="menuThree dropdown-item text-capitalize link_href" href="{{url('mosque')}}"> @lang('front.mosque')</a>
              </div>
            </li>
            @if(count_list() > 0)
                      <li class="nav-item">
                        <a class="menuTwo nav-link text-capitalize link_href menuThree " href="{{route('front.rbts')}}" style=" <?php echo $style ?>">
                          @lang('front.azin')
                          <span class="sr-only">(current)</span>
                        </a>
                      </li>
            @endif



            @if((session()->get('orange_op_id') == orange && session()->get('status') == 'active' && session()->has('MSISDN')))
            <li class="nav-item m-auto">
              <a class="menuThree nav-link text-capitalize link_href" href="{{url('/profile')}}" style=" <?php echo $style ?>">
                @lang('front.profile')
              </a>
            </li>
            <li class="nav-item">
            <a class="menuThree nav-link text-capitalize link_href" href="{{url('/orange_logout')}}" style=" <?php echo $style ?>">
                @lang('front.logout')
                <span class="sr-only">(current)</span>
              </a>
            </li>
            @endif
          </div>
        </div>
    </nav>
  </div>
  <!-- end menu 3 => For MBC & Orange Only -->
  @yield('content')
</div>
