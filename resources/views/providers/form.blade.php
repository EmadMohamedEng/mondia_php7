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
                <h3><i class="fa fa-bars"></i>Provider Form</h3>
                <div class="box-tool">
                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                    <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="box-content">
                @if($provider)
                {!! Form::model($provider,["url"=>"providers/$provider->id","class"=>"form-horizontal","method"=>"patch","files"=>"True"]) !!}
                @include('providers.input',['buttonAction'=>'Edit','required'=>'  (optional)'])
                @else 
                {!! Form::open(["url"=>"providers","class"=>"form-horizontal","method"=>"POST","files"=>"True"]) !!}
                @include('providers.input',['buttonAction'=>'Save','required'=>'  *'])
                @endif
                {!! Form::close() !!}
            </div>
        </div>

    </div>

</div>

@stop
@section('script')
<script>

    $('#providers').addClass('active');
    $('#providers-create').addClass('active');

</script>
@stop