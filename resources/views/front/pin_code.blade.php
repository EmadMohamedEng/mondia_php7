@extends('front.master')
@section('page_title') PinCode @endsection
@section('content')
@if(request()->get('OpID') == mbc || request()->get('OpID') == orange )
<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
@else
<div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">
@endif
    <section class="subscribe_page">
      <div class="row m-0">
        <div class="col-md-12 col-lg-12 col-xl-9 col-12">
          {{--  @if(session()->has('status') && session()->get('status') == 'active')
          <div class="alert alert-success" role="alert">تم التسجيل بنجاح
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          @endif  --}}

          @if(session()->has('faild'))
          <div class="alert alert-danger" role="alert">
            @lang('front.wrong_pincode')
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          @endif

          <h2 class="login_title my-4" style="color:#ff9e1b !important"> @lang('front.enter_pin')</h2>

          <div class="subscribe_bg">
            <div class="subtitle mb-3 py-2 px-4" style="background-color:#ff9e1b !important">@lang('front.the_send_phone')</div>

            <form class="form-signin" action="{{url('verify_pin')}}" method="POST">
                @csrf
              <div class="row form-group account-wall">
                <div class="col-md-12 col-lg-12 col-xl-12 col-12 phone-number-input">
                  <div class="form-group px-3">
                    <input type="number" required class="form-control" placeholder="@lang('front.enter_code_active')" maxlength="14" autofocus="autofocus" id="msisdn" name="pincode" value="">
                  </div>
                </div>
              </div>

              <div class="buttons row px-3 my-3">
                <div class="col-md-12 col-lg-12 col-xl-12 col-12">
                  <button name="action" style="background-color:#ff9e1b !important"  value="SUBMIT" class="btn btnup btn-primary btn-block" type="submit"> @lang('front.Activate')</button>
                </div>
              </div>
            </form>
            <div class="col-md-12 col-lg-12 col-xl-12 col-12" >
            <button style="background-color:#ff9e1b !important;margin-bottom:18px;font-size:13px;" onclick="location.href= '{{url('Omantel_send_pincode')}}'"  type="button" class="btn btn_1 btn-lg text-center text-capitalize">@lang('front.resend_pincode')  </button>
            </div>

          </div>
        </div>
      </div>
    </section>
  </div>

@stop
