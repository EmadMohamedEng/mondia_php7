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
        <a class="btn btn-success" href="sms:{{$val->operator->code}}{{$Att}}{{$val->code}}">@lang('front.make_it_call_tone')</a>
    </td>
    <td>
        <a style="color:#000" href="#">
            <p>{{$val->getTranslation('title',getCode())}}</p>
        </a>
    </td>
    <td>
        <div class="np-play">
            <span class="fa fa-play" data-src="{{url($val->source)}}"></span>
        </div>
        <audio id="audio_test" controls="controls" style="display:none">
            <source id="audioSource" src="">
        </audio>
    </td>
</tr>
@endforeach
