@extends('front.master')
@section('page_title') Home @endsection
@section('content')
<div class="col-md-9 col-lg-9 col-xl-9 col-12 p-0 close_nav">
    @include('front.search')
    <section class="merath_page">
      <div class="merath_title">
        <h2>حساب المواريث</h2>
      </div>

      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_text">
          <div class="form-group">
            <input type="number" class="form-control merath_input" id="MalVarligi" onkeypress="EnsureNumeric()" name="MalVarligi" placeholder="0" min="0" required>
          </div>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_span">
          <h4><span class="span_req">* </span>قيمة التركة</h4>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_text">
          <div class="form-group">
            <input type="number" class="form-control merath_input" id="ErkekCocuk" placeholder="0" min="0" name="" placeholder="">
          </div>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_span">
          <h4><span class="span_req">* </span>عدد الابناء </h4>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_text">
          <div class="form-group">
            <input type="number" class="form-control merath_input" placeholder="0" min="0" id="KizCocuk" name="" placeholder="">
          </div>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_span">
          <h4><span class="span_req">* </span>عدد البنات </h4>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_text">
          <div class="form-group">
            <select class="form-control merath_input" name="sellist1" id="Baba">
              <option>لا</option>
              <option>نعم</option>
            </select>
          </div>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_span">
          <h4><span class="span_req">* </span>الاب </h4>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_text">
          <div class="form-group">
            <select class="form-control merath_input" name="" id="Anne">
              <option>لا</option>
              <option>نعم</option>
            </select>
          </div>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_span">
          <h4><span class="span_req">* </span>الام </h4>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_text">
          <div class="form-group">
            <input type="number" class="form-control merath_input" placeholder="0" min="0" id="ErkekKardes" name="" placeholder="">
          </div>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_span">
          <h4><span class="span_req">* </span>عدد الاخوة </h4>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_text">
          <div class="form-group">
            <input type="number" class="form-control merath_input" placeholder="0" min="0" id="KizKardes" name="" placeholder="">
          </div>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_span">
          <h4><span class="span_req">* </span>عدد الاخوات </h4>
        </div>
      </div>

      <div class="border-bottom"></div>

      <div class="row m-0">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_text">
          <div class="form-group">
            <select class="form-control merath_input" id="Es" name="">
              <option>لا</option>
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
            </select>
          </div>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 input_span">
          <h4><span class="span_req">* </span>عدد الزوجات </h4>
        </div>
      </div>

      <div class="button_merath">
        <button id="btn_cal" class="btn merath_btn" type="submit" disabled onclick="PayHesapla()">حساب الميراث
        </button>
      </div>

      <div class="table_table" style="display: none">
        <table class="table table-hover">
          <thead>
            <h4 class="text-center thead2_h4" style="display: none">قسمة التركة</h4>
          </thead>

          <tbody>
            <tr>
              <td class="td_1">نصيب الابناء</td>

              <td id="ECp" class="td_2 form-group">0</td>
            </tr>

            <tr>
              <td class="td_1">نصيب البنات</td>

              <td id="KCp" class="td_2">0</td>
            </tr>

            <tr>
              <td class="td_1">نصيب الاب</td>

              <td  id="Bp" class="td_2">0</td>
            </tr>

            <tr>
              <td class="td_1">نصيب الام</td>

              <td id="Ap" class="td_2">0</td>
            </tr>

            <tr>
              <td class="td_1">نصيب الزوجة الاولى</td>

              <td id="Es1p" class="td_2">0</td>
            </tr>

            <tr>
              <td class="td_1">نصيب الزوجة الثانية</td>

              <td id="Es2p" class="td_2">0</td>
            </tr>

            <tr>
              <td class="td_1">نصيب الزوجة الثالثة</td>

              <td id="Es3p" class="td_2">0</td>
            </tr>

            <tr>
              <td class="td_1">نصيب الزوجة الرابعة</td>

              <td id="Es4p" class="td_2">0</td>
            </tr>

            <tr>
              <td class="td_1">نصيب الاخوة</td>

              <td id="EKp" class="td_2">0</td>
            </tr>

            <tr>
              <td class="td_1">نصيب الاخوات</td>

              <td id="KKp" class="td_2">0</td>
            </tr>

            <tr>
              <td class="td_1">المتبقية</td>

              <td class="td_2">0</td>
            </tr>
          </tbody>
        </table>

        <div class="button_merath">
          <a href="merath.php" class="btn merath_btn" onclick="PayHesapla()">حساب الميراث</a>
        </div>
      </div>
    </section>
  </div>
@stop
@section('script')
<script src="{{asset('front/js/merath_calculation.js')}}"></script>
<script>
    $(document).ready(function () {
        $('input[type="number"]').keyup(function () {

            var empty = false;
            $('input[type="number"]').each(function () {
                if ($(this).val().length == 0) {
                    empty = true;
                }
            });

            if (empty) {
                $(':input[type="submit"]').attr('disabled', 'disabled');
            } else {
                $(':input[type="submit"]').removeAttr('disabled');
            }
        });
    });
</script>
@stop
