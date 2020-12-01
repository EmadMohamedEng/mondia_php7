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

    <section class="list_filter mt-5">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
            <div class="card ovf-hidden">
              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <img class="w-100" src="front/images/mbc_filter/01.png" alt="filter">

                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">دعوتك</h4>
                </div>
              </a>
            </div>
          </div>

          <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
            <div class="card ovf-hidden">
              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <img class="w-100" src="front/images/mbc_filter/02.png" alt="filter">

                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">سجود الشكر</h4>
                </div>
              </a>
            </div>
          </div>

          <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
            <div class="card ovf-hidden">
              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <img class="w-100" src="front/images/mbc_filter/03.png" alt="filter">

                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">القراًن حياتي</h4>
                </div>
              </a>
            </div>
          </div>

          <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
            <div class="card ovf-hidden">
              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <img class="w-100" src="front/images/mbc_filter/04.png" alt="filter">

                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">دعوتك</h4>
                </div>
              </a>
            </div>
          </div>

          <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
            <div class="card ovf-hidden">
              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <img class="w-100" src="front/images/mbc_filter/05.png" alt="filter">

                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">سجود الشكر</h4>
                </div>
              </a>
            </div>
          </div>

          <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
            <div class="card ovf-hidden">
              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <img class="w-100" src="front/images/mbc_filter/06.png" alt="filter">

                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a href="{{url('mbc_filter_inner/?OpID=14')}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">القراًن حياتي</h4>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>

    @stop