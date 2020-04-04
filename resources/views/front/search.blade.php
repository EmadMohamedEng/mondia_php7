<div class="col-md-12 col-lg-12 col-xl-9 col-12 no_padding close_nav">
    <section class="search_page">
      <div class="col-md-12 col-lg-12 col-lg-12 col-12">
        <form class="form_search" id="form_search" action="{{route('front.list')}}" method="get">
          <button class="btn btn_search" onclick="document.getElementById('form_search').submit">
            <i class="fas fa-search fa-lg"></i>
          </button>
          @if(request()->has('OpID'))
          <input type="hidden" name="OpID" value="{{request()->get('OpID')}}">
          @endif
          <input type="text" name="search" class="textbox search-res" placeholder="@lang('front.search')">
        </form>
      </div>
    </section>
</div>