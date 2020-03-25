@if($videoID !=null)
{!! Form::hidden('video_id',$videoID,['class'=>'form-control input-lg']) !!}
{!! Form::hidden('title',$video->title,['class'=>'form-control input-lg']) !!}
{!! Form::hidden('provider_id',$video->service->provider->id,['class'=>'form-control input-lg']) !!}
@elseif($providerID !=null)
{!! Form::hidden('provider_id',$providerID,['class'=>'form-control input-lg']) !!}
@else
<div class="form-group">
    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Provider <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <select id="first_select" name="provider_id" class="form-control chosen-rtl">
            <option value=""></option>
            @foreach ($providers as $value)
            <option value="{{ $value->id }}" @if($audio && $audio->provider_id==$value->id) selected @endif>
                {{$value->title }}
            </option>
            @endforeach
        </select>
    </div>
</div>
@endif
<div class="form-group">
    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Operator <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <select id="first_select" name="operator_id" class="form-control chosen-rtl">
            <option value=""></option>
            @foreach ($operators as $value)
            <option value="{{ $value->id }}" @if($audio && $audio->operator_id == $value->id) selected @endif>
                {{$value->name}}
            </option>
            @endforeach
        </select>
    </div>
</div>
@if($videoID ==null)
{{-- <div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Title <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        {!! Form::text("title", null ,['placeholder'=> "Title",'class'=>'form-control input-lg']) !!}
    </div>
</div> --}}
<div class="form-group"  id="cktextarea">
    <label class="col-sm-3 col-lg-2 control-label">Title <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls" >
        <ul id="myTab1" class="nav nav-tabs">
                <?php $i=0;?>
                @foreach($languages as $language)
                    <li class="{{($i++)? '':'active'}}"><a href="#title{{$language->short_code}}" data-toggle="tab"> {{$language->title}}</a></li>
                @endforeach
        </ul>
        <div class="tab-content">
            <?php $i=0;?>
            @foreach($languages as $language)
                <div class="tab-pane fade in {{($i++)? '':'active'}}" id="title{{$language->short_code}}">
                    <input class="form-control" name="title[{{$language->short_code}}]" value="@if($audio){!! $audio->getTranslation('title',$language->short_code)  !!}@endif" required />
                </div>
            @endforeach
        </div>
    </div>
  </div>
<div class="form-group">
    <label class="col-sm-3 col-md-2 control-label">Source <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-md-8 controls">
        @if($audio && $audio->video_id)
        <video width="320" height="240" controls>
            <source src="{{url($audio->video->video)}}" type="video/mp4">
        </video>
        @else
        {!! Form::file('source',["accept"=>"audio/*" ,"class"=>"default"]) !!}
        @endif
        @if($audio && $audio->video_id == null)
        <audio width="320" height="240" controls>
            <source src="{{url($audio->source)}}" type="audio/mp4">
        </audio>
        @endif
    </div>
</div>
@endif
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Code <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        {!! Form::number("code", null ,['placeholder'=> "Code",'class'=>'form-control input-lg']) !!}
    </div>
</div>
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Azan Flage <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <label>On</label>
        <input type="checkbox" name="azan_flage" class="switch-input" value="1" {{$audio['azan_flage'] == '1' ? 'checked' : ''}} />
        <label>Off</label>
        <input type="checkbox" name="azan_flage" class="switch-input" value="0" {{$audio['azan_flage'] == '0' ? 'checked' : ''}} />

    </div>
</div>
<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        {!! Form::submit($buttonAction,['class'=>'btn btn-primary']) !!}
    </div>
</div>
<script>
    $('input[type="checkbox"]').on('change', function() {
        $('input[type="checkbox"]').not(this).prop('checked', false);
    });
</script>
