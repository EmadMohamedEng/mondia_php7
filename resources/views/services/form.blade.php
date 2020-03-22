@extends('template')
@section('page_title')
Service
@stop
@section('content')
@include('errors')
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-title">
                <h3><i class="fa fa-bars"></i>Service Form</h3>
                <div class="box-tool">
                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                    <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="box-content">
                @if($service)
                {!! Form::model($service,["url"=>"services/$service->id","class"=>"form-horizontal","method"=>"patch","files"=>"True"]) !!}
                @include('services.input',['buttonAction'=>'Edit','required'=>'  (optional)'])
                @else 
                {!! Form::open(["url"=>"services","class"=>"form-horizontal","method"=>"POST","files"=>"True"]) !!}
                @include('services.input',['buttonAction'=>'Save','required'=>'  *'])
                @endif
                {!! Form::close() !!}
            </div>
        </div>

    </div>

</div>

@stop
@section('script')
<script>

    $('#services').addClass('active');
    $('#services-create').addClass('active');

</script>
@stop