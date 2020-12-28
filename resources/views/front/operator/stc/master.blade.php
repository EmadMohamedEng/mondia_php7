<header class="header w-100">
  <div class="row">
    <div class="col-md-7 col-lg-7 col-xl-7 col-7 p-0">
      <div class="header_logo">
        <a href="{{route('front.index')}}" class="link_href">
          @lang('front.Daleel Al Muslim')
        </a>
      </div>
    </div>

    <div class="col-md-5 col-lg-5 col-xl-5 col-5 d-flex justify-content-end">
      <a class="arrow_back back" href="#0">
        <i class="fas fa-angle-left fa-lg"></i>
      </a>
    </div>
  </div>
</header>

<div class="row m-0">
  <div class="col-md-0 col-lg-0 col-xl-4 col-0 p-0" style="z-index: 9999999999">
    <!-- start menu 1  -->
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
                    @lang('front.Daleel Al Muslim')
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
                  <a class="nav-link nav-link2 dropdown-toggle slide_toggle text-capitalize" id="navbarDropdownMenuLink4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{array_key_exists(Session::get('applocale'), Config::get('languages'))?config()->get('languages')[getCode()] : 'English'}}</a>
                  <div class="dropdown-menu dropdown-menu2 dropdown-primary slideContent" aria-labelledby="navbarDropdownMenuLink4">
                    @foreach(Config::get('languages') as $key=>$lang)
                    <a class="dropdown-item dropdown-item2 text-capitalize" href="{{url('lang/'.$key)}}">{{$lang}}</a>
                    @endforeach
                  </div>
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
                <a class="dropdown-item text-capitalize link_href" href="{{url('merath')}}">@lang('front.merath')</a>
                <a class="dropdown-item text-capitalize link_href" href="{{url('salah_time')}}">@lang('front.prayer')</a>
                <a class="dropdown-item text-capitalize link_href" href="{{url('mosque')}}"> @lang('front.mosque')</a>
              </div>
            </li>

          </ul>
        </div>
      </nav>
    </div>
    <!-- end menu 1 => For All Operator / Mobile Menu / And Sidenav for PC ( Oman - DU - STC ) -->
    <!-- end menu 1  -->
  </div>

  @yield('content')
</div>
