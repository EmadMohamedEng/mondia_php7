@extends('front.master')
@section('page_title') @lang('front.zakah') @endsection
@section('content')

<style>
  .main_container {
    padding-bottom: 23%;
  }
</style>

<div class="col-md-12 col-lg-12 col-xl-9 col-12 p-0 close_nav">
  <section class="zakkah_v2_page">
    <div class="container p-0 m-0">
      <div class="row m-0">
        <div class="col-md-12 col-lg-12 col-xl-12 col-12">
          <div class="currency_title font-weight-bold">@lang('front.zakah_page2.nisab')</div>

          <i class="currency_icon fas fa-info-circle fa-lg"></i>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
          <div class="currency_bg w-100 pb-2 px-3">
            <div class="row m-0">
              <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                <p class="currency_text mb-0"> @lang('front.zakah_gold_price') </p>
              </div>

              <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                <form class="form_input from-middle" id="form_search" action="#0" method="get">
                  <input type="text" class="textbox search-res input-middle text-center w-100 gram_price" placeholder="@lang('front.zakah_page2.enter_money')">
                  <span class="bord"></span>
                </form>
              </div>

              <br><br><br>

              {{-- <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                <p class="currency_text mb-0">طريقة التحديد</p>
              </div>

              <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                <div class="currency_selectBox">
                  <select name="sources" class="custom-select border-0 p-0" placeholder="USD">
                    <option value="profile">شافعى، الحنبلي، أيوفي - 85 جرام</option>
                    <option value="word">مالكي - 84 جرام</option>
                    <option value="word">معجم الفقهاء - 84.66 جرام</option>
                    <option value="word">شافعي نوح كلر - 84.7 جرام</option>
                    <option value="word">حنفي ( أبويسر، ابن عابدين ) - 96 جرام</option>
                    <option value="word">حنفي ( شام، عبدالعزيز عيون السود ) - 100 جرام</option>
                  </select>
                </div>
              </div> --}}

              <br><br><br>

              <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                <p class="currency_text mb-0">@lang('front.zakah_page2.nisab')</p>
              </div>

              <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0">
                <span class="result nsap_result">0</span>
              </div>
            </div>
          </div>
        </div>

        <div id="accordion" class="w-100">

          <div class="col-md-12 col-lg-12 col-xl-12 col-12">
            <div class="currency_title font-weight-bold">@lang('front.zakah_page2.original')</div>

            <i class="currency_icon fas fa-info-circle fa-lg"></i>
          </div>

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
            <div id="">
              <div class="card">
                <div class="card-header p-1" id="headingTwo">
                  <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <div class="currency_title font-weight-bold">@lang('front.zakah_page2.money')</div>

                    <i class="up_down fas fa-chevron-down fa-lg"></i>

                    {{-- <span class="font-weight-bold">0</span> --}}
                  </button>
                </div>

                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                  <div class="card-body p-2">
                    <div class="currency_bg w-100 pb-2 px-3">
                      <div class="row m-0">
                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.liquid_money')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <br><br><br>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.cash_in_bank_accounts')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
            <div id="">
              <div class="card">
                <div class="card-header p-1" id="headingThree">
                  <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                    <div class="currency_title font-weight-bold">@lang('front.zakah_page2.gold')</div>

                    <i class="up_down fas fa-chevron-down fa-lg"></i>

                    {{-- <span class="font-weight-bold">0</span> --}}
                  </button>
                </div>

                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-body p-2">
                    <div class="currency_bg w-100 pb-2 px-3">
                      <div class="row m-0">
                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.24_karat')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <br><br><br>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.21_karat')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <br><br><br>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.18_karat')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
            <div id="">
              <div class="card">
                <div class="card-header p-1" id="headingFour">
                  <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                    <div class="currency_title font-weight-bold">@lang('front.zakah_page2.silver')</div>

                    <i class="up_down fas fa-chevron-down fa-lg"></i>

                    {{-- <span class="font-weight-bold">0</span> --}}
                  </button>
                </div>

                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                  <div class="card-body p-2">
                    <div class="currency_bg w-100 pb-2 px-3">
                      <div class="row m-0">
                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.silver')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
            <div id="">
              <div class="card">
                <div class="card-header p-1" id="headingFive">
                  <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                    <div class="currency_title font-weight-bold">@lang('front.zakah_page2.investments')</div>

                    <i class="up_down fas fa-chevron-down fa-lg"></i>

                    {{-- <span class="font-weight-bold">0</span> --}}
                  </button>
                </div>

                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                  <div class="card-body p-2">
                    <div class="currency_bg w-100 pb-2 px-3">
                      <div class="row m-0">
                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.stakes_in_companies')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.investments') @lang('front.zakah_page2.other')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
            <div id="">
              <div class="card">
                <div class="card-header p-1" id="headingSix">
                  <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
                    <div class="currency_title font-weight-bold">@lang('front.zakah_page2.real_estate')</div>

                    <i class="up_down fas fa-chevron-down fa-lg"></i>

                    {{-- <span class="font-weight-bold">0</span> --}}
                  </button>
                </div>

                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                  <div class="card-body p-2">
                    <div class="currency_bg w-100 pb-2 px-3">
                      <div class="row m-0">
                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.real_estate')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.lease_entry')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
            <div id="">
              <div class="card">
                <div class="card-header p-1" id="headingSeven">
                  <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="true" aria-controls="collapseSeven">
                    <div class="currency_title font-weight-bold">@lang('front.zakah_page2.trading')</div>

                    <i class="up_down fas fa-chevron-down fa-lg"></i>

                    {{-- <span class="font-weight-bold">0</span> --}}
                  </button>
                </div>

                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                  <div class="card-body p-2">
                    <div class="currency_bg w-100 pb-2 px-3">
                      <div class="row m-0">
                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.commercial_cash')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.stock') / @lang('front.zakah_page2.commodities')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>


              </div>
            </div>
          </div>

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
            <div id="">
              <div class="card">
                <div class="card-header p-1" id="headingEight">
                  <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapseEight" aria-expanded="true" aria-controls="collapseEight">
                    <div class="currency_title font-weight-bold">@lang('front.zakah_page2.other')</div>

                    <i class="up_down fas fa-chevron-down fa-lg"></i>

                    {{-- <span class="font-weight-bold">0</span> --}}
                  </button>
                </div>

                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                  <div class="card-body p-2">
                    <div class="currency_bg w-100 pb-2 px-3">
                      <div class="row m-0">
                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.retirement')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.loans_to_relatives_and_strangers')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.original') @lang('front.zakah_page2.other')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>


              </div>
            </div>
          </div>

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
            <div id="">
              <div class="card">
                <div class="card-header p-1" id="headingNine">
                  <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapseNine" aria-expanded="true" aria-controls="collapseNine">
                    <div class="currency_title font-weight-bold">@lang('front.zakah_page2.precious_stones')</div>

                    <i class="up_down fas fa-chevron-down fa-lg"></i>

                    {{-- <span class="font-weight-bold">0</span> --}}
                  </button>
                </div>

                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                  <div class="card-body p-2">
                    <div class="currency_bg w-100 pb-2 px-3">
                      <div class="row m-0">
                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.precious_stones')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res his_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-12 col-lg-12 col-xl-12 col-12 p-0">
            <div id="">
              <div class="card">
                <div class="card-header p-1" id="headingTen">
                  <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapseTen" aria-expanded="true" aria-controls="collapseTen">
                    <div class="currency_title font-weight-bold">@lang('front.zakah_page2.debts')</div>

                    <i class="up_down fas fa-chevron-down fa-lg"></i>

                    {{-- <span class="red_result font-weight-bold">0</span> --}}
                  </button>
                </div>

                <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion">
                  <div class="card-body p-2">
                    <div class="currency_bg w-100 pb-2 px-3">
                      <div class="row m-0">
                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.pay_by_credit_card')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res other_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.pay_for_the_house')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res other_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.pay_for_the_car')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res other_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.commercial_payment')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res other_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.religion_to_relatives')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res other_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <p class="currency_text mb-0">@lang('front.zakah_page2.religion_to_strangers')</p>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-6 col-6 p-0 flex_center">
                          <form class="form_input from-middle" id="form_search" action="#0" method="get">
                            <input type="text" class="textbox search-res other_money input-middle text-center w-100" placeholder="@lang('front.zakah_page2.enter_money')">
                            <span class="bord"></span>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="zakah_result w-100">
      <div class="row p-2">
        <div class="col-md-6 col-lg-6 col-xl-6 col-6 flex_center">
          <p class="zakah_result_right mb-0">@lang('front.zakah_page2.total') @lang('front.zakah_page2.original')</p>

          <p class="zakah_result_right mb-0 all_money">0</p>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6 col-6 flex_center">
          <p class="zakah_result_left mb-0">@lang('front.zakah_page2.zakat_due')</p>

          <p class="zakah_result_left mb-0 zakah">0</p>
        </div>
      </div>
    </div>
  </section>
</div>

@stop

@section('script')
<script>
  var nsapPrice  = 0 // it's calcaulte from price of gold in country (21 gm) now it's 1000*85
  var hisMoney   = 0 // all money that he have and it's belong to the person
  var otherMoney = 0 // all money that he shold retrive to people
  var all_money  = 0 // all money after he retrive money

  $('.gram_price').keyup(function(){
    nsapPrice = parseInt($(this).val() * 85)
    $('.nsap_result').html( nsapPrice )
  })

  $('.his_money, .other_money').keyup(function(){
    calculateHisMoney()
    calculateOtherMoney()
    calculateZakah()
  })

  // calculate zakah it's comming from get 2.5% from all your money if youe money bigget then nasap_price 85gm from gold 21
  function calculateZakah() {
    all_money = hisMoney - otherMoney
    $('.all_money').html(all_money)

    if(all_money >= nsapPrice) {
      $('.zakah').html( (all_money * 2.5) /100 )
    } else {
      $('.zakah').html(0)
    }
  }

  // calculate all money that you have from all resource that belong to you
  function calculateHisMoney() {
    hisMoney = 0

    $(".his_money").each(function(index,element){
      if($(this).val())
        hisMoney = parseInt(hisMoney) + parseInt($(this).val())
    });
  }

  // calculate money that people needed it from you
  function calculateOtherMoney() {
    otherMoney = 0

    $(".other_money").each(function(index,element){
      if($(this).val())
      otherMoney = parseInt(otherMoney) + parseInt($(this).val())
    });
  }

</script>
@endsection
