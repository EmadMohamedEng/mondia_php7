@extends('front.master')
@section('page_title') @lang('front.sebha') @endsection
@section('content')

@if(request()->get('OpID') == mbc)
<div class="col-md-12 col-lg-12 col-xl-12 col-12 no_padding close_nav">
@else
<div class="col-md-12 col-lg-12 col-xl-9 col-12 no_padding close_nav">
@endif
  <section class="sebha_page">
    <div class="display">
      <h1 id="wordSebha"></h1>

      <h2 id="tally">100</h2>

      <div class="btn-bar">
        <button id="plusBtn"><i class="fas fa-fingerprint"></i></button>
        <button id="resetBtn" data-toggle="modal" data-target="#sebhaModal"><i class="fas fa-sync-alt"></i></button>
      </div>
    </div>

    <!--====================== Modal =================== -->
    <div class="modal fade" id="sebhaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <h5 class="modal-title" id="exampleModalLabel">السبحة</h5>
          </div>
          <div class="modal-body">
            <a href="javascript:void(0)" class="choose_sebha" data-dismiss="modal" onclick="getValue(this.innerHTML)">سبحان الله</a>
            <a href="javascript:void(0)" class="choose_sebha" data-dismiss="modal" onclick="getValue(this.innerHTML)">الحمدلله</a>
            <a href="javascript:void(0)" class="choose_sebha" data-dismiss="modal" onclick="getValue(this.innerHTML)">الله اكبر</a>
            <a href="javascript:void(0)" class="choose_sebha" data-dismiss="modal" onclick="getValue(this.innerHTML)">استغفر الله</a>
          </div>
        </div>
      </div>
    </div>
    <!--====================== Modal =================== -->
  </section>
</div>

@stop
