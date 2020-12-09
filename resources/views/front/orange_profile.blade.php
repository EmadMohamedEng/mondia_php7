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
        <table class="table  table-bordered ">
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
              <td class="label-view2">@lang('messages.orange_Muslim_guide')</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.service_type')</td>
              <td class="label-view2">@lang('messages.repeat.daily')</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.description')</td>
              <td class="label-view2">@lang('messages.orange_discription_daily')</td>
            </tr>
          </tbody>
        </table>
      </div>
</section>
@stop
