@extends('front.master')
@section('page_title') @lang('front.terms') @endsection
@section('content')


<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
  @if (getCode() == 'ar')
  <div style="padding: 4%;">
    <h1>{!! DB::table('settings')->where('key','like','%terms_ar%')->first()->value !!}</h1>
  </div>

  @else
  <div style="padding: 4%;">
    <h1>{!! DB::table('settings')->where('key','like','%terms_en%')->first()->value !!}</h1>
  </div>
  @endif


  @stop
