@extends('front.master')
@section('page_title') Home @endsection
@section('content')
@php
$count = (int)(count(provider_menu())/2);
$menu = provider_menu();
@endphp

@if(request()->get('OpID') == mbc)
<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
  @else
  <div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">
    @endif

    <section class="list_inner mt-5">
      <div class="container">
        <div class="row">
        <img class="w-100" src="front/images/mbc_filter/01.png" alt="filter">
        </div>
      </div>
    </section>

    @stop
