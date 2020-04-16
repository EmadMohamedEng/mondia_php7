{{-- <!-- <div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Title <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        {!! Form::text("title", null ,['placeholder'=> "Title",'class'=>'form-control input-lg']) !!}
    </div>
</div> --> --}}
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
                  <input class="form-control" name="title[{{$language->short_code}}]" value="@if($provider){!! $provider->getTranslation('title',$language->short_code)  !!}@endif" required />
              </div>
          @endforeach
      </div>
  </div>
</div>

<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Value *</label>
    <div class="col-sm-9 col-lg-10 controls">
        <textarea class="form-control col-md-12" name="image"
        rows="6">
            @isset($provider->image)
                {{$provider->image}}
            @endisset
        </textarea>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        {!! Form::submit($buttonAction,['class'=>'btn btn-primary']) !!}
    </div>
</div>
