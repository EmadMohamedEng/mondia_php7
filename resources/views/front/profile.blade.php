@extends('front.master')
@section('page_title') @lang('front.profile') @endsection
@section('content')
<style>

.color_table{
  color:  #efc049;
  font-weight: bold
  ;
}
.table-bordered td, .table-bordered th {
    border: unset;
}
</style>

@if(request()->get('OpID') == mbc)
<div class="col-md-12 col-lg-12 col-xl-12 col-12 no_padding close_nav">
@else
<div class="col-md-12 col-lg-12 col-xl-9 col-12 no_padding close_nav">
@endif
  <div>
    <h2 style="color: white;text-align: center; padding-top: 2%;color: #efc049;">@lang('front.profile')</h2>
  </div>

  <div style="padding: 4%;">
    <table class="table table-striped table-bordered ">
    <tbody style="color: white;text-align: right;">
        <tr>
          <td width='30%' class='label-view text-right color_table'>@lang('messages.users.phone')</td>
          <td>{{session()->get('MSISDN')}}</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'> @lang('messages.users.date')</td>
          <td>{{date('Y-M-d')}}</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'>@lang('messages.service_name')</td>
          <td>@lang('messages.Mbc_Muslim_guide')</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'>@lang('messages.service_type')</td>
          <td>@lang('messages.repeat.weekly')</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'>@lang('messages.description')</td>
          <td>@lang('messages.discription_weekly')</td>
        </tr>

      </tbody>
    </table>
  </div>

  @stop
