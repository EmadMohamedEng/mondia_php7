@extends('template')

@section('page_title')
Operators
@stop

@section('content')
@include('errors')
<div class="row">

    <div class="col-md-12">
        <div class="box">
            <div class="box-title">
                <h3><i class="fa fa-bars"></i>Add Operator Form</h3>
                <div class="box-tool">
                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                    <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="box-content">
                {!! Form::open(['url'=>'operators','class'=>'form-horizontal','files'=>'true']) !!}
                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label">Operator *</label>
                    <div class="col-sm-9 col-lg-10 controls">
                        <input type="text" name="name" placeholder="Operator Name" class="form-control input-lg" required="" />
                        <span class="help-inline">Enter a new Operator name</span><br><br>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label">Operator Name</label>
                    <div class="col-sm-9 col-lg-10 controls">
                        <input type="text" name="operator_name" placeholder="Operator Name" class="form-control input-lg" />
                        <span class="help-inline">Enter a new Operator name</span><br><br>
                    </div>
                </div>

                <div class="form-group" id="cktextarea">
                  <label class="col-sm-3 col-lg-2 control-label">Landing name</label>
                  <div class="col-sm-9 col-lg-10 controls">
                      <ul id="myTab1" class="nav nav-tabs">
                          <li class="active"><a href="#name_ar" data-toggle="tab">AR</a></li>
                          <li><a href="#name_en" data-toggle="tab">EN</a></li>
                      </ul>
                      <div class="tab-content">
                          <div class="tab-pane fade in active" id="name_ar">
                              <input class="form-control" name="name_ar"/>
                          </div>
                          <div class="tab-pane fade in" id="name_en">
                              <input class="form-control" name="name_en"/>
                          </div>
                      </div>
                      <span class="help-inline">Enter a new Operator landing dropdown name</span><br><br>
                  </div>
                </div>

                <div class="form-group" id="cktextarea">
                  <label class="col-sm-3 col-lg-2 control-label">Cost details</label>
                  <div class="col-sm-9 col-lg-10 controls">
                      <ul id="myTab1" class="nav nav-tabs">
                          <li class="active"><a href="#cost_ar" data-toggle="tab">AR</a></li>
                          <li><a href="#cost_en" data-toggle="tab">EN</a></li>
                      </ul>
                      <div class="tab-content">
                          <div class="tab-pane fade in active" id="cost_ar">
                              <input class="form-control" name="cost_ar"/>
                          </div>
                          <div class="tab-pane fade in" id="cost_en">
                              <input class="form-control" name="cost_en"/>
                          </div>
                      </div>
                      <span class="help-inline">Enter a new Operator cost details</span><br><br>
                  </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label">Operator Image</label>
                    <div class="col-sm-9 col-lg-10 controls">
                        <div class="fileupload fileupload-new" data-provides="fileupload">
                            <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;">
                                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
                            </div>
                            <div class="fileupload-preview fileupload-exists img-thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                            <div>
                                <span class="btn btn-default btn-file"><span class="fileupload-new">Select image</span>
                                    <!-- <span class="fileupload-exists">Change</span> -->
                                    {!! Form::file('operator_image',['accept'=>'image/*']) !!}</span>
                                <a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
                            </div>
                        </div>
                        <span class="label label-important">NOTE!</span>
                        <span>Only extension supported jpg, png, and jpeg</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label">Code</label>
                    <div class="col-sm-9 col-lg-10 controls">
                        {!! Form::number("code", null ,['placeholder'=> "Code",'class'=>'form-control input-lg']) !!}
                    </div>
                </div>

                @if(isset($_REQUEST['country_id']))
                <div class="form-group">
                  <label class="col-sm-3 col-lg-2 control-label">Country <span class="text-danger">*</span></label>
                  <div class="col-sm-9 col-lg-10 controls">
                    {!! Form::select('country_id',array($_REQUEST['country_id'] => $_REQUEST['title']),null,['class'=>'form-control chosen-rtl btn-lg','required' => true,'style'=>'height: 48px;']) !!}
                  </div>
                </div>
                @else
                <div class="form-group">
                    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Country <span class="text-danger">*</span></label>
                    <div class="col-sm-9 col-lg-10 controls">
                        <select id="first_select" name="country_id" class="form-control chosen-rtl">
                            @foreach ($countries as $value)
                            <option value="{{ $value->id }}">{{ $value->title }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
              @endif



                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Save</button>
                    </div>
                </div>
            </div>

            {!! Form::close() !!}
        </div>
    </div>
</div>


@stop
@section('script')
<script>
    $('#operator').addClass('active');
    $('#operator-create').addClass('active');
</script>
@stop
