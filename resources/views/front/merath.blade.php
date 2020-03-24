@extends('front.master')
@section('page_title') Home @endsection
@section('content')
<style>


    .req {
        color: red;
        font-size: 13px;
    }

    .cal_mera {
        text-align: center;
        margin: 5% auto;
    }

    .input_span {
        text-align: center;
    }

    .merath_input {
        width: 30%;
        text-align: center;
        border: 2px solid;
        border-image-source: linear-gradient(45deg, #bd0ce9 40%, #00a9ce 60%);
        border-image-slice: 1;
        background-image: linear-gradient(#ffffff, #ffffff),
        linear-gradient(to right, #753bbd, #00a9ce);
        border-radius: 4px;
    }

    .merath_btn {
        width: 16%;
        text-align: center;
        border: 2px solid;
        border-image-source: linear-gradient(45deg, #bd0ce9 40%, #00a9ce 60%);
        border-image-slice: 1;
        background-image: linear-gradient(#f2f2f2, #f2f2f2),
        linear-gradient(to right, #753bbd, #00a9ce);
        border-radius: 4px;
    }

    .hr_merath {
        width: 81%;
    }

    .button_merath {
        text-align: center;
        margin: 5% auto;
    }

    .span_req {
        color: red;
    }

    .table_color {
        border: 2px #00a9ce solid;
        border-radius: 7px;

    }

    @media only screen and (min-width: 0) and (max-width: 600px) {
        .merath_btn {
            width: 40%;
        }
        .input_span{
            text-align: end;
            margin-top: -2.5rem;
        }
    }
</style>

<div class="col-md-9 col-lg-9 col-xl-9 col-12 p-0">


    <div class="container-fluid">
        <div>
            <h2 class="cal_mera">حساب المواريث</h2>
        </div>
        <div class="row">
            <div class="col-md-6 col-xs-6 input_text">
                <div class="form-group">
                    <input type="number" class="form-control merath_input" id="MalVarligi"
                           onkeypress="EnsureNumeric()" name="MalVarligi" placeholder="1000" min="0" required>
                </div>
            </div>
            <div class="col-md-6 col-xs-6 input_span">
                <h4><span class="span_req">* </span>قيمة التركة</h4>
            </div>
        </div>
        <hr class="hr_merath">
        <div class="row">
            <div class="col-md-6 col-xs-6 input_text">
                <div class="form-group">
                    <input type="number" class="form-control merath_input" id="ErkekCocuk" min="0" name=""
                           placeholder="">
                </div>
            </div>
            <div class="col-md-6 col-xs-6 input_span">
                <h4><span class="span_req">* </span>عدد الابناء </h4>
            </div>
        </div>
        <hr class="hr_merath">
        <div class="row">
            <div class="col-md-6 col-xs-6 input_text">
                <div class="form-group">
                    <input type="number" class="form-control merath_input" min="0" id="KizCocuk" name="" placeholder="">
                </div>
            </div>
            <div class="col-md-6 col-xs-6 input_span">
                <h4><span class="span_req">* </span>عدد البنات </h4>
            </div>
        </div>
        <hr class="hr_merath">
        <div class="row">
            <div class="col-md-6 col-xs-6 input_text">
                <div class="form-group">
                    <select class="form-control merath_input" name="sellist1" id="Baba">
                        <option>لا</option>
                        <option>نعم</option>
                    </select>
                </div>
            </div>
            <div class="col-md-6 col-xs-6 input_span">
                <h4><span class="span_req">* </span>الاب </h4>
            </div>
        </div>
        <hr class="hr_merath">
        <div class="row">
            <div class="col-md-6 col-xs-6 input_text">
                <div class="form-group">
                    <select class="form-control merath_input" name="" id="Anne">
                        <option>لا</option>
                        <option>نعم</option>
                    </select>
                </div>
            </div>
            <div class="col-md-6 col-xs-6 input_span">
                <h4><span class="span_req">* </span>الام </h4>
            </div>
        </div>
        <hr class="hr_merath">
        <div class="row">
            <div class="col-md-6 col-xs-6 input_text">
                <div class="form-group">
                    <input type="number" class="form-control merath_input" min="0" id="ErkekKardes" name=""
                           placeholder="">
                </div>
            </div>
            <div class="col-md-6 col-xs-6 input_span">
                <h4><span class="span_req">* </span>عدد الاخوة </h4>
            </div>
        </div>
        <hr class="hr_merath">
        <div class="row">
            <div class="col-md-6 col-xs-6 input_text">
                <div class="form-group">
                    <input type="number" class="form-control merath_input" min="0" id="KizKardes" name=""
                           placeholder="">
                </div>
            </div>
            <div class="col-md-6 col-xs-6 input_span">
                <h4><span class="span_req">* </span>عدد الاخوات </h4>
            </div>
        </div>
        <hr class="hr_merath">
        <div class="row">
            <div class="col-md-6 col-xs-6 input_text">
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
            <div class="col-md-6 col-xs-6 input_span">
                <h4><span class="span_req">* </span>عدد الزوجات </h4>
            </div>
        </div>
        <div class="button_merath">
            <button id="btn_cal" class="btn merath_btn" type="submit" disabled onclick="PayHesapla()">حساب الميراث
            </button>
        </div>

        <div class="t2" style="display: none">
            <table class="table table-hover table_color">
                <thead>
                <h4 class="text-center thead2_h4" style="display: none">قسمة التركة</h4>
                </thead>
                <tbody>
                <tr>
                    <td>نصيب الابناء</td>
                    <td>
                        <div class="form-group">
                            <label id="ECp">0</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>نصيب البنات</td>
                    <td>
                        <div class="form-group">
                            <label id="KCp">0</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>نصيب الاب</td>
                    <td>
                        <div class="form-group">
                            <label id="Bp">0</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>نصيب الام</td>
                    <td>
                        <div class="form-group">
                            <label id="Ap">0</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>نصيب الزوجة الاولى</td>
                    <td>
                        <div class="form-group">
                            <label id="Es1p">0</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>نصيب الزوجة الثانية</td>
                    <td>
                        <div class="form-group">
                            <label id="Es2p">0</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>نصيب الزوجة الثالثة</td>
                    <td>
                        <div class="form-group">
                            <label id="Es3p">0</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>نصيب الزوجة الرابعة</td>
                    <td>
                        <div class="form-group">
                            <label id="Es4p">0</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>نصيب الاخوة</td>
                    <td>
                        <div class="form-group">
                            <label id="EKp">0</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>نصيب الاخوات</td>
                    <td>
                        <div class="form-group">
                            <label id="KKp">0</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>المتبقية</td>
                    <td>
                        <div class="form-group">
                            <label id="Xp">0</label>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="button_merath">
                <a href="merath.php" class="btn merath_btn" onclick="PayHesapla()">حساب الميراث</a>
            </div>
        </div>
    </div>

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
