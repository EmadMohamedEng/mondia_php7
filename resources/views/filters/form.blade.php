@extends('template')
@section('page_title')
Provider
@stop
@section('content')
@include('errors')
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-title">
                <h3><i class="fa fa-bars"></i>Filters Form</h3>
                <div class="box-tool">
                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                    <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="box-content">
                @if($filters)
                {!! Form::model($filters,["url"=>"filters/$filters->id","class"=>"form-horizontal","method"=>"Post","files"=>"True"]) !!}
                @include('filters.input',['buttonAction'=>'Edit','required'=>'  (optional)'])
                @else
                {!! Form::open(["url"=>"filters","class"=>"form-horizontal","method"=>"POST","files"=>"True"]) !!}
                @include('filters.input',['buttonAction'=>'Save','required'=>'  *'])
                @endif
                {!! Form::close() !!}
            </div>
        </div>

    </div>

</div>

@stop
@section('script')
<script>

$('#filters').addClass('active');
  $('#filters-index').addClass('active');

</script>
@stop
