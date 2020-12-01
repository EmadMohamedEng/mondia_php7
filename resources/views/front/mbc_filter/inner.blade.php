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

    <section class="inner_filter mt-5">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-lg-8 col-xl-7 col-10 m-auto">
            <div class="card ovf-hidden">
              <a href="{{$filter->link}}">
                <img class="w-100" src="{{url('uploads/filters/'.$filter->image)}}" alt="filter">

                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a href="{{$filter->link}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">{{$filter->getTranslation('title',getCode())}}</h4>
                </div>
              </a>
            </div>

            <div class="inner_filter_btn">
              <div class="row">
                <div class="col-md-8 col-lg-8 col-xl-7 col-6 m-auto">
                  <a class="btn btn-block btn_download text-capitalize" href="{{$filter->link}}" download="">@lang('front.use_filter')</a>

                  <a class="btn btn-block btn_share text-capitalize" href="#0">@lang('front.share')</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    @stop