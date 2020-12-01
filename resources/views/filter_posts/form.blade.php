@extends('template')
@section('page_title')
Post
@stop
@section('content')
@include('errors')
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-title">
                <h3><i class="fa fa-bars"></i>Post Form</h3>
                <div class="box-tool">
                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                    <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="box-content">
                @if($post)
                {!! Form::model($post,["url"=>"filter_posts/$post->id","class"=>"form-horizontal","method"=>"POST"]) !!}
                @include('filter_posts.input',['buttonAction'=>'Edit','required'=>'  (optional)'])
                @else
                {!! Form::open(["url"=>"filter_posts","class"=>"form-horizontal","method"=>"POST"]) !!}
                @include('filter_posts.input',['buttonAction'=>'Save','required'=>'  *'])
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
    $('#filter_posts-index').addClass('active');

</script>
@stop
