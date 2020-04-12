@extends('front.master')
@section('page_title') @lang('front.prayer') @endsection
@section('content')

<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav" dir="{{getCode() == 'ar' ? 'rtl' : 'ltr'}}">
  <section class="salah_time_page bounce-top">
    <div class="salah_time_title">
      <h2> @lang('front.prayer') </h2>
    </div>

    <div class="time_btn">
      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time_2 hegry_date" style="padding-left:{{getCode() == 'en' ? 0 : '' }}px" dir="{{getCode() == 'ar' ? 'rtl' : 'ltr'}}">{{$hjrri_date->day.' - '.$hjrri_date->month .' - '.$hjrri_date->year}}</h4>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time melady_date" style="padding-right:{{getCode() == 'en' ? 60 : '' }}px">{{date('d-m-Y')}} </h4>
        </div>
      </div>
    </div>

    <div class="time_btn">
      <div class="row m-0">
      <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time" >@lang('front.salah')</h4>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time_2" >@lang('front.time')</h4>
        </div>
      </div>
    </div>

    <div id="table"></div>

    {{-- @foreach($prayer_times as $key=>$value)
    <div class="time_btn">
      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time">{{get_salah($key , getCode())}} </h4>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span">
          <h4 class="h4_time_2">{{$value}} </h4>
        </div>
      </div>
    </div>
    @endforeach --}}
  </section>
</div>



<script type="text/javascript" src="https://s3.amazonaws.com/islamSite/PrayTimes/PrayTimes.js"></script>


<script>
  var current_lat;
  var current_lng;

  function initMap2() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(p) {
        current_lat = p.coords.latitude;
        current_lng = p.coords.longitude;
        console.log(current_lat);
        console.log(current_lng);
        var pyrmont = {
          lat: current_lat,
          lng: current_lng
        };

        var date = new Date(); // today
        var times = prayTimes.getTimes(date, [current_lat, current_lng], 2);
        var list = ['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'];

        var html = '<div class="time_btn"><div class="row m-0">';
        for(var i in list)	{
          html += '<div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span"><h4 class="h4_time">'+ list[i]+ ' </h4></div>';
          html += '<div class="col-md-6 col-lg-6 col-xl-6 col-6 input_span"><h4 class="h4_time_2">'+ times[list[i].toLowerCase()]+ '</h4></div>';
        }
        html += '</div></div>';
        document.getElementById('table').innerHTML = html;

      });

    } else {
      alert('Geo Location feature is not supported in this browser.');
    }
  }

  initMap2()
</script>



@stop
