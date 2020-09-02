@extends('front.master')
@section('page_title') {{$content->getTranslation('title',getCode())}} @endsection
@section('content')
@php
if($content->type == 1){
$src = $content->image_preview;
}elseif($content->type == 3){
$src = $content->video;
}elseif($content->type == 2){
$src = $content->image_preview;
}else{ // text default image
$src = url('front\images\Cutting\Contnent_Page\004.png');
}
@endphp

<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
  @include('front.search')
  <section class="inner_page">
    <div class="row m-0">
      <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
        <div class="cover">

          @if($content->type == 1)
          <video id="video" style="object-fit: cover;width:100%" poster="{{$src}}" controls controlsList="nodownload">
            <source src="{{url('teststream/'.$content->id)}}" />
          </video>
        {{-- <img id="image" style="display: none" src="{{$src}}" alt="">
          <canvas style="width:90%;" id="canvas"></canvas>
          <div class="custom_controls" style="position: absolute;bottom: 10px;left: 10px;">
            <a id="play_vid" class="btn btn btn-warning rounded-circle"><i class="fa fa-play" aria-hidden="true"></i></a>
          </div> --}}
          @endif
          @if($content->type == 2)
              <img src="{{$src}}" alt="Video Cover">
              <audio src="{{url($content->video)}}" controls style="width: 94%;" controlsList="nodownload"></audio>
          @endif
          @if($content->type == 3)
          <img src="{{url($content->video)}}" alt="Video Cover">
          @endif
          @if($content->type == 4)
          <div class="col-md-12 w-100 m-1 text-center p-2 text-black">
            <h4>{!!$content->getTranslation('content_text',getCode())!!}</h4>
          </div>
          @endif




        </div>
      </div>

      <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0 padding_phones">
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
          if($item->type == 1){
          $src = $item->image_preview;
          }elseif($item->type == 3){
          $src =url( $item->video );
          }elseif($item->type == 2){
            $src = $content->image_preview;
          }else{
          $src = url('front\images\Cutting\Contnent_Page\004.png');
          }
          @endphp
          <img class="w-100" src="{{$src}}" class="image_inner" alt="Card image cap">
        </div>

        <div class="col-md-8 col-lg-8 col-xl-10 col-8 p-0">
          <p class="p_content text-capitalize scale-up-bottom">{{get_title($item->content_id)}}</p>
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
        <h5 class="modal-title m-auto text-center" id="exampleModalLongTitle">Please confirm subscription to</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row m-0">
          <div class="col-12 modal_club">
            <button type="button" class="btn btn-lg btn-block text-center text-capitalize">islamic club</button>
          </div>

          <div class="col-12 modal_club">
            <strong class="d-block text-center">For <span>0.2</span> OMR</strong>
          </div>

          <div class="col-12 modal_club">
            <p class="m-0 text-center">You will get 2 free days the first time you subscribe</p>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <div class="row m-0">
          <div class="col-6">
            <button type="button" class="btn btn_1 btn-lg text-center text-capitalize">subscribe</button>
          </div>

          <div class="col-6">
            <button type="button" class="btn btn_2 btn-lg text-center text-capitalize" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
@stop
@section('script')
{{-- <script>
  var canvas = document.getElementById('canvas');
  var ctx = canvas.getContext('2d');
  var video = document.createElement("video");
  video.setAttribute("src", "{{url('teststream/'.$content->id)}}");
  var img = document.getElementById('image');

  // set canvas size = video size when known
  video.addEventListener('loadedmetadata', function() {
    canvas.width = video.videoWidth;
    canvas.height = video.videoHeight;
    ctx.drawImage(img, 0, 0);
  });

  video.addEventListener('play', function() {
    var $this = this; //cache
    (function loop() {
      if (!$this.paused && !$this.ended) {
        ctx.drawImage($this, 0, 0);
        setTimeout(loop, 1000 / 30); // drawing at 30fps
      }
    })();
  }, 0);

  $('#play_vid').click(function (e) {
    $(this).children('i').toggleClass('fa-play');
    $(this).children('i').toggleClass('fa-pause');
    if(video.paused){
      video.play();
    }else{
      video.pause();
    }
  });

</script> --}}
@endsection
