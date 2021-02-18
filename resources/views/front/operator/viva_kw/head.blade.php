@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
<link rel="stylesheet" href="{{asset('front/css/viva_kw/viva_kw_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/viva_kw/viva_kw_en.css')}}">
@endif
