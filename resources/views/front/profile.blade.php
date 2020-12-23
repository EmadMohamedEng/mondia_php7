<!-- @extends('front.master') -->
@section('page_title') @lang('front.profile') @endsection
@section('content')

<section class="profile">
  @if(request()->get('OpID') == mbc)
  <div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
    @else
    <div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">
      @endif
      <div class="profile_title m-auto text-center">
        <h2>@lang('front.profile')</h2>
      </div>

      {{-- @php
      $style_align = session()->get('applocale') == 'en' ? 'color: white;text-align: left' : 'color: white;text-align: right';
      @endphp --}}

      <div class="profile_table">
        <table class="table table-bordered ">
          <tbody>
            <tr>
              <td class="label-view font-weight-bold">@lang('messages.users.phone')</td>
              <td class="label-view2">{{session()->get('MSISDN')}}</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold"> @lang('messages.users.date')</td>
              <td class="label-view2">{{$date}}</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.service_name')</td>
              <td class="label-view2">@lang('messages.Mbc_Muslim_guide')</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.service_type')</td>
              <td class="label-view2">@lang('messages.repeat.weekly')</td>
            </tr>

            <tr>
              <td class="label-view font-weight-bold">@lang('messages.description')</td>
              <td class="label-view2">@lang('messages.discription_weekly')</td>
            </tr>
          </tbody>
        </table>
      </div>

      @if(request()->get('OpID') == mbc && $subscriber_content->count())
      <div class="profile_card">
        <div class="row m-0">
          @for ($day = $subscriber_day ; $day > 0 ; $day--)

          @foreach ($subscriber_content as $item)

          @if ($item->subscription_day == $day)

          @if ($count != $item->subscription_day)
          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-1">
            <div class="profile_card_title">
              <h6 class="font-weight-bold">Day {{$day}}</h6>
            </div>
          </div>
          @endif

          <div class="col-md-4 col-lg-4 col-xl-4 col-6 p-1">
            <div class="item">
              <div class="card ovf-hidden">
                <a class="owl_content_img view overlay link_href" href="{{route('front.inner',['id' => $item->content_id])}}">
                  <img class="w-100" src="{{url($item->content->image_preview)}}" alt="{{$item->content->image_preview}}">

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
          @php
              $count = $item->subscription_day;
          @endphp
          @endforeach

          @endfor

        </div>
      </div>
      @endif
</section>
@stop
