@extends('front.master')
@section('page_title') {{$content->getTranslation('title',getCode())}} @endsection
@section('content')
@php
if($content->type == 1){
$src = $content->image_preview;
}elseif($content->type == 3){
$src = url($content->video);
}elseif($content->type == 2){
 $src = $content->image_preview;
}else{ // text default image
$src = url('front\images\Cutting\Contnent_Page\004.png');
}
@endphp

@if(request()->get('OpID') == mbc || request()->get('OpID') == orange)
<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
@else
<div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">
@endif
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

      <div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones">
        <div class="poster">
          <div class="poster-details">
            <div class="title-wrapper">
              <h2 class="text-capitalize">{{get_title($content->content_id)}}</h2>
            </div>

            <div class="outside-cover">
              <span>@lang('front.release'):{{$content->created_at->format('M d , Y')}}</span>
            </div>
          </div>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="socail_media padding_phones">
        <div class="row m-0">

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
            <div class="pa_share">
              <div>@lang('front.share'): </div>
            </div>
          </div>

          <div class="col-md-3 col-lg-3 col-xl-3 col-2 p-0">
            <div class="shear_div">
              <button class="btn facebook" onclick="location.href='https://www.facebook.com/sharer/sharer.php?{{urldecode(url()->current())}}'">
                <i class="fab fa-facebook-f"></i>
              </button>
            </div>
          </div>

          <div class="col-md-3 col-lg-3 col-xl-3 col-2 p-0">
            <div class="shear_div">
              <button class="btn twitter" onclick="location.href='https://www.twitter.com/intent/tweet?text={{urldecode(url()->current())}}'">
                <i class="fab fa-twitter"></i>
              </button>
            </div>
          </div>

          {{-- <div class="col-md-2 col-lg-2 col-xl-2 col-2 p-0">
              <div class="shear_div">
                <button class="btn messenger" onclick="location.href='{{}}'">
          <i class="fab fa-instagram"></i>
          </button>
        </div>
      </div> --}}

      <div class="col-md-3 col-lg-3 col-xl-3 col-2 p-0">
        <div class="shear_div">
          <button class="btn whatsapp" onclick="location.href='https://api.whatsapp.com/send?text={{urlencode(url()->current())}}'">
            <i class="fab fa-whatsapp"></i>
          </button>
        </div>
      </div>
    </div>
</div>

<div class="border-bottom"></div>

<section class="section_content padding_phones">
  <div class="row m-0">
    <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
      <div class="pa_Videos">
        <span>@lang('front.related_video'): </span>
      </div>
    </div>

    @foreach ($contents as $item)
    <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
      <a class="row link_href m-0" href="{{route('front.inner',['id' => $item->content_id])}}">
        <div class="col-md-4 col-lg-4 col-xl-2 col-4 p-0">
          @php
          if($item->type == 1) { //video
          $src = $item->image_preview;
          }elseif($item->type == 3) { //image
          $src =url( $item->video );
          }elseif($item->type == 2) { //audio
            $src = $item->image_preview;
          }else{
          $src = url('front\images\Cutting\Contnent_Page\004.png');
          }
          @endphp
          <img class="w-100 h-100" src="{{$src}}"   style="opacity: 1 !important;" class="image_inner" alt="Card image cap">
        </div>

        <div class="col-md-8 col-lg-8 col-xl-10 col-8 p-0">
          <p class="p_content text-capitalize">{{get_title($item->content_id)}}</p>
        </div>

        <div class="border-bottom"></div>
      </a>
    </div>
    @endforeach
  </div>
</section>
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
            <button type="button" class="btn btn-lg btn-block text-center"> @lang('front.Du ElKheer')</button>
          </div>


          <div class="col-12 modal_club">
            <strong class="d-block text-center"><span>3.15</span> @lang('front.AED')</strong>
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
