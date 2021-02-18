@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur' )
<link rel="stylesheet" href="{{asset('front/css/omantel/omantel_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/omantel/omantel_en.css')}}">
@endif
