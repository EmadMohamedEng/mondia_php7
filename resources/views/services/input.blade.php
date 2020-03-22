@if($providerID !=null)
{!! Form::hidden('provider_id',$providerID,['class'=>'form-control input-lg']) !!}
{!! Form::hidden('provider',1,['class'=>'form-control input-lg']) !!}
@else
<div class="form-group">
    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Provider <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <select id="first_select" name="provider_id" class="form-control chosen-rtl">
            <option value=""></option>
            @foreach ($providers as $value)
                <option value="{{ $value->id }}" @if($service && $service->provider_id==$value->id) selected @endif>
                        {{$value->title }}
                </option>
            @endforeach
        </select>
    </div>
</div>
@endif
@if($provider !=null)
{!! Form::hidden('provider',1,['class'=>'form-control input-lg']) !!}
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
                  <input class="form-control" name="title[{{$language->short_code}}]" value="@if($service){!! $service->getTranslation('title',$language->short_code)  !!}@endif" required />
              </div>
          @endforeach
      </div>
  </div>
</div>
<div class="form-group">
    <label class="col-sm-3 col-md-2 control-label">Image <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-md-8 controls">
        <div class="fileupload fileupload-new" data-provides="fileupload">
            <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;">
                @if($service)
                <img src="{{url($service->image)}}" alt="" />
                @else
                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
                @endif
            </div>
            <div class="fileupload-preview fileupload-exists img-thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
            <div>
                <span class="btn btn-file"><span class="fileupload-new">@lang('messages.select_image')</span>
                    <span class="fileupload-exists">Change</span>
                    {!! Form::file('image',["accept"=>"image/*" ,"class"=>"default"]) !!}
                </span>
                <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>
            </div>
        </div>
        <span class="label label-important">NOTE!</span>
        <span>Only extensions supported png, jpg, and jpeg</span>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Type <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        {!! Form::select("type",array('1'=>'Video','2'=>'Audio','3'=>'Image','4' => 'Text'), null ,['class'=>'form-control chosen-rtl']) !!}
    </div>
</div>
<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        {!! Form::submit($buttonAction,['class'=>'btn btn-primary']) !!}
    </div>
</div>
