@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
<link rel="stylesheet" href="{{asset('front/css/stc_ksa/stc_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/stc_ksa/stc_en.css')}}">
@endif
