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

    <section class="inner_filter mt-5">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-lg-8 col-xl-7 col-9 m-auto no_padding">
            <div class="card ovf-hidden">

              <a  class="owl_content_img" href="{{$filter->link}}">
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
                <div class="col-md-8 col-lg-8 col-xl-7 col-8 m-auto">
                  <a class="btn btn-block btn_download text-capitalize" href="{{$filter->link}}" >@lang('front.use_filter')</a>

                  <a class="btn btn-block btn_share text-capitalize"data-toggle="modal" data-target="#exampleModalCenter" >@lang('front.share')</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div id="modalShare">
        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>

              <div class="modal-body">
                <div class="social-icon text-center">
                  <a class="facebook" href="https://www.facebook.com/sharer/sharer.php?u={{URL::full()}}" target="_blank"><i class="fab fa-facebook-f"></i></a>
                  <a class="twitter" href="http://twitter.com/share?url={{URL::full()}}" target="_blank"><i class="fab fa-twitter"></i></a>
                  <a class="linkedin" href="https://www.linkedin.com/shareArticle?mini=true&url={{URL::full()}}" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                  <a class="pinterest" href="http://pinterest.com/pin/create/link/?url={{URL::full()}}" target="_blank"><i class="fab fa-pinterest-p"></i></a>
                </div>
              </div>

              <div class="modal-footer">
                <button type="button" class="btn btnClose" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    @stop
