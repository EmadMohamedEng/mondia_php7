@extends('template')
@section('page_title')
    Countries
@stop
@section('content')
    @include('errors')
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Country Form</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    @if($country)
                    {!! Form::model($country,["url"=>"countries/$country->id","class"=>"form-horizontal","method"=>"patch"]) !!}
                    @include('countries.input',['buttonAction'=>'Edit','required'=>'  (optional)'])
                    @else 
                    {!! Form::open(["url"=>"countries","class"=>"form-horizontal",'files'=>'true',"method"=>"POST"]) !!}
                    @include('countries.input',['buttonAction'=>'Save','required'=>'  *'])
                    @endif
                    {!! Form::close() !!}
                </div>
            </div>

        </div>

    </div>

@stop
@section('script')
    <script>
        $('#countries').addClass('active');
        $('#countries-create').addClass('active');
    </script>
@stop