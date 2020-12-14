@extends('template')
@section('page_title')
MBC Content
@stop
@section('content')
@include('errors')
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-title">
                <h3><i class="fa fa-bars"></i>Content Form</h3>
                <div class="box-tool">
                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                    <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="box-content">
                @if($mbc_content)
                {!! Form::model($mbc_content,["url"=>"mbc_content/$mbc_content->id","class"=>"form-horizontal","method"=>"patch","files"=>"True"]) !!}
                @include('MbcContent.input',['buttonAction'=>'Edit','required'=>'  (optional)'])
                @else
                {!! Form::open(["url"=>"mbc_content","class"=>"form-horizontal","method"=>"POST","files"=>"True"]) !!}
                @include('MbcContent.input',['buttonAction'=>'Save','required'=>'  *'])
                @endif
                {!! Form::close() !!}
            </div>
        </div>

    </div>

</div>

@stop
@section('script')
<script>

    $('#MbcContent').addClass('active');
    $('#MbcContent-create').addClass('active');

    var type_init = $('#first_select').find('option:selected').attr('id');
    var img_type =  $('.accept_type').attr('accept')
    if(type_init == 1 || type_init == 2){
        $('.img_pre').show()
    }
    if(type_init != 4 && img_type ){
        $('.video_display').show()
    }
    if(type_init == 4){
        $('.content_text').show()
        $('.video_display').hide()
        $('.img_pre').hide()
    }
    $('#first_select').change(function(){
        var type = $(this).find('option:selected').attr('id');
        $('.img_pre').hide()
        $('.content_text').hide()
        $('.video_display').show()
        if(type == 1 || type == 2){
            $('.img_pre').show()
        }
        if(type == 4){
            $('.content_text').show()
            $('.video_display').hide()
        }
     })


    if(img_type.includes('video') || img_type.includes('audio')){
        $('.img_pre').show()
    }
    if(!img_type){
        $('.content_text').show()
    }
</script>

<script>
  $(document).on('ready', function() {
    $('.event_start_date').datepicker({
      format: 'dd-mm-yyyy',
      autoclose: true,
    })
  })
  $(document).on('ready', function() {
    $('.event_end_date').datepicker({
      format: 'dd-mm-yyyy',
      autoclose: true,
    })
  })
</script>
@stop
