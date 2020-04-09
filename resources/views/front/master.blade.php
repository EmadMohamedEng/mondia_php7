<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="url" content="{{url('/')}}">
  <link rel="shortcut icon" href="{{request()->get('OpID') == omantel ? asset('front/images/omantel_logo.png') : asset('front/images/favicon.ico') }}">
  <title>{{get_setting('title_page')}} | @yield('page_title')</title>
  <link rel="stylesheet" href="{{asset('front/css/all.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/bootstrap.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/owl.carousel.min.css')}}">
  <link rel="stylesheet" href="{{asset('front/css/owl.theme.default.css')}}">
  <link rel="stylesheet" href="{{asset('/front/css/animate.css')}}">
  @if(request()->has('OpID') && request()->get('OpID') == omantel)
    <link rel="stylesheet" href="{{asset('front/css/style_en_oman.css')}}">
    @else
    <link rel="stylesheet" href="{{asset('front/css/style_en.css')}}">
    @endif

    @if(app()->getLocale() == 'ar')
    <link rel="stylesheet" href="{{asset('front/css/style_ar.css')}}">
    @endif

  <script>
    window.base_url = '{{url("/")}}';
  </script>
</head>

<body>
  <main class="main_container">
    <header class="header w-100">
      <div class="row">
        <div class="col-md-10 col-lg-10 col-xl-6 col-8">
          <div class="header_logo">
            <a class="arrow_back back" href="#0">
              <i class="fas fa-angle-left fa-lg"></i>
            </a>

            <a href="{{route('front.index')}}" class="link_href scale-up-bottom">
              <!-- <h6 class="h5">{{get_setting('title_page')}}</h6> -->
              <!-- <img src="front/images/omantel_logo.png" alt="Logo"> -->
              <svg style="fill: #fff" viewBox="0 0 66 32" preserveAspectRatio="xMidYMid meet" focusable="false">
                <path d="M39.713 22.116v1.156h0.047c0.263-0.457 0.646-0.818 1.107-1.049l0.015-0.007c0.403-0.199 0.876-0.316 1.378-0.316 0.010 0 0.020 0 0.030 0h-0.002c0.041-0.002 0.088-0.002 0.136-0.002 0.489 0 0.957 0.090 1.388 0.255l-0.027-0.009c0.372 0.144 0.683 0.378 0.916 0.675l0.004 0.005c0.225 0.302 0.39 0.662 0.468 1.054l0.003 0.017c0.088 0.415 0.139 0.892 0.139 1.38 0 0.010-0 0.020-0 0.031v-0.002 5.103h-2.272v-4.689c0.004-0.055 0.006-0.12 0.006-0.185 0-0.49-0.119-0.953-0.33-1.36l0.008 0.017c-0.229-0.309-0.592-0.506-1.001-0.506-0.047 0-0.094 0.003-0.139 0.008l0.006-0c-0.044-0.004-0.094-0.007-0.145-0.007-0.48 0-0.909 0.217-1.196 0.557l-0.002 0.002c-0.278 0.37-0.423 0.98-0.423 1.82v4.345h-2.269v-8.291zM33.488 26.539c-0.13 0.046-0.287 0.088-0.448 0.117l-0.019 0.003c-0.147 0.037-0.323 0.066-0.502 0.081l-0.013 0.001c-0.186 0.025-0.36 0.047-0.547 0.079-0.197 0.037-0.365 0.082-0.529 0.137l0.027-0.008c-0.163 0.049-0.305 0.123-0.43 0.217l0.003-0.002c-0.131 0.091-0.237 0.207-0.313 0.342l-0.003 0.005c-0.070 0.141-0.111 0.307-0.111 0.483 0 0.015 0 0.029 0.001 0.044l-0-0.002c-0 0.011-0.001 0.024-0.001 0.037 0 0.174 0.041 0.338 0.114 0.484l-0.003-0.006c0.078 0.131 0.185 0.238 0.312 0.314l0.004 0.002c0.129 0.076 0.28 0.132 0.441 0.16l0.008 0.001c0.152 0.034 0.326 0.054 0.505 0.054 0.007 0 0.013-0 0.020-0h-0.001c0.036 0.002 0.078 0.004 0.12 0.004 0.335 0 0.651-0.084 0.927-0.233l-0.010 0.005c0.229-0.132 0.415-0.316 0.546-0.537l0.004-0.007c0.109-0.182 0.184-0.396 0.211-0.624l0.001-0.008c0.022-0.146 0.038-0.322 0.044-0.5l0-0.009v-0.828c-0.104 0.083-0.224 0.151-0.354 0.199l-0.009 0.003zM29.007 23.335c0.234-0.352 0.539-0.638 0.897-0.843l0.013-0.007c0.352-0.208 0.762-0.368 1.196-0.46l0.027-0.005c0.408-0.080 0.877-0.126 1.356-0.126 0.003 0 0.006 0 0.009 0h-0c0.002 0 0.004 0 0.007 0 0.443 0 0.88 0.029 1.308 0.084l-0.051-0.005c0.437 0.063 0.832 0.185 1.197 0.358l-0.025-0.011c0.348 0.171 0.637 0.41 0.862 0.702l0.004 0.006c0.2 0.312 0.319 0.692 0.319 1.1 0 0.042-0.001 0.084-0.004 0.125l0-0.006v4.313c0.003 0.382 0.026 0.755 0.068 1.123l-0.004-0.048c0.028 0.287 0.108 0.549 0.23 0.786l-0.006-0.012h-2.307c-0.032-0.133-0.073-0.262-0.098-0.395s-0.041-0.269-0.054-0.411c-0.344 0.358-0.776 0.629-1.262 0.778l-0.021 0.006c-0.447 0.144-0.96 0.227-1.493 0.227-0 0-0.001 0-0.001 0h0c-0.008 0-0.017 0-0.026 0-0.385 0-0.759-0.053-1.112-0.152l0.029 0.007c-0.343-0.095-0.642-0.25-0.899-0.456l0.005 0.004c-0.256-0.203-0.459-0.46-0.595-0.755l-0.005-0.013c-0.134-0.306-0.213-0.662-0.213-1.037 0-0.024 0-0.048 0.001-0.073l-0 0.004c-0.002-0.032-0.002-0.069-0.002-0.106 0-0.384 0.091-0.746 0.252-1.067l-0.006 0.014c0.154-0.296 0.368-0.542 0.626-0.729l0.006-0.004c0.257-0.174 0.556-0.314 0.876-0.403l0.021-0.005c0.335-0.088 0.679-0.161 1.021-0.218s0.676-0.092 1.005-0.126c0.33-0.032 0.629-0.084 0.92-0.157l-0.042 0.009c0.23-0.051 0.433-0.145 0.608-0.275l-0.004 0.003c0.132-0.12 0.214-0.292 0.214-0.484 0-0.020-0.001-0.039-0.003-0.059l0 0.002c0.001-0.013 0.001-0.029 0.001-0.045 0-0.196-0.045-0.381-0.124-0.547l0.003 0.008c-0.078-0.139-0.184-0.252-0.312-0.336l-0.004-0.002c-0.135-0.080-0.294-0.137-0.464-0.16l-0.007-0.001c-0.17-0.024-0.368-0.037-0.568-0.038h-0.001c-0.029-0.002-0.063-0.003-0.097-0.003-0.358 0-0.689 0.112-0.961 0.303l0.005-0.004c-0.27 0.23-0.441 0.569-0.446 0.947v0.001h-2.272c0.012-0.494 0.16-0.951 0.408-1.338l-0.006 0.010zM17.067 22.116v1.122h0.022c0.284-0.409 0.648-0.743 1.071-0.984l0.016-0.008c0.401-0.221 0.879-0.351 1.388-0.351 0.020 0 0.040 0 0.059 0.001l-0.003-0c0.005-0 0.010-0 0.016-0 0.514 0 1.001 0.117 1.435 0.325l-0.020-0.009c0.442 0.224 0.783 0.596 0.962 1.048l0.005 0.013c0.27-0.386 0.602-0.708 0.985-0.959l0.014-0.008c0.408-0.258 0.905-0.411 1.438-0.411 0.020 0 0.040 0 0.060 0.001l-0.003-0c0.019-0 0.042-0 0.065-0 0.41 0 0.806 0.057 1.182 0.163l-0.031-0.007c0.367 0.107 0.684 0.284 0.951 0.517l-0.003-0.002c0.279 0.245 0.495 0.554 0.627 0.904l0.005 0.016c0.141 0.384 0.222 0.827 0.222 1.289 0 0.029-0 0.058-0.001 0.087l0-0.004v5.552h-2.25v-4.702c0-0.272 0-0.537-0.028-0.78-0.021-0.234-0.086-0.448-0.185-0.642l0.005 0.010c-0.098-0.183-0.242-0.329-0.418-0.427l-0.005-0.003c-0.194-0.103-0.425-0.164-0.67-0.164-0.032 0-0.064 0.001-0.096 0.003l0.004-0c-0.024-0.002-0.053-0.002-0.081-0.002-0.254 0-0.492 0.069-0.696 0.189l0.006-0.003c-0.192 0.115-0.348 0.271-0.461 0.455l-0.003 0.006c-0.108 0.199-0.186 0.432-0.22 0.678l-0.001 0.011c-0.036 0.211-0.057 0.454-0.057 0.701 0 0.021 0 0.042 0 0.063l-0-0.003v4.61h-2.269v-4.648c0-0.25 0-0.493 0-0.73-0.011-0.242-0.061-0.47-0.144-0.681l0.005 0.014c-0.082-0.205-0.221-0.372-0.397-0.487l-0.004-0.002c-0.204-0.118-0.448-0.188-0.709-0.188-0.040 0-0.079 0.002-0.117 0.005l0.005-0c-0.154 0.006-0.3 0.030-0.44 0.070l0.013-0.003c-0.198 0.060-0.368 0.155-0.514 0.28l0.002-0.002c-0.176 0.159-0.319 0.351-0.419 0.567l-0.005 0.011c-0.111 0.266-0.175 0.576-0.175 0.9 0 0.030 0.001 0.060 0.002 0.090l-0-0.004v4.809h-2.275v-8.291zM5.48 26.138c0.114 0.464 0.298 0.873 0.543 1.237l-0.009-0.014c0.245 0.361 0.563 0.654 0.934 0.865l0.014 0.007c0.386 0.2 0.843 0.318 1.327 0.318 0.039 0 0.077-0.001 0.116-0.002l-0.006 0c0.033 0.001 0.072 0.002 0.112 0.002 0.484 0 0.94-0.118 1.342-0.326l-0.016 0.008c0.385-0.218 0.702-0.511 0.942-0.862l0.006-0.010c0.234-0.351 0.418-0.759 0.528-1.196l0.006-0.027c0.117-0.424 0.188-0.911 0.196-1.414l0-0.005c0-0.006 0-0.013 0-0.020 0-0.51-0.062-1.005-0.179-1.478l0.009 0.042c-0.111-0.479-0.295-0.902-0.543-1.279l0.009 0.015c-0.243-0.367-0.561-0.665-0.934-0.878l-0.013-0.007c-0.386-0.2-0.842-0.318-1.326-0.318-0.039 0-0.078 0.001-0.117 0.002l0.006-0c-0.033-0.001-0.071-0.002-0.11-0.002-0.484 0-0.941 0.118-1.344 0.326l0.016-0.008c-0.387 0.219-0.705 0.517-0.942 0.875l-0.006 0.010c-0.24 0.362-0.425 0.785-0.529 1.238l-0.005 0.026c-0.117 0.435-0.187 0.936-0.193 1.453l-0 0.004c-0 0.005-0 0.011-0 0.017 0 0.494 0.061 0.974 0.176 1.432l-0.009-0.040zM3.183 22.337c0.257-0.732 0.632-1.362 1.108-1.902l-0.005 0.006c0.48-0.544 1.071-0.98 1.737-1.273l0.032-0.013c0.666-0.296 1.443-0.468 2.26-0.468 0.034 0 0.068 0 0.102 0.001l-0.005-0c0.032-0.001 0.070-0.001 0.107-0.001 0.816 0 1.592 0.172 2.292 0.483l-0.036-0.014c0.696 0.306 1.284 0.739 1.759 1.274l0.005 0.005c0.471 0.533 0.845 1.164 1.088 1.856l0.012 0.039c0.246 0.692 0.389 1.491 0.389 2.323 0 0.023-0 0.047-0 0.070l0-0.004c0 0.014 0 0.031 0 0.047 0 0.819-0.144 1.604-0.407 2.332l0.015-0.048c-0.255 0.732-0.629 1.363-1.105 1.902l0.005-0.006c-0.48 0.534-1.066 0.962-1.728 1.251l-0.032 0.013c-0.662 0.29-1.434 0.459-2.245 0.459-0.042 0-0.083-0-0.125-0.001l0.006 0c-0.032 0.001-0.070 0.001-0.108 0.001-0.813 0-1.586-0.169-2.286-0.474l0.037 0.014c-0.697-0.3-1.288-0.728-1.765-1.259l-0.004-0.005c-0.47-0.533-0.846-1.164-1.090-1.856l-0.012-0.040c-0.242-0.681-0.383-1.466-0.383-2.284 0-0.017 0-0.034 0-0.051l-0 0.003c-0-0.016-0-0.036-0-0.055 0-0.834 0.14-1.635 0.398-2.382l-0.015 0.051z"></path>
                <path d="M48.127 11.666c-0.055 0.32-0.166 0.606-0.322 0.861l0.006-0.011c-0.16 0.251-0.372 0.454-0.623 0.599l-0.009 0.005c-0.264 0.14-0.578 0.222-0.911 0.222-0.022 0-0.044-0-0.066-0.001l0.003 0c-0.017 0.001-0.037 0.001-0.058 0.001-0.326 0-0.633-0.082-0.9-0.227l0.010 0.005c-0.253-0.151-0.461-0.354-0.612-0.596l-0.004-0.008c-0.142-0.245-0.251-0.53-0.313-0.832l-0.003-0.018c-0.060-0.287-0.095-0.617-0.095-0.955 0-0.005 0-0.011 0-0.016v0.001c0-0.002 0-0.003 0-0.005 0-0.345 0.035-0.681 0.1-1.007l-0.005 0.032c0.064-0.321 0.173-0.607 0.323-0.867l-0.007 0.014c0.159-0.246 0.365-0.447 0.608-0.596l0.008-0.005c0.257-0.146 0.565-0.231 0.893-0.231 0.019 0 0.038 0 0.057 0.001l-0.003-0c0.026-0.001 0.055-0.002 0.086-0.002 0.628 0 1.179 0.33 1.49 0.826l0.004 0.007c0.151 0.245 0.262 0.532 0.314 0.839l0.002 0.014c0.060 0.28 0.095 0.601 0.095 0.93 0 0.017-0 0.035-0 0.052l0-0.003c0 0.017 0 0.037 0 0.057 0 0.323-0.035 0.638-0.1 0.942l0.005-0.029zM58.782 11.518c-0.282-0.009-0.542-0.097-0.76-0.243l0.005 0.003c-0.239-0.156-0.434-0.361-0.574-0.601l-0.005-0.009c-0.144-0.242-0.253-0.524-0.313-0.823l-0.003-0.017c-0.047-0.237-0.074-0.51-0.074-0.789 0-0.041 0.001-0.083 0.002-0.124l-0 0.006c-0-0.009-0-0.020-0-0.031 0-0.325 0.036-0.642 0.103-0.946l-0.005 0.029c0.064-0.327 0.174-0.618 0.324-0.884l-0.008 0.015c0.157-0.254 0.359-0.465 0.596-0.627l0.007-0.005c0.241-0.157 0.537-0.251 0.854-0.251 0.019 0 0.037 0 0.056 0.001l-0.003-0c0.973 0 1.532 0.474 1.684 1.428h2.212c-0.019-0.51-0.157-0.984-0.387-1.4l0.008 0.016c-0.228-0.39-0.519-0.717-0.864-0.977l-0.008-0.006c-0.347-0.255-0.752-0.454-1.191-0.575l-0.026-0.006c-0.425-0.124-0.914-0.196-1.419-0.196h-0c-0.025-0-0.054-0.001-0.083-0.001-0.616 0-1.202 0.126-1.734 0.353l0.029-0.011c-0.525 0.221-0.968 0.543-1.324 0.944l-0.003 0.004c-0.359 0.396-0.64 0.871-0.814 1.394l-0.008 0.028c-0.18 0.524-0.284 1.127-0.284 1.755 0 0.012 0 0.024 0 0.035v-0.002c-0 0.010-0 0.021-0 0.032 0 0.604 0.116 1.18 0.327 1.708l-0.011-0.031c0.121 0.314 0.265 0.585 0.436 0.835l-0.009-0.014h-4.076c-0.039 0.005-0.084 0.007-0.13 0.007-0.238 0-0.459-0.072-0.642-0.196l0.004 0.003c-0.117-0.161-0.188-0.362-0.188-0.58 0-0.018 0-0.037 0.002-0.055l-0 0.002c0-0.005 0-0.011 0-0.018 0-0.642-0.116-1.257-0.328-1.826l0.012 0.036c-0.196-0.536-0.49-0.995-0.863-1.375l0.001 0.001c-0.373-0.377-0.822-0.677-1.323-0.876l-0.026-0.009c-0.504-0.2-1.087-0.317-1.698-0.317-0.026 0-0.053 0-0.079 0.001l0.004-0c-0.021-0-0.046-0.001-0.070-0.001-0.606 0-1.184 0.116-1.715 0.328l0.031-0.011c-1.033 0.403-1.83 1.216-2.203 2.233l-0.008 0.026c-0.188 0.494-0.302 1.066-0.316 1.662l-0 0.006v0.095c0.002 0.024 0.003 0.053 0.003 0.081 0 0.225-0.072 0.432-0.195 0.601l0.002-0.003c-0.177 0.122-0.396 0.195-0.632 0.195-0.048 0-0.095-0.003-0.141-0.009l0.005 0.001h-4.199c-0.004 0-0.009 0-0.014 0-0.388 0-0.758-0.079-1.094-0.222l0.018 0.007c-0.288-0.127-0.528-0.319-0.708-0.558l-0.003-0.005c-0.169-0.222-0.288-0.49-0.337-0.783l-0.001-0.010c-0.050-0.27-0.079-0.58-0.079-0.898 0-0.005 0-0.011 0-0.016v0.001-7.144h-2.509v7.122c0 1.558 0.42 2.708 1.264 3.476 0.923 0.8 2.136 1.287 3.462 1.287 0.044 0 0.087-0.001 0.131-0.002l-0.006 0h4.898c0.027 0.001 0.058 0.002 0.089 0.002 0.337 0 0.655-0.079 0.937-0.219l-0.012 0.006 0.054-0.032c0.088 0.107 0.177 0.209 0.272 0.316 0.372 0.372 0.82 0.668 1.32 0.86l0.026 0.009c0.506 0.2 1.093 0.316 1.706 0.316 0.017 0 0.033-0 0.050-0l-0.003 0c0.015 0 0.033 0 0.052 0 0.619 0 1.21-0.116 1.754-0.328l-0.033 0.011c0.527-0.198 0.977-0.493 1.349-0.866l0-0c0.098-0.107 0.186-0.212 0.272-0.316l0.060 0.032c0.267 0.135 0.582 0.214 0.916 0.214 0.031 0 0.062-0.001 0.093-0.002l-0.004 0h12.241v-2.278z"></path>
                <path d="M20.315 12.599c0.052 0.061 0.106 0.116 0.165 0.166l0.002 0.002q1.264 1.122 3.589 1.122c1.529 0 2.721-0.373 3.583-1.131s1.296-1.896 1.296-3.46v-4.048h-2.509v4.048c0 0.856-0.177 1.488-0.515 1.896s-0.948 0.6-1.855 0.6c-0.033 0.001-0.071 0.002-0.11 0.002-0.4 0-0.782-0.081-1.129-0.227l0.019 0.007c-0.287-0.13-0.526-0.323-0.708-0.561l-0.003-0.004c-0.166-0.223-0.285-0.491-0.336-0.782l-0.002-0.011c-0.052-0.269-0.082-0.579-0.082-0.895 0-0.007 0-0.015 0-0.022v0.001z"></path>
                <path d="M29.121 2.708c0-0.757-0.614-1.371-1.371-1.371s-1.371 0.614-1.371 1.371c0 0.757 0.614 1.371 1.371 1.371 0.001 0 0.002 0 0.003 0h-0c0.756-0.002 1.368-0.615 1.368-1.371 0 0 0 0 0 0v0z"></path>
                <path d="M18.858 2.708c0-0.757-0.614-1.371-1.371-1.371s-1.371 0.614-1.371 1.371c0 0.757 0.614 1.371 1.371 1.371 0.002 0 0.004 0 0.007-0h-0c0.755-0.004 1.365-0.616 1.365-1.371 0 0 0 0 0-0v0z"></path>
                <path d="M22.157 2.708c0-0.757-0.614-1.371-1.371-1.371s-1.371 0.614-1.371 1.371c0 0.757 0.614 1.371 1.371 1.371v0c0.756-0.004 1.368-0.615 1.371-1.371v-0z"></path>
                <path d="M21.73 9.328s0.104 2.104-1.416 3.27c-0.853 0.66-1.987 1.014-3.457 1.014h-2.025c-0.043 0.001-0.094 0.002-0.146 0.002-0.8 0-1.567-0.143-2.276-0.405l0.046 0.015c-0.101 1.264-0.521 2.212-1.264 2.863-0.869 0.755-2.057 1.128-3.586 1.128s-2.746-0.379-3.599-1.125-1.264-1.896-1.264-3.476v-2.689h2.506v2.698c0.003 0.326 0.034 0.643 0.090 0.95l-0.005-0.034c0.054 0.303 0.173 0.572 0.342 0.801l-0.004-0.005c0.184 0.239 0.422 0.427 0.696 0.548l0.011 0.004c0.323 0.14 0.7 0.221 1.095 0.221 0.045 0 0.090-0.001 0.134-0.003l-0.006 0c0.897 0 1.514-0.193 1.855-0.604s0.518-1.027 0.518-1.896v-10.696h2.503v7.122c0 0 0 0.001 0 0.002 0 0.321 0.031 0.635 0.090 0.939l-0.005-0.031c0.048 0.302 0.165 0.571 0.335 0.798l-0.003-0.005c0.188 0.237 0.427 0.426 0.699 0.554l0.012 0.005c0.324 0.14 0.702 0.221 1.098 0.221 0.044 0 0.087-0.001 0.13-0.003l-0.006 0h2.029c0.038 0.002 0.082 0.003 0.127 0.003 0.397 0 0.774-0.081 1.117-0.228l-0.019 0.007c0.284-0.133 0.522-0.322 0.708-0.555l0.003-0.004c0.166-0.223 0.284-0.491 0.333-0.782l0.002-0.011c0.054-0.275 0.085-0.59 0.085-0.913v-3.792h2.506z"></path>
                <path d="M51.262 22.122v1.523h-1.662v4.108c-0.005 0.039-0.008 0.084-0.008 0.13 0 0.236 0.074 0.455 0.2 0.635l-0.002-0.004c0.179 0.127 0.402 0.203 0.643 0.203 0.044 0 0.087-0.003 0.13-0.007l-0.005 0c0.126 0 0.25 0 0.37 0s0.227-0.028 0.335-0.054v1.75c-0.187 0.035-0.405 0.058-0.627 0.063l-0.005 0c-0.231 0-0.461 0-0.682 0-0.003 0-0.006 0-0.009 0-0.349 0-0.692-0.025-1.028-0.074l0.038 0.005c-0.312-0.047-0.593-0.147-0.846-0.291l0.012 0.006c-0.241-0.145-0.434-0.346-0.565-0.586l-0.004-0.008c-0.131-0.27-0.207-0.587-0.207-0.921 0-0.032 0.001-0.063 0.002-0.094l-0 0.004v-4.866h-1.378v-1.523h1.378v-2.49h2.269v2.49z"></path>
                <path d="M57.028 24.062c-0.285-0.281-0.677-0.454-1.109-0.454-0.047 0-0.093 0.002-0.139 0.006l0.006-0c-0.018-0.001-0.039-0.001-0.059-0.001-0.305 0-0.594 0.068-0.853 0.189l0.012-0.005c-0.228 0.114-0.42 0.266-0.576 0.449l-0.002 0.003c-0.131 0.165-0.233 0.358-0.297 0.569l-0.003 0.012c-0.053 0.159-0.091 0.344-0.107 0.535l-0.001 0.009h3.694c-0.069-0.504-0.271-0.951-0.569-1.316l0.004 0.005zM54.459 28.423c0.39 0.313 0.891 0.503 1.437 0.503 0.451 0 0.872-0.13 1.227-0.354l-0.010 0.006c0.279-0.167 0.493-0.419 0.607-0.72l0.003-0.010h2c-0.235 0.884-0.757 1.621-1.458 2.125l-0.011 0.008c-0.649 0.398-1.435 0.634-2.276 0.634-0.045 0-0.091-0.001-0.136-0.002l0.007 0c-0.015 0-0.033 0-0.051 0-0.612 0-1.197-0.116-1.734-0.327l0.032 0.011c-0.521-0.21-0.964-0.512-1.329-0.89l-0.001-0.001c-0.36-0.386-0.645-0.847-0.829-1.356l-0.009-0.028c-0.186-0.507-0.294-1.093-0.294-1.704 0-0.021 0-0.041 0-0.062l-0 0.003c-0-0.011-0-0.025-0-0.039 0-0.607 0.11-1.187 0.311-1.724l-0.011 0.034c0.201-0.539 0.496-1.001 0.867-1.389l-0.001 0.001c0.369-0.388 0.814-0.7 1.311-0.913l0.026-0.010c0.489-0.212 1.058-0.335 1.656-0.335 0.020 0 0.040 0 0.060 0l-0.003-0c0.030-0.001 0.065-0.001 0.101-0.001 0.634 0 1.233 0.15 1.764 0.416l-0.023-0.010c0.523 0.27 0.957 0.644 1.288 1.099l0.007 0.010c0.324 0.45 0.575 0.978 0.72 1.548l0.007 0.032c0.111 0.434 0.175 0.931 0.175 1.444 0 0.143-0.005 0.286-0.015 0.427l0.001-0.019h-5.975c0.035 0.73 0.221 1.264 0.559 1.58z"></path>
                <path d="M60.63 18.959h2.272v11.457h-2.272v-11.457z"></path>
              </svg>
            </a>
          </div>
        </div>

        <div class="col-md-2 col-lg-2 col-xl-6 col-4">
          <a href="#0">
            <div class="header_icon">
              <i class="fas fa-search fa-lg"></i>
            </div>
          </a>
        </div>
      </div>
    </header>

    <div class="row m-0">
      <div class="col-md-0 col-lg-0 col-xl-3 col-0 p-0" style="z-index: 9999999999">
        <nav class="nav_nav navbar navbar-expand-xl  primary-color">
          <button id="menu_toggle" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
            <i class="icon_before fas fa-bars fa-lg"></i>
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="basicExampleNav">
            <ul class="navbar_ul navbar-nav mr-auto">
              <li class="nav-item nav_item_logo d-block d-sm-none d-md-block d-lg-block d-xl-none">
                <div class="row m-0">
                  <div class="col-12 p-0">
                    <a class="arrow_back back" href="#0">
                      <i class="fas fa-angle-left fa-lg"></i>
                    </a>
                  </div>

                  <div class="col-12 p-0">
                    <a class="link_href" href="{{route('front.index')}}">
                      <img class="pulsate-bck" src="{{asset('front/images/'.(request()->get('OpID') == omantel ? 'omantel_logo.png' : 'du_logo.png'))}}" alt="Logo">
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
                <a class="nav-link text-capitalize link_href" style="background-color:#fff;!important" href="{{route('front.index')}}"><i class="icon_before fas fa-home fa-lg"></i> @lang('front.home')
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
              @if(session()->has('check_status_id') && session()->has('status') && session()->get('status') == 'active')
              <li class="nav-item ">
                @if(request()->get('OpID') == omantel)
                <a class="nav-link text-capitalize" href="{{route('front.unsub',['requestId' => session()->get('check_status_id') , 'userToken' => session()->get('userToken')])}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                @elseif(request()->get('OpID') == du)
                <a class="nav-link text-capitalize" href="{{route('front.du_unsub',['requestId' => session()->get('check_status_id') , 'userToken' => session()->get('userToken')])}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.unsub')</a>
                @endif
              </li>
              <li class="nav-item ">
                @if(request()->get('OpID') == omantel)
                <a class="nav-link text-capitalize" href="{{route('front.logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                @elseif(request()->get('OpID') == du)
                <a class="nav-link text-capitalize" href="{{route('front.du_logout')}}"><i class="icon_before fas fa-key-alt fa-lg"></i> @lang('front.logout')</a>
                @endif
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
    $(document).on('click', '.play_za', function() {
      var _this = this
      if ($(this).hasClass('fa-play')) {
        $(this).removeClass('fa-play').addClass('fa-pause')

        $('.play_za').not(this).each(function() {
          $(this).removeClass('fa-pause').addClass('fa-play')
        });
      } else {
        $(this).removeClass('fa-pause').addClass('fa-play')
      }
    })
  </script>
  @yield('script')
</body>

</html>