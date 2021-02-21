@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
<link rel="stylesheet" href="{{asset('front/css/ooredoo_kw/ooredoo_kw_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/ooredoo_kw/ooredoo_kw_en.css')}}">
@endif
