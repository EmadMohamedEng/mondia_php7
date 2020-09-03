@extends('front.master')
@section('page_title') @lang('front.zakah') @endsection
@section('content')

<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
  <section class="zakkah_v2_page">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-12 col-xl-12 col-12">
          <div class="currency_title font-weight-bold">العملة</div>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-12">
          <div class="currency_bg mt-2 p-3 w-100 rounded-pill">
            <div class="row m-0">
              <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0">
                <h6 class="currency_text mb-0">العملة</h6>
              </div>

              <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0">
                <div class="currency_symbol">
                  <select name="sources" class="custom-select border-0" placeholder="USD">
                    <option value="profile">USD</option>
                    <option value="word">EGP</option>
                    <option value="hashtag">USD</option>
                  </select>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>

@stop
