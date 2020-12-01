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

    @include('front.search')

    <section class="list_filter mt-5">
      <div class="container">
        <div class="row">

        <div class="col-md-8 col-lg-8 col-xl-12 col-10 m-auto">
                  <div class="card_title">
                    <h6>فلتر اسلامي</h6>
                  </div>
        </div>


         @foreach ($filters as $filter)
          <div class="col-md-6 col-lg-6 col-xl-4 col-6 p-1">
            <div class="card ovf-hidden">
              <a class="owl_content_img"  href="{{url("filter_inner/$filter->id?OpID=14")}}">
                <img class="w-100" src="{{url('uploads/filters/'.$filter->filter->image)}}" alt="{{$filter->filter->getTranslation('title',getCode())}}">

                <a>
                  <div class="mask waves-effect waves-light rgba-white-slight"></div>
                </a>
              </a>

              <a href="{{url("filter_inner/$filter->id?OpID=14")}}">
                <div class="card-body">
                  <h4 class="card-title text-capitalize">{{$filter->filter->getTranslation('title',getCode())}}</h4>
                </div>
              </a>
            </div>
          </div>
          @endforeach

        </div>
      </div>
    </section>

    @stop
