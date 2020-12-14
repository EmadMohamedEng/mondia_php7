<!-- @extends('front.master') -->
@section('page_title') @lang('front.profile') @endsection
@section('content')

<section class="profile">
  @if(request()->get('OpID') == mbc)
  <div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
    @else
    <div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">
      @endif
      <div class="profile_title m-auto text-center">
        <h2>@lang('front.profile')</h2>
      </div>

      {{-- @php
      $style_align = session()->get('applocale') == 'en' ? 'color: white;text-align: left' : 'color: white;text-align: right';
      @endphp --}}

      <div class="profile_table">
        <table class="table table-bordered ">
          <tbody>
            <tr>
              <td class="label-view font-weight-bold">@lang('messages.users.phone')</td>
              <td class="label-view2">{{session()->get('MSISDN')}}</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold"> @lang('messages.users.date')</td>
              <td class="label-view2">{{$date}}</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.service_name')</td>
              <td class="label-view2">@lang('messages.Mbc_Muslim_guide')</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.service_type')</td>
              <td class="label-view2">@lang('messages.repeat.weekly')</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.description')</td>
              <td class="label-view2">@lang('messages.discription_weekly')</td>
            </tr>
          </tbody>
        </table>
      </div>
      {{-- @if(request()->get('OpID') == mbc)
      <div class="profile_card">
        <div class="row m-0">
          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-1">
            <div class="profile_card_title">
              <h6 class="font-weight-bold">Day One</h6>
            </div>
          </div>

          <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-1">
            <div class="item">
              <div class="card ovf-hidden">
                <a class="owl_content_img view overlay link_href" href="#0">
                  <img class="w-100" src="{{asset("front/images/Cutting/Contnent_Page/007.png")}}" alt="Card image cap">

                  <a>
                    <div class="mask waves-effect waves-light rgba-white-slight"></div>
                  </a>
                </a>

                <a class="owl_content_img view overlay link_href" href="#0">
                  <div class="card-body">
                    <h4 class="card-title text-capitalize">fatha1</h4>
                  </div>

              </div>
            </div>
          </div>

          <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-1">
            <div class="item">
              <div class="card ovf-hidden">
                <a class="owl_content_img view overlay link_href" href="#0">
                  <img class="w-100" src="{{asset("front/images/Cutting/Contnent_Page/008.png")}}" alt="Card image cap">

                  <a>
                    <div class="mask waves-effect waves-light rgba-white-slight"></div>
                  </a>
                </a>

                <a class="owl_content_img view overlay link_href" href="#0">
                  <div class="card-body">
                    <h4 class="card-title text-capitalize">fatha2</h4>
                  </div>

              </div>
            </div>
          </div>

          <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-1">
            <div class="item">
              <div class="card ovf-hidden">
                <a class="owl_content_img view overlay link_href" href="#0">
                  <img class="w-100" src="{{asset("front/images/Cutting/Contnent_Page/009.jpg")}}" alt="Card image cap">

                  <a>
                    <div class="mask waves-effect waves-light rgba-white-slight"></div>
                  </a>
                </a>

                <a class="owl_content_img view overlay link_href" href="#0">
                  <div class="card-body">
                    <h4 class="card-title text-capitalize">fatha3</h4>
                  </div>

              </div>
            </div>
          </div>
        </div>
      </div>
      @endif --}}
</section>
@stop
