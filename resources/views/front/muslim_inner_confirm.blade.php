@extends('front.master')
@section('page_title') @lang('front.muslim_guide') @endsection
@section('content')
@php
$src = url('front\images\Cutting\Contnent_Page\004.png');
@endphp

<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
  @include('front.search')
  <section class="inner_page">
    <div class="row m-0">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
        <div class="cover">
          <img src="{{$src}}" alt="Video Cover">
          @if(request()->has('OpID') && request()->get('OpID') == omantel)

          <button data-toggle="modal" data-target="#exampleModalCover" class="btn button_play primary roll-in-top">
            <i class="fas fa-play play_icon"></i> @lang('front.watch_now')
          </button>

          @elseif(request()->has('OpID') && request()->get('OpID') == du)

          <button data-toggle="modal" data-target="#exampleModalCover_du" class="btn button_play primary roll-in-top">
            <i class="fas fa-play play_icon"></i> @lang('front.watch_now')
          </button>

          @endif

        </div>
      </div>
      <div class="border-bottom"></div>
    </div>
  </section>


  <div class="modal_cover modal fade" id="exampleModalCover" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title m-auto text-center" id="exampleModalLongTitle">  @lang('front.Please confirm subscription to')</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row m-0">
            <div class="col-12 modal_club">
              <button type="button" class="btn btn-lg btn-block text-center text-capitalize">@lang('front.omantel ElKheer') </button>
            </div>

            <div class="col-12 modal_club">
              <strong class="d-block text-center"  >  <span>0.2</span> @lang('front.OMR') </strong>
            </div>

            <div class="col-12 modal_club">
              <p class="m-0 text-center">@lang('front.Daily renewal subscription') </p>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <div class="row m-0">
            <div class="col-6">
            <button  onclick="location.href= '{{url('Omantel_send_pincode')}}'"  type="button" class="btn btn_1 btn-lg text-center text-capitalize"> @lang('front.subscribe')</button>
            </div>

            <div class="col-6">
            <button type="button" class="btn btn_2 btn-lg text-center text-capitalize" data-dismiss="modal">  @lang('front.Close') </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



  <div class="modal_cover modal fade" id="exampleModalCover_du" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title m-auto text-center" id="exampleModalLongTitle">@lang('front.Please confirm subscription to')</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row m-0">
            <div class="col-12 modal_club">
              <button type="button" class="btn btn-lg btn-block text-center text-capitalize"> @lang('front.Du ElKheer')</button>
            </div>


            <div class="col-12 modal_club">
              <strong class="d-block text-center"><span>2.1</span> @lang('front.AED')</strong>
            </div>

            <div class="col-12 modal_club">
              <p class="m-0 text-center">@lang('front.Daily renewal subscription')</p>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <div class="row m-0">
            <div class="col-6">
            <button  onclick="location.href= '{{url('du_goto_pincode')}}'"  type="button" class="btn btn_1 btn-lg text-center text-capitalize"> @lang('front.subscribe')</button>
            </div>

            <div class="col-6">
            <button type="button" class="btn btn_2 btn-lg text-center text-capitalize" data-dismiss="modal">@lang('front.Close')</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



</div>
@stop
