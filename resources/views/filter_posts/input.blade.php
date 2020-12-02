@if($filterID !=null)
{!! Form::hidden('filter_id',$filterID,['class'=>'form-control input-lg']) !!}
{!! Form::hidden('filter',1,['class'=>'form-control input-lg']) !!}
@endif

<div class="form-group">
    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Operator <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
    <select data-placeholder="Select operator" class="form-control chosen" @if(!$post) multiple="multiple" @endif tabindex="6" name="operator_id[]" required>
            <option value=""></option>
            @foreach ($operators as $value)
            <option value="{{ $value->id }}" @if($post && $post->operator_id==$value->id) selected @endif>
                    {{$value->name }}
        </option>
        @endforeach
    </select>
</div>
</div>
@if($filter !=null)
{!! Form::hidden('filter',1,['class'=>'form-control input-lg']) !!}
@endif
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Show Date <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <div class="input-group"  data-date-format="dd/mm/yyyy" >
            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
            @if($filter)
            {!! Form::text('published_date',\Carbon\Carbon::createFromFormat('Y-m-d',$filter->published_date)->format('d/m/Y'),['class'=>'form-control date-picker1','required' => 'required', 'size'=>'16']) !!}
            @else
             {!! Form::text('published_date',\Carbon\Carbon::now()->format('d/m/Y'),['class'=>'form-control date-picker1','required' => 'required', 'size'=>'16','data-date-format'=>'dd/mm/yyyy']) !!}
            @endif
        </div>
    </div>
</div>
<div class="form-group">
  <label class="col-sm-3 col-lg-2 control-label">Free</label>
  <div class="col-sm-9 col-lg-10 controls">
      <label class="radio">
          {!! Form::select('free',array(0=>'NO',1=>'YES'),null,['class'=>'form-control chosen','required'=>'required']) !!}
      </label>
  </div>
</div>
<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        {!! Form::submit($buttonAction,['class'=>'btn btn-primary']) !!}
    </div>
</div>
