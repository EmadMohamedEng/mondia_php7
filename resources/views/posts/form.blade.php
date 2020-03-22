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
                {!! Form::model($post,["url"=>"posts/$post->id","class"=>"form-horizontal","method"=>"patch"]) !!}
                @include('posts.input',['buttonAction'=>'Edit','required'=>'  (optional)'])
                @else 
                {!! Form::open(["url"=>"posts","class"=>"form-horizontal","method"=>"POST"]) !!}
                @include('posts.input',['buttonAction'=>'Save','required'=>'  *'])
                @endif
                {!! Form::close() !!}
            </div>
        </div>

    </div>

</div>

@stop
@section('script')
<script>

    $('#posts').addClass('active');
    $('#posts-create').addClass('active');

</script>
@stop