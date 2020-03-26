@extends('front.master')
@section('page_title') PinCode @endsection
@section('content')
<div class="col-md-12 col-lg-9 col-xl-9 col-12 p-0 close_nav">
    <section class="subscribe_page">
      <div class="row m-0">
        <div class="col-md-9 col-lg-9 col-xl-9 col-12">
          <div class="alert alert-success" role="alert">تم التسجيل بنجاح
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

          <div class="alert alert-danger" role="alert">من فضلك ادخل رقم التحقق
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

          <h2 class="login_title my-4">ادخل كود التفعيل</h2>

          <div class="subscribe_bg">
            <div class="subtitle mb-3 py-2 px-4">تم ارسال رقم مكون من خمس ارقام الى رقم التليفون الذى ادخلته رجاء ادخال الخمس ارقام حتى يتم تاكيد رقم التليفون</div>

            <form class="form-signin" action="/du-portal-lcm-v1/web/auth/sendPIN;jsessionid=E39F2E299332A6D10B85143C1CF22ACB" method="post">
              <div class="row form-group account-wall">
                <div class="col-md-12 col-lg-12 col-xl-12 col-12 phone-number-input">
                  <div class="form-group px-3">
                    <input type="number" class="form-control" placeholder="ادخل كود التفعيل" maxlength="14" autofocus="autofocus" id="msisdn" name="msisdn" value="">
                  </div>
                </div>
              </div>

              <div class="buttons row px-3 my-3">
                <div class="col-md-12 col-lg-12 col-xl-12 col-12">
                  <button name="action" value="SUBMIT" class="btn btnup btn-primary btn-block" type="submit">تفعيل</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>

@stop
