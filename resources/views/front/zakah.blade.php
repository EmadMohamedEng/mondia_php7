@extends('front.master')
@section('page_title') @lang('front.zakah') @endsection
@section('content')
<style>
  .main_container .zakkah_page .zakah_zakah .form_zakah .field .field-value{
    float:none;
  }
</style>
@if(request()->get('OpID') == mbc)
<div class="col-md-12 col-lg-12 col-xl-12 col-12 no_padding close_nav">
@else
<div class="col-md-12 col-lg-12 col-xl-9 col-12 no_padding close_nav">
@endif

  <section class="zakkah_page">
    <h4 class="text-center font-weight-bold">@lang('front.zakah')</h4>
    <p class="{{getCode() == 'ar' ? 'text-right' : 'text-left'}}">
        @lang('front.zakah_word')
    </p>

    <fieldset class="zakah_zakah text-right my-5">
      <ul class="form_zakah list-unstyled">
        <li class="field">
          <label class="font-weight-bold {{getCode() == 'en' ? 'float-left' : ''}}"> @lang('front.zakah_gold_price') </label>

          <div class="field-value">
            <input type="text" name="goldNissab" id="txtGoldPrice" class="textbox required scale-up-bottom" maxlength="255" />
          </div>

          <span class="clearfix"></span>
        </li>

        <div class="border-bottom"></div>

        <li class="field">
          <label class="font-weight-bold {{getCode() == 'en' ? 'float-left' : ''}}"> @lang('front.zakah_saved_money') </label>

          <div class="field-value">
            <input type="text" class="textbox required scale-up-bottom" id="txtSavedMoney" maxlength="255" />
          </div>

          <span class="clearfix"></span>
        </li>

        <div class="field_result">
          <li class="field">
            <div class="field-value">
              <label id="result" class="float-none"></label>
            </div>
          </li>
        </div>

        <div class="border-bottom"></div>

        <li class="actions text-center my-3">
          <button id="Calculate" class="button">@lang('front.zakah_calculate')</button>
        </li>
      </ul>
    </fieldset>
  </section>
</div>

@stop
