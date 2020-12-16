@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
<link rel="stylesheet" href="{{asset('front/css/mbc/ar.css')}}">
<link rel="stylesheet" href="{{asset('front/css/mbc/mbc_menu_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/mbc/mbc_menu_en.css')}}">
<link rel="stylesheet" href="{{asset('front/css/mbc/en.css')}}">
@endif
