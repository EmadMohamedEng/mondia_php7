@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
<link rel="stylesheet" href="{{asset('front/css/orange/orange_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/orange/orange_en.css')}}">
@endif
