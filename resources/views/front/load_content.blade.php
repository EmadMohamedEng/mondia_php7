@foreach ($contents as $item)
<div class="col-md-4 col-lg-5 col-xl-2 col-4 p-0">
    <div class="item">
        <div class="card ovf-hidden">
        <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->id])}}">
            <img class="w-100" src="{{$item->type==1 ? $item->image_preview : ''}}" alt="Card image cap">
            <a>
            <div class="mask waves-effect waves-light rgba-white-slight"></div>
            </a>
        </a>

        <div class="card-body">
            <h4 class="card-title text-capitalize">{{$item->getTranslation('title',getCode())}}</h4>
        </div>
        </div>
    </div>
</div>
@endforeach
