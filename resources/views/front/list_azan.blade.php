<?php
preg_match("/iPhone|iPad|iPod/", $_SERVER['HTTP_USER_AGENT'], $matches);
$os = current($matches);

switch ($os) {
    case 'iPhone':
        if (preg_match('/OS 8/', $_SERVER['HTTP_USER_AGENT']) || preg_match('/OS 9/', $_SERVER['HTTP_USER_AGENT'])) {
            $Att = '&body=';
        } else {
            $Att = ';';
        }
        break;
    case 'iPad': $Att = '&body=';
        break;
    case 'iPod': $Att = '&body=';
        break;
    default : $Att = '?body=';
        break;
}?>
<!-- End Header -->
@foreach($audios as $val)
<tr>
    <td>
        <a class="btn" href="sms:{{$val->operator->code}}{{$Att}}{{$val->code}}">@lang('front.make_it_call_tone')</a>
    </td>
    <td>
        <p style="color:#000" href="#">
            <p>{{$val->getTranslation('title',getCode())}}</p>
        </p>
    </td>
    <td class="np-play" data-src="{{url($val->source)}}"></td>
</tr>
@endforeach
