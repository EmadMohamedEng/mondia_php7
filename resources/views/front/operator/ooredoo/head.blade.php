@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
<link rel="stylesheet" href="{{asset('front/css/ooredoo/ooredoo_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/ooredoo/ooredoo_en.css')}}">
@endif
