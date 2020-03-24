@extends('front.master')
@section('page_title') Home @endsection
@section('content')

<div class="col-md-9 col-lg-9 col-xl-9 col-12 p-0 close_nav">

  <section class="zakkah_page">
    <h4 class="text-center font-weight-bold">حساب الزكاة</h4>
    <p class="text-right">
      إذا أردت أن تحسب النصاب بالذهب فهو المال الذي يبلغ أن يشترى به (85) جراماً من الذهب عيار (24). فلو كان جرام الذهب عيار (24) مثلاً بـ (60) فيكون النصاب هو: (85) جرام × (60) = (5100)، فإن كان مالك قد بلغ النصاب وجب عليك اخراج الزكاة وهي ربع العشر وطريقة حسابها ان تقسم مالك على العدد 40
    </p>

    <fieldset class="zakah_zakah text-right my-5">
      <ul class="form_zakah list-unstyled">
        <li class="field">
          <label class="font-weight-bold">سعر غرام الذهب </label>

          <div class="field-value">
            <input type="text" name="goldNissab" id="txtGoldPrice" class="textbox required" maxlength="255" />
          </div>

          <span class="clearfix"></span>
        </li>

        <div class="border-bottom"></div>

        <li class="field">
          <label class="font-weight-bold">المال المدّخر </label>

          <div class="field-value">
            <input type="text" class="textbox required" id="txtSavedMoney" maxlength="255" />
          </div>

          <span class="clearfix"></span>
        </li>

        <div class="field_result">
          <li class="field">
            <div class="field-value">
              <label id="result"></label>
            </div>
          </li>
        </div>

        <div class="border-bottom"></div>

        <li class="actions text-center my-3">
          <button id="Calculate" class="button">احسب</button>
        </li>
      </ul>
    </fieldset>
  </section>
</div>

@stop
