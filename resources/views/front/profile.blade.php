@extends('front.master')
@section('page_title') @lang('front.profile') @endsection
@section('content')


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
          <td width='30%' class='label-view text-right'>رقم الهاتف</td>
          <td>01123656796</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right'> تاريخ الاشنراك</td>
          <td>2020/9/21</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right'>اسم الخدمة</td>
          <td>MBC</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right'>نوع الخدمة</td>
          <td>يومية</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right'>وصف الخدمة</td>
          <td>تجديد الاشتراك سيكون تلقائي وفعال بتكلفة 10 ريال فى الاسبوع</td>
        </tr>

      </tbody>
    </table>
  </div>

  @else
  <div style="padding: 4%;">
    <table class="table table-striped table-bordered ">
      <tbody style="color: white;">
        <tr>
          <td width='30%' class='label-view text-right'>Phone Number</td>
          <td>01123656796</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right'>Subscription date</td>
          <td>21/9/2020</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right'>Service name</td>
          <td>MBC</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right'>Service Type</td>
          <td>daily</td>
        </tr>

        <tr>
          <td width='30%' class='label-view text-right'>Description of the service</td>
          <td>Subscription renewal will be automatic and effective at a cost of 10 riyals per week</td>
        </tr>

      </tbody>
    </table>
  </div>
  @endif


  @stop
