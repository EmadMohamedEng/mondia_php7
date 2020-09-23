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
  @if (getCode() == 'ar')
  <div style="padding: 4%;">
    <table class="table table-striped table-bordered ">
    <tbody style="color: white;text-align: right;">
        <tr>
          <td width='30%' class='label-view text-right color_table'>رقم الهاتف</td>
          <td>{{session()->get('MSISDN')}}</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'> تاريخ الاشنراك</td>
          <td>2020/9/21</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'>اسم الخدمة</td>
          <td>MBC</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'>نوع الخدمة</td>
          <td>يومية</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'>وصف الخدمة</td>
          <td>تجديد الاشتراك سيكون تلقائي وفعال بتكلفة 2 ريال فى اليوم</td>
        </tr>

      </tbody>
    </table>
  </div>

  @else
  <div style="padding: 4%;">
    <table class="table table-striped table-bordered ">
      <tbody style="color: white;">
        <tr>
          <td width='30%' class='label-view text-right color_table'>رقم الهاتف</td>
          <td>{{session()->get('MSISDN')}}</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'> تاريخ الاشنراك</td>
          <td>2020/9/21</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'>اسم الخدمة</td>
          <td>MBC</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'>نوع الخدمة</td>
          <td>يومية</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right color_table'>وصف الخدمة</td>
          <td>تجديد الاشتراك سيكون تلقائي وفعال بتكلفة 2 ريال فى اليوم</td>
        </tr>

      </tbody>
    </table>
  </div>
  @endif


  @stop
