@extends('front.master')
@section('page_title') @lang('front.prayer') @endsection
@section('content')

<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
  <section class="salah_time_page">
    <div class="salah_time_title">
      <h2> @lang('front.prayer') </h2>
    </div>

    <div class="time_btn">
      <div class="row m-0">
      <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time_2">{{$hjrri_date->day.' - '.$hjrri_date->month .' - '.$hjrri_date->year}}</h4>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time">{{date('d/m/Y')}} </h4>
        </div>
      </div>
    </div>

    <div class="time_btn">
      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time">الصلاة</h4>
        </div>
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time_2">الوقت</h4>
        </div>
      </div>
    </div>

    @foreach($prayer_times as $key=>$value)
    <div class="time_btn">
      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time">{{$key}} </h4>
        </div>
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time_2">{{$value}}</h4>
        </div>
      </div>
    </div>
    @endforeach
  </section>
</div>

@stop
