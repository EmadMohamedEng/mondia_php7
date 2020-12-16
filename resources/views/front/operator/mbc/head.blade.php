@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
<link rel="stylesheet" href="{{asset('front/css/mbc/mbc_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/mbc/mbc_en.css')}}">
@endif
