@extends('front.master')
@section('page_title') @lang('front.prayer') @endsection
@section('content')
<style>
  @media (max-width: 374.9px) and (min-width: 360px) {
    .main_container .salah_time_page .time_btn {
      direction: unset;
    }
  }
</style>
@if(request()->get('OpID') == mbc || request()->get('OpID') == orange )
<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav" dir="{{getCode() == 'ar' ? 'rtl' : 'ltr'}}">
@elseif(request()->get('OpID') == omantel || request()->get('OpID') == stc || request()->get('OpID') == du)
<div class="col-md-12 col-lg-12 col-xl-8 col-12 p-0 padding_phones no_padding close_nav" dir="{{getCode() == 'ar' ? 'rtl' : 'ltr'}}">
  @else
  <div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav" dir="{{getCode() == 'ar' ? 'rtl' : 'ltr'}}">

    @endif
    <section class="salah_time_page">
      <div class="salah_time_title">
        <h2> @lang('front.prayer') </h2>
      </div>

      <div class="time_btn roll-in-top">
        <div class="row m-0">
          <div class="col-md-6 col-lg-6 col-xl-6 col-8 input_span">
            <!-- <h4 class="h4_time melady_date" style="padding-right:{{getCode() == 'en' ? 0 : '' }}px">{{date('d-m-Y')}} </h4> -->
            <h4 class="h4_time">{{$hjrri_date->day.' - '.$hjrri_date->month .' - '.$hjrri_date->year}}</h4>
          </div>

          <div class="col-md-6 col-lg-6 col-xl-6 col-4 input_span">
            <!-- <h4 class="h4_time_2 hegry_date" style="padding-left:{{getCode() == 'en' ? 0 : '' }}px" dir="{{getCode() == 'ar' ? 'rtl' : 'ltr'}}">{{$hjrri_date->day.' - '.$hjrri_date->month .' - '.$hjrri_date->year}}</h4> -->
            <h4 class="h4_time_2" dir="{{getCode() == 'ar' ? 'rtl' : 'ltr'}}">{{date('d-m-Y')}}</h4>
          </div>
        </div>
      </div>

      <div class="time_btn roll-in-top">
        <div class="row m-0">
          <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
            <h4 class="h4_time">@lang('front.salah')</h4>
          </div>

          <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
            <h4 class="h4_time_2">@lang('front.time')</h4>
          </div>
        </div>
      </div>

      @foreach($prayer_times as $key=>$value)
      <div class="time_btn roll-in-top">
        <div class="row m-0">
          <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
            <h4 class="h4_time">{{get_salah($key , getCode())}} </h4>
          </div>

          <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
            <h4 class="h4_time_2">{{$value}} </h4>
          </div>
        </div>
      </div>
      @endforeach
    </section>
  </div>

  @stop
