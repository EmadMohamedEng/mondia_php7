@extends('front.master')
@section('page_title') @lang('front.faq') @endsection
@section('content')

<section class="terms_page">
  @if(request()->get('OpID') == mbc)
  <div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
    @else
    <div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">
      @endif
      <div class="terms_title">
        <h2 class="text-center pt-2">@lang('front.faq')</h2>
      </div>

      @if (getCode() == 'ar')
      <div style="padding: 4%;">
        <h1 class="ul_terms">{!! DB::table('settings')->where('key','like','%f_q_ar%')->first()->value !!}</h1>
      </div>

      @else
      <div style="padding: 4%;">
        <h1 class="ul_terms">{!! DB::table('settings')->where('key','like','%f_q_en%')->first()->value !!}</h1>
      </div>
      @endif
</section>

@stop