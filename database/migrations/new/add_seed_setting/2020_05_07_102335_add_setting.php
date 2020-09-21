<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddSetting extends Migration
{
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up()
  {
    \DB::table('settings')->insert(array(
      0 =>
      array(
        'key' => 'terms_ar',
        'value' => '<ul class="terms text-right text-white" dir="rtl" style="box-sizing: border-box; margin-top: 1rem; margin-bottom: 1rem; font-size: 16px; padding-right: 1.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; color: rgb(255, 255, 255) !important;">
        <li style="box-sizing: border-box; margin-bottom: 0.75rem;">تجديد الاشتراك سيكون تلقائي وفعال بتكلفة 10 ريال فى الاسبوع</li>
        <li style="box-sizing: border-box; margin-bottom: 0.75rem;">يمكنك إيقاف هذه الخدمة في أي وقت عن طريق إرسال Unsub ISL الى 92842</li>
        <li style="box-sizing: border-box; margin-bottom: 0.75rem;">يجب ان يكون عمرك 18 عاماً أو أكثر أو لديك الإذن من والديك أو الشخص المسؤول عن دفع فاتورتك حتى تستطيع الاشتراك هذه الخدمة</li>
      </ul>',
        'created_at' => '2020-09-21 09:10:41',
        'updated_at' => '2020-09-21 09:26:11',
        'type_id' => 1,
        'order' => 0,
      ),
      1 =>
      array(
        'key' => 'terms_en',
        'value' => '<ul class="terms text-left text-white" dir="ltr" style="box-sizing: border-box; margin-top: 1rem; margin-bottom: 1rem; font-size: 16px; padding-right: 1.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; color: rgb(255, 255, 255) !important;">
              <li style="box-sizing: border-box; margin-bottom: 0.75rem;">Subscription renewal will be automatic and effective at a cost of 10 riyals per week</li>
              <li style="box-sizing: border-box; margin-bottom: 0.75rem;">You can stop this service at any time by sending Unsub ISL to 92842</li>
              <li style="box-sizing: border-box; margin-bottom: 0.75rem;">You must be 18 years of age or over or have permission from your parents or the person responsible for paying your bill in order to be able to subscribe to this service</li>
            </ul>',
        'created_at' => '2020-09-21 09:10:41',
        'updated_at' => '2020-09-21 09:26:11',
        'type_id' => 1,
        'order' => 0,
      ),
      2 =>
      array(
        'key' => 'f_q_en',
        'value' => '<ul class="terms text-left text-white" dir="ltr" style="box-sizing: border-box; margin-top: 1rem; margin-bottom: 1rem; font-size: 16px; padding-right: 1.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; color: rgb(255, 255, 255) !important;">
              <li style="box-sizing: border-box; margin-bottom: 0.75rem;">Subscription renewal will be automatic and effective at a cost of 10 riyals per week</li>
              <li style="box-sizing: border-box; margin-bottom: 0.75rem;">You can stop this service at any time by sending Unsub ISL to 92842</li>
              <li style="box-sizing: border-box; margin-bottom: 0.75rem;">You must be 18 years of age or over or have permission from your parents or the person responsible for paying your bill in order to be able to subscribe to this service</li>
            </ul>',
        'created_at' => '2020-09-21 09:10:41',
        'updated_at' => '2020-09-21 09:26:11',
        'type_id' => 1,
        'order' => 0,
      ),
      3 =>
      array(
        'key' => 'f_q_ar',
        'value' => '<ul class="terms text-right text-white" dir="rtl" style="box-sizing: border-box; margin-top: 1rem; margin-bottom: 1rem; font-size: 16px; padding-right: 1.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; color: rgb(255, 255, 255) !important;">
        <li style="box-sizing: border-box; margin-bottom: 0.75rem;">تجديد الاشتراك سيكون تلقائي وفعال بتكلفة 10 ريال فى الاسبوع</li>
        <li style="box-sizing: border-box; margin-bottom: 0.75rem;">يمكنك إيقاف هذه الخدمة في أي وقت عن طريق إرسال Unsub ISL الى 92842</li>
        <li style="box-sizing: border-box; margin-bottom: 0.75rem;">يجب ان يكون عمرك 18 عاماً أو أكثر أو لديك الإذن من والديك أو الشخص المسؤول عن دفع فاتورتك حتى تستطيع الاشتراك هذه الخدمة</li>
      </ul>',
        'created_at' => '2020-09-21 09:10:41',
        'updated_at' => '2020-09-21 09:26:11',
        'type_id' => 1,
        'order' => 0,
      ),
    ));
  }

  /**
   * Reverse the migrations.
   *
   * @return void
   */
  public function down()
  {
    //
  }
}
