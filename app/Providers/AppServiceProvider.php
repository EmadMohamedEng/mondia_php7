<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

      if (request()->get('OpID') == mbc_op_id() || request()->get('OpID') == orange_op_id()
      || request()->fullUrl() == url("orange_portal_login")  || request()->fullUrl() == url("elkenz_portal_landing")
      ||  request()->get('OpID') == zain_kuwait()   ) {
        $lang = 'ar';
        session()->put('applocale', $lang);
      }

        Schema::defaultStringLength(191);
    }
}
