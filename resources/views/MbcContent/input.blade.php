@if($serviceID !=null)
{!! Form::hidden('service_id',$serviceID,['class'=>'form-control input-lg']) !!}
{!! Form::hidden('service',1,['class'=>'form-control input-lg']) !!}
@else
<div class="form-group">
    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Service <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <select id="first_select" name="service_id" class="form-control chosen-rtl">
            <option value=""></option>
            @foreach ($services as $value)
                <option id="{{$value->type}}" value="{{ $value->id }}" @if($video && $video->service_id==$value->id) selected @endif>
                        {{$value->title .' - '.$value->provider->title }}
                </option>
            @endforeach
        </select>
    </div>
</div>
@endif
@if($service !=null)
{!! Form::hidden('service',1,['class'=>'form-control input-lg']) !!}
@endif
<!-- <div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Title <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        {!! Form::text("title", null ,['placeholder'=> "Title",'class'=>'form-control input-lg']) !!}
    </div>
</div> -->
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
                  <input class="form-control" name="title[{{$language->short_code}}]" value="@if($video){!! $video->getTranslation('title',$language->short_code)  !!}@endif" required />
              </div>
          @endforeach
      </div>
  </div>
</div>
<div class="form-group img_pre" style="display:none">
    <label class="col-sm-3 col-md-2 control-label">Image Preview </label>
    <div class="col-sm-9 col-md-8 controls">
        <div class="fileupload fileupload-new" data-provides="fileupload">
            <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;">
                @if($video)
                <img src="{{$video->image_preview}}" alt="" />
                @else
                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
                @endif
            </div>
            <div class="fileupload-preview fileupload-exists img-thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
            <div>
                <span class="btn btn-file"><span class="fileupload-new">@lang('messages.select_image')</span>
                    <span class="fileupload-exists">Change</span>
                    {!! Form::file('image_preview',["accept"=>"image/*" ,"class"=>"default"]) !!}
                </span>
                <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>
            </div>
        </div>
        <span class="label label-important">NOTE!</span>
        <span>Only extensions supported png, jpg, and jpeg</span>
    </div>
</div>



<div class="form-group video_display" style="display: none">
    <label class="col-sm-3 col-md-2 control-label">Source <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-md-8 controls">
        {!! Form::file('video',["accept"=>isset($accept)?$accept:'*' ,"class"=>"default accept_type"]) !!}
        @if($video && $video->type == 1)
            <video width="320" height="240" controls>
                <source src="{{url($video->video)}}" type="video/mp4">
            </video>
        @elseif($video && $video->type == 2)
            <audio width="220" height="140" controls>
                 <source src="{{url($video->video)}}" type="audio/mp4">
            </audio>
        @elseif($video && $video->type == 3)
            <img class=" img-responsive" width="100px" src="{{url($video->video)}}"/>
        @endif
    </div>
</div>
<div class="form-group content_text"  style="display: none">
  <label class="col-sm-3 col-lg-2 control-label">Content <span class="text-danger">*</span></label>
  <div class="col-sm-9 col-lg-10 controls" >
      <ul id="myTab1" class="nav nav-tabs">
              <?php $i=0;?>
              @foreach($languages as $language)
                  <li class="{{($i++)? '':'active'}}"><a href="#cktextarea{{$language->short_code}}" data-toggle="tab"> {{$language->title}}</a></li>
              @endforeach
      </ul>
      <div class="tab-content">
          <?php $i=0;?>
          @foreach($languages as $language)
              <div class="tab-pane fade in {{($i++)? '':'active'}}" id="cktextarea{{$language->short_code}}">
                  <textarea class="form-control ckeditor" name="content_text[{{$language->short_code}}]" cols="9" rows="20">@if($video){!! $video->getTranslation('content_text',$language->short_code)  !!}@endif</textarea>
              </div>
          @endforeach
      </div>
  </div>
</div>


  <div class="form-group">
  <label class="col-sm-3 col-lg-2 control-label">index <span class="text-danger">*</span></label>
  <div class="col-sm-9 col-lg-10 controls">
      {!! Form::text("index", null ,['placeholder'=> "index",'class'=>'form-control input-lg']) !!}
  </div>
</div>

<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        {!! Form::submit($buttonAction,['class'=>'btn btn-primary']) !!}
    </div>
</div>
