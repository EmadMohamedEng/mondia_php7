@if(app()->getLocale() == 'ar' || app()->getLocale() == 'ur')
<link rel="stylesheet" href="{{asset('front/css/du/du_ar.css')}}">
@else
<link rel="stylesheet" href="{{asset('front/css/du/du_en.css')}}">
@endif