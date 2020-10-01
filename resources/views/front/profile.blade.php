@extends('front.master')
@section('page_title') @lang('front.profile') @endsection
@section('content')
<style>
  .color_table {
    color: #efc049;
    font-weight: bold;
  }

  .table-bordered td,
  .table-bordered th {
    border: unset;
  }
</style>

<section class="profile">
  @if(request()->get('OpID') == mbc)
  <div class="col-md-12 col-lg-12 col-xl-12 col-12 no_padding close_nav">
    @else
    <div class="col-md-12 col-lg-12 col-xl-8 col-12 p-0 no_padding close_nav">
      @endif
      <div>
        <h2 style="color: white;text-align: center; padding-top: 2%;color: #efc049;">@lang('front.profile')</h2>
      </div>
      @php
      $style_align = session()->get('applocale') == 'en' ? 'color: white;text-align: left' : 'color: white;text-align: right';
      @endphp
      <div style="padding: 4%;">
        <table class="table table-striped table-bordered">
          <tbody style="{{$style_align}}">
            <tr>
              <td class="label-view color_table">@lang('messages.users.phone')</td>
              <td style="{{$style_align}}">{{session()->get('MSISDN')}}</td>
            </tr>

            <tr>
              <td class="label-view color_table"> @lang('messages.users.date')</td>
              <td>{{date('Y-M-d')}}</td>
            </tr>

            <tr>
              <td class="label-view color_table">@lang('messages.service_name')</td>
              <td>@lang('messages.Mbc_Muslim_guide')</td>
            </tr>

            <tr>
              <td class="label-view color_table">@lang('messages.service_type')</td>
              <td>@lang('messages.repeat.weekly')</td>
            </tr>

            <tr>
              <td class="label-view color_table">@lang('messages.description')</td>
              <td>@lang('messages.discription_weekly')</td>
            </tr>

          </tbody>
        </table>
      </div>

      @stop
</section>