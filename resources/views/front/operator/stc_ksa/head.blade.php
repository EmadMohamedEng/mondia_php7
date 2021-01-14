@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
<link rel="stylesheet" href="{{asset('front/css/stc/stc_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/stc/stc_en.css')}}">
@endif
