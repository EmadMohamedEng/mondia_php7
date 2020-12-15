<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Provider Name *</label>
    <div class="col-sm-9 col-lg-10 controls">
        <input type="text" value="{{$provider_id->title}}" class="form-control input-lg" readonly>
        <input type="hidden" name="provider_id" value="{{$provider_id->id}}" class="form-control input-lg" readonly>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Service Name *</label>
    <div class="col-sm-9 col-lg-10 controls">
        <input type="text" value="{{$service_id->title}}" class="form-control input-lg" readonly>
        <input type="hidden" name="service_id" value="{{$service_id->id}}" class="form-control input-lg" readonly>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Content Name *</label>
    <div class="col-sm-9 col-lg-10 controls">
        <input type="text" value="{{$content_id->title}}" class="form-control input-lg" readonly>
        <input type="hidden" name="content_id" value="{{$content_id->id}}" class="form-control input-lg" readonly>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label" for="code">Type</label>
    <div class="col-sm-9 col-lg-10 controls">
        <div class="form-check" style="display: inline-flex;">

            <div id="general_text">
                @if (isset($mbc_content))
                <input class="form-check-input" type="radio" name="available" id="exampleRadios4" required
                    value="general" @if( $mbc_content->type == "general") checked="checked"
                @endif>
                @else
                <input class="form-check-input" type="radio" name="available" id="exampleRadios4" required
                    value="general">
                @endif
                <label class="form-check-label" for="exampleRadios4" style="padding-right: 11px;">
                    General
                </label>
            </div>


            <div id="occasion_text">
                @if (isset($mbc_content))
                <input class="form-check-input" type="radio" name="available" id="exampleRadios2" required
                    value="occasion" @if( $mbc_content->type == "occasion") checked="checked"
                @endif>
                @else
                <input class="form-check-input" type="radio" name="available" id="exampleRadios2" required
                    value="occasion">
                @endif
                <label class="form-check-label" for="exampleRadios2" style="padding-right: 11px;">
                    Occasion
                </label>
            </div>
            <div id="friday_text">
                @if (isset($mbc_content))
                <input input class="form-check-input" type="radio" name="available" id="exampleRadios3" required
                    value="friday" @if( $mbc_content->type == "friday") checked="checked"
                @endif>
                @else
                <input class="form-check-input" type="radio" name="available" id="exampleRadios3" required
                    value="friday">
                @endif
                <label class="form-check-label" for="exampleRadios3" style="padding-right: 11px;">
                    Friday
                </label>
            </div>
        </div>
    </div>
</div>

<div class="form-group" id="subscription_day" style="display:none">
    <label class="col-sm-3 col-lg-2 control-label">Subscription Day*</label>
    <div class="col-sm-9 col-lg-10 controls">
        <input type="number" name="subscription_day" @isset($mbc_content->subscription_day)
        value="{{$mbc_content->subscription_day}}"
        @endisset class="form-control input-lg" min="0">
    </div>
</div>



<div class="form-group" id="operator_text" style="display:none">
    <label class="col-sm-3 col-lg-2 control-label">Operator</label>
    <div class="col-sm-9 col-lg-10 controls">
        <select name='operator' class='form-control' id="">
            <option>---Please Select---</option>
            <option @if($mbc_content && $mbc_content->operator == "all") selected @endif value="all">All</option>
            <option @if($mbc_content && $mbc_content->operator == "ksa-stc") selected @endif value="ksa-stc">Ksa-Stc
            </option>
        </select>
    </div>
</div>
<div class="form-group" id="occasion_date" style="display:none">
    <label class="col-sm-3 col-lg-2 control-label">Occasion Date <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <div class="input-group" data-date-format="dd/mm/yyyy">
            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
            @if($mbc_content)
            {!!
            Form::text('occasion_date',\Carbon\Carbon::createFromFormat('Y-m-d',$mbc_content->occasion_date)->format('d/m/Y'),['class'=>'form-control
            date-picker1','required' => 'required', 'size'=>'16']) !!}
            @else
            {!! Form::text('occasion_date',\Carbon\Carbon::now()->format('d/m/Y'),['class'=>'form-control
            date-picker1','required' => 'required', 'size'=>'16','data-date-format'=>'dd/mm/yyyy']) !!}
            @endif
        </div>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        {!! Form::submit($buttonAction,['class'=>'btn btn-primary']) !!}
    </div>
</div>

<script>
$(document).ready(function() {
    $("#general_text").click(function() {
      $('#subscription_day').css("display", "block")
      $('#operator_text').css("display", "block")
      $('#occasion_date').css("display", "none")
    });
    $("#occasion_text").click(function() {
      $('#occasion_date').css("display", "block")
      $('#operator_text').css("display", "block")
      $('#subscription_day').css("display", "none")
    });
    $("#friday_text").click(function() {
      $('#subscription_day').css("display", "block")
      $('#occasion_date').css("display", "none")
      $('#operator_text').css("display", "none")
    });
});
</script>
