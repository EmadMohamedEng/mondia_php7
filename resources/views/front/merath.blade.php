@extends('front.master')
@section('page_title') @lang('front.merath') @endsection
@section('content')
<style>
  /* .input_span{
    text-align: {{getCode() == 'ar' ? 'right' : 'left'}} !important;
  } */
  .table{
    direction: {{getCode() == 'ar' ? 'rtl !important' : 'ltr !important'}};
  }
  .table tr td{
    text-align: {{getCode() == 'ar' ? 'right !important' : 'left !important'}};
  }
</style>

<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
  @include('front.search')
  <section class="merath_page">
    <div class="all_mer" style="display:block">
      <div class="merath_title">
        <h2>@lang('front.merath')</h2>
      </div>

      <div class="row m-0 roll-in-top">
        <div class="col-md-8 col-lg-8 col-xl-6 col-8 p-0 input_span">
          <!-- <h4><span class="span_req">* </span>@lang('front.the_value_of_the_estate')</h4> -->
          <h4>@lang('front.the_value_of_the_estate')</h4>
        </div>

        <div class="col-md-4 col-lg-4 col-xl-6 col-4 p-0 input_text">
          <div class="form-group">
            <input type="number" class="form-control merath_input" id="MalVarligi" onkeypress="EnsureNumeric()" name="MalVarligi" placeholder="0" min="0" required>
          </div>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0 roll-in-top">
        <div class="col-md-8 col-lg-8 col-xl-6 col-8 p-0 input_span">
          <!-- <h4><span class="span_req">* </span>@lang('front.number_of_children') </h4> -->
          <h4>@lang('front.number_of_children') </h4>
        </div>

        <div class="col-md-4 col-lg-4 col-xl-6 col-4 p-0 input_text">
          <div class="form-group">
            <select class="form-control merath_input" id="ErkekCocuk" name="" >
              <option value="0">@lang('front.no')</option>
              @for($i = 1 ; $i <= 10 ; $i++)
              <option value="{{$i}}">{{$i}}</option>
              @endfor
            </select>
          </div>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0 roll-in-top">
        <div class="col-md-8 col-lg-8 col-xl-6 col-8 p-0 input_span">
          <!-- <h4><span class="span_req">* </span> @lang('front.number_of_girls')</h4> -->
          <h4>@lang('front.number_of_girls')</h4>
        </div>

        <div class="col-md-4 col-lg-4 col-xl-6 col-4 p-0 input_text">
          <div class="form-group">
            <select class="form-control merath_input" id="KizCocuk" name="" >
              <option value="0">@lang('front.no')</option>
              @for($i = 1 ; $i <= 10 ; $i++)
              <option value="{{$i}}">{{$i}}</option>
              @endfor
            </select>
          </div>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0 roll-in-top">
        <div class="col-md-8 col-lg-8 col-xl-6 col-8 p-0 input_span">
          <!-- <h4><span class="span_req">* </span>@lang('front.feather') </h4> -->
          <h4>@lang('front.feather') </h4>
        </div>

        <div class="col-md-4 col-lg-4 col-xl-6 col-4 p-0 input_text">
          <div class="form-group">
            <select class="form-control merath_input" name="sellist1" id="Baba">
              <option>@lang('front.no')</option>
              <option>@lang('front.yes')</option>
            </select>
          </div>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0 roll-in-top">
        <div class="col-md-8 col-lg-8 col-xl-6 col-8 p-0 input_span">
          <!-- <h4><span class="span_req">* </span>@lang('front.mother') </h4> -->
          <h4>@lang('front.mother') </h4>
        </div>

        <div class="col-md-4 col-lg-4 col-xl-6 col-4 p-0 input_text">
          <div class="form-group">
            <select class="form-control merath_input" name="" id="Anne">
              <option>@lang('front.no')</option>
              <option>@lang('front.yes')</option>
            </select>
          </div>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0 roll-in-top">
        <div class="col-md-8 col-lg-8 col-xl-6 col-8 p-0 input_span">
          <!-- <h4><span class="span_req">* </span> @lang('front.number_of_brother') </h4> -->
          <h4>@lang('front.number_of_brother') </h4>
        </div>

        <div class="col-md-4 col-lg-4 col-xl-6 col-4 p-0 input_text">
          <div class="form-group">
            <select class="form-control merath_input" id="ErkekKardes" name="">
              <option value="0">@lang('front.no')</option>
              @for($i = 1 ; $i <= 10 ; $i++)
              <option value="{{$i}}">{{$i}}</option>
              @endfor
            </select>
          </div>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0 roll-in-top">
        <div class="col-md-8 col-lg-8 col-xl-6 col-8 p-0 input_span">
          <!-- <h4><span class="span_req">* </span>@lang('front.number_of_sister') </h4> -->
          <h4>@lang('front.number_of_sister') </h4>
        </div>

        <div class="col-md-4 col-lg-4 col-xl-6 col-4 p-0 input_text">
          <div class="form-group">
            <select class="form-control merath_input" id="KizKardes" name="" >
              <option value="0">@lang('front.no')</option>
              @for($i = 1 ; $i <= 10 ; $i++)
              <option value="{{$i}}">{{$i}}</option>
              @endfor
            </select>
          </div>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0 roll-in-top">
        <div class="col-md-8 col-lg-8 col-xl-6 col-8 p-0 input_span">
          <!-- <h4><span class="span_req">* </span> @lang('front.number_of_wife') </h4> -->
          <h4>@lang('front.number_of_wife') </h4>
        </div>

        <div class="col-md-4 col-lg-4 col-xl-6 col-4 p-0 input_text">
          <div class="form-group">
            <select class="form-control merath_input" id="Es" name="">
              <option>@lang('front.no')</option>
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
            </select>
          </div>
        </div>
      </div>

      <div class="button_merath roll-in-top">
        <button id="btn_cal" class="btn merath_btn" type="submit" disabled onclick="PayHesapla()"> @lang('front.merath')
        </button>
      </div>
    </div>

    <div class="table_table" style="display: none">
      <table class="table table-hover">
        <thead>
          <h4 class="text-center thead2_h4" style="display: none">@lang('front.dividing_estate')</h4>
        </thead>

        <tbody>
          <tr>
            <td class="td_1">@lang('front.sons_share')</td>

            <td id="ECp" class="td_2 form-group">0</td>
          </tr>

          <tr>
            <td class="td_1">@lang('front.girls_share')</td>

            <td id="KCp" class="td_2">0</td>
          </tr>

          <tr>
            <td class="td_1">@lang('front.father_share')</td>

            <td id="Bp" class="td_2">0</td>
          </tr>

          <tr>
            <td class="td_1">@lang('front.mother_share')</td>

            <td id="Ap" class="td_2">0</td>
          </tr>

          <tr>
            <td class="td_1">@lang('front.the_first_wife_share')</td>

            <td id="Es1p" class="td_2">0</td>
          </tr>

          <tr>
            <td class="td_1">@lang('front.the_second_wife_share')</td>

            <td id="Es2p" class="td_2">0</td>
          </tr>

          <tr>
            <td class="td_1">@lang('front.the_third_wife_share')</td>

            <td id="Es3p" class="td_2">0</td>
          </tr>

          <tr>
            <td class="td_1">@lang('front.the_four_wife_share')</td>

            <td id="Es4p" class="td_2">0</td>
          </tr>

          <tr>
            <td class="td_1">@lang('front.brother_share')</td>

            <td id="EKp" class="td_2">0</td>
          </tr>

          <tr>
            <td class="td_1">@lang('front.sister_share')</td>

            <td id="KKp" class="td_2">0</td>
          </tr>

          <tr>
            <td class="td_1">@lang('front.the_remain')</td>

            <td class="td_2">0</td>
          </tr>
        </tbody>
      </table>

      <div class="button_merath">
        <button class="btn merath_btn" onclick="again()">@lang('front.merath') </button>
      </div>
    </div>
  </section>
</div>
@stop
@section('script')
<script src="{{asset('front/js/merath_calculation.js')}}"></script>
<script>
  $(document).ready(function() {
    $('#MalVarligi').keyup(function() {

      var empty = false;
      if ($(this).val().length == 0) {
        empty = true;
      }

      if (empty) {
        $(':input[type="submit"]').attr('disabled', 'disabled');
      } else {
        $(':input[type="submit"]').removeAttr('disabled');
      }
    });
  });

  function again() {
    $('.table_table').css('display', 'none');
    $('.all_mer').show()
    document.documentElement.scrollTop = 0;
  }
</script>
@stop
