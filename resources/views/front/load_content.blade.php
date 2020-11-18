@foreach ($contents as $item)
<div class="col-md-4 col-lg-4 col-xl-2 col-6 p-0">
  <div class="item">
    <div class="card ovf-hidden">
      <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->id])}}">
        @php
        if($item->type == 1){
        $src = $item->image_preview;
        }elseif($item->type == 3){
        $src = $item->video;
        }elseif($item->type == 2){
        $src = $item->image_preview;
        }else{
        $src = 'front\images\Cutting\Contnent_Page\004.png';
        }
        @endphp
        <img class="w-100" src="{{$src}}" alt="Card image cap">
        @if(request()->get('OpID') == orange)
        <div class="playCircle">
          <i class="far fa-play-circle fa-2x"></i>
        </div>
        @endif
        @if ($item->free == 1)
        <div class="content_free text-center py-1">
          <span class="text-capitalize">free</span>
        </div>
        @endif

        <a>
          <div class="mask waves-effect waves-light rgba-white-slight"></div>
        </a>
      </a>
      {{-- @if($item->service_id != 33)  --}}

      <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->id])}}">
        <div class="card-body">
          <h4 class="card-title text-capitalize">{{$item->getTranslation('title',getCode())}}</h4>
        </div>
      </a>
      {{-- @endif  --}}
    </div>
  </div>
</div>
@endforeach
