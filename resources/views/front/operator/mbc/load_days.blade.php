@if(request()->get('OpID') == mbc && $subscriber_content->count())
      <div class="profile_card">
        <div class="row m-0" id="load_more">
          @foreach ($subscription_days as $day)

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-1">
            <div class="profile_card_title">
                @if ($day == 0)
                <h6 class="font-weight-bold">@lang('messages.FreeContent')</h6>
                @else
                <h6 class="font-weight-bold">@lang('messages.Day') {{$day}}</h6>
                @endif
            </div>
          </div>

          @foreach ($subscriber_content as $item)

          @if ($item->subscription_day == $day)
          <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-1">
            <div class="item">
              <div class="card ovf-hidden">
                <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->content_id])}}">

                  @php
                  if($item->content->type == 1) { //video
                  $src = $item->content->image_preview;
                  }elseif($item->content->type == 3) { //image
                  $src =url( $item->content->video );
                  }elseif($item->content->type == 2) { //audio
                    $src = $item->content->image_preview;
                  }else{
                  $src = url('front\images\Cutting\Contnent_Page\004.png');
                  }
                  @endphp


                  <img class="w-100"  src="{{$src}}"  alt="{{get_title($item->content_id)}}">

                  <a>
                    <div class="mask waves-effect waves-light rgba-white-slight"></div>
                  </a>
                </a>

                <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->content_id])}}">
                  <div class="card-body">
                    <h4 class="card-title text-capitalize">{{get_title($item->content_id)}}</h4>
                  </div>
                </a>

              </div>
            </div>
          </div>
          @endif

          @endforeach

          @endforeach

        </div>
      </div>
      @endif
