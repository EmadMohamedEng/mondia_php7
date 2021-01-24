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

  @elseif(request()->has('OpID') && request()->get('OpID') == zain_kw)
  <link rel="shortcut icon" href="{{asset('front/images/zain_kw.png')}}">

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

  @if(request()->get('OpID') == mbc)
  @include("front.operator.mbc.head")

  @elseif(request()->get('OpID') == orange)
  @include("front.operator.orange.head")

  @elseif(request()->get('OpID') == zain_kw)
  @include("front.operator.zain_kw.head")

  @elseif(request()->get('OpID') == ooredoo_kw)
  @include("front.operator.ooredoo_kw.head")

  @elseif(request()->get('OpID') == du)
  @include("front.operator.du.head")

  @elseif(request()->get('OpID') == omantel)
  @include("front.operator.omantel.head")

  @elseif(request()->get('OpID') == stc)
  @include("front.operator.stc.head")

  @elseif(request()->get('OpID') == stc_ksa)
  @include("front.operator.stc_ksa.head")

  @else
  @include("front.operator.ooredoo.head")
  @endif

  <script>
    window.base_url = '{{url("/")}}';
    window.lang = "{{session()->get('applocale')}}";
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
    @if(request()->get('OpID') == mbc)
    @include("front.operator.mbc.master")

    @elseif(request()->get('OpID') == orange)
    @include("front.operator.orange.master")

    @elseif(request()->get('OpID') == zain_kw)
    @include("front.operator.zain_kw.master")

    @elseif(request()->get('OpID') == du)
    @include("front.operator.du.master")

    @elseif(request()->get('OpID') == omantel)
    @include("front.operator.omantel.master")

    @elseif(request()->get('OpID') == stc)
    @include("front.operator.stc.master")

    @elseif(request()->get('OpID') == stc_ksa)
    @include("front.operator.stc_ksa.master")

    @else
    @include("front.operator.ooredoo.master")
    @endif
  </main>

  <!-- loading -->
  <div class="loading-overlay">
    <span class="spinner spinner-large spinner-blue spinner-slow"></span>
  </div>
  <!-- end loading -->

  <script src="{{asset('front/js/jquery-3.3.1.min.js')}}"></script>
  <script src="{{asset('front/js/popper.min.js')}}"></script>
  <script src="{{asset('front/js/bootstrap.min.js')}}"></script>
  <script src="{{asset('front/js/owl.carousel.min.js')}}"></script>
  @if(request()->get('OpID') == mbc)
  <script src="{{asset('front/js/mbc/script.js')}}"></script>

  @elseif(request()->get('OpID') == orange)
  <script src="{{asset('front/js/orange/script.js')}}"></script>

  @elseif(request()->get('OpID') == zain_kw)
  <script src="{{asset('front/js/zain_kw/script.js')}}"></script>

  @elseif(request()->get('OpID') == du)
  <script src="{{asset('front/js/du/script.js')}}"></script>

  @elseif(request()->get('OpID') == omantel)
  <script src="{{asset('front/js/omantel/script.js')}}"></script>

  @elseif(request()->get('OpID') == stc)
  <script src="{{asset('front/js/stc/script.js')}}"></script>

  @elseif(request()->get('OpID') == stc_ksa)
  <script src="{{asset('front/js/stc_ksa/script.js')}}"></script>

  @elseif(request()->get('OpID') == ooredoo)
  <script src="{{asset('front/js/ooredoo/script.js')}}"></script>

  @else
  <script src="{{asset('front/js/script.js')}}"></script>
  @endif

  <script src="{{asset('front/js/js_PrayTimes.js')}}"></script>


  <script>
    op_id = {{ isset($_REQUEST['OpID']) ? 1 : 0 }}
    if (op_id) {
      var operator_id = {{ isset($_REQUEST['OpID']) ? $_REQUEST['OpID'] : '' }}
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
      if ("{{get_setting('inspector_debug')}}" == "0")
        e.preventDefault();
    });

    // Disable debuging by setting flag
    document.onkeydown = function(e) {
      if ("{{get_setting('inspector_debug')}}" == "0") { // debuging is disable
        if (
          event.keyCode == 123 // f12
          ||
          e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0) // ctrl+shift+I
          ||
          e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0) // ctrl+shift+C
          ||
          e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0) ||
          e.ctrlKey && e.keyCode == 'U'.charCodeAt(0) // CTRL+u

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
  @elseif(request()->get('OpID') == orange || request()->get('OpID') == zain_kw)
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
  @else
  @endif

  @yield('script')
</body>
</html>
