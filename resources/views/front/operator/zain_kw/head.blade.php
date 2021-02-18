@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
<link rel="stylesheet" href="{{asset('front/css/zain_kw/zain_kw_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/zain_kw/zain_kw_en.css')}}">
@endif
