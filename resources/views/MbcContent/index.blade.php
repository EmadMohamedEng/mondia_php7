@extends('template')
@section('page_title')
Content
@stop
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="form-group" style=" margin-bottom: 8%;">
                {!! Form::open(['url' => url('mbc_content'),'method'=>'get', 'class'=>'all_form']) !!}

                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    {!! Form::label('Day', 'Day:') !!}
                    <div class='input-group date'>
                        <input type='text' id="Day" class="form-control" value="{{request()->get('subscription_day')}}"
                            name="subscription_day" placeholder="Day" />
                        <span class="input-group-btn">
                            <button type="button" id="search-btn" class="btn"><i
                                    class="glyphicon glyphicon-search"></i></button>
                        </span>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    {!! Form::label('Content', 'Content:') !!}
                    <div class='input-group date'>
                        <input type='text' id="Content" class="form-control" value="{{request()->get('content_id')}}"
                            name="content_id" placeholder="Content" />
                        <span class="input-group-btn">
                            <button type="button" id="search-btn" class="btn"><i
                                    class="glyphicon glyphicon-search"></i></button>
                        </span>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    {!! Form::label('operator', 'Operator:') !!}
                    <div class=''>
                        {!! Form::select('operator', ['all'=>'All' , 'Ksa-Stc' => 'Ksa-Stc'] ,
                        request()->get('operator'),
                        ['class'=>'form-control','id'=>'operator','placeholder'=>'Select Operator']) !!}
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    {!! Form::label('type', 'Type:') !!}
                    <div class=''>
                        {!! Form::select('type', ['1'=>'General' , '2' => 'Occasion' , '3' => 'Friday'] ,
                        request()->get('type'),
                        ['class'=>'form-control','id'=>'type','placeholder'=>'Select Type']) !!}
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    {!! Form::label('occasion_date', 'Select Occasion Date :') !!}
                    <div class='input-group' id=''>
                        <input type='date' class="form-control" value="{{request()->get('occasion_date')}}"
                            name="occasion_date" id="from_date" placeholder="Select Occasion Date" />
                        <span class="input-group-addon">

                        </span>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    <button class="btn btn-labeled btn-primary filter" id="my_form" style="margin-top:25px;"
                        type="submit"><span class="btn-label"><i
                                class="glyphicon glyphicon-search"></i></span>Filter</button>
                </div>

                {!! Form::close() !!}
            </div>

            <div class="col-md-12">
                <div class="box box-black">
                    <div class="box-title">
                        <h3><i class="fa fa-table"></i> Content Table</h3>
                        <div class="box-tool">
                            <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                            <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="table-responsive">
                            <table id="example_video" class="table table-striped dt-responsive" cellspacing="0"
                                width="100%">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Subscription Day</th>
                                        <th>Content</th>
                                        <th>Operator</th>
                                        <th>Type</th>
                                        <th>Occasion date</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($mbc_contents as $mbc_content)
                                    <tr>
                                        <td>{{$mbc_content->id}}</td>
                                        <td>{{$mbc_content->subscription_day}}day</td>
                                        <td>{{$mbc_content->content->title}}</td>
                                        <td>{{$mbc_content->operator}}</td>
                                        <td>
                                            @if($mbc_content->type == "general")
                                            General
                                            @elseif($mbc_content->type == "occasion")
                                            Occasion
                                            @elseif($mbc_content->type == "friday")
                                            Friday
                                            @endif
                                        </td>
                                        <td>{{$mbc_content->occasion_date}}</td>
                                        <td class="visible-md visible-lg">
                                            <div class="btn-group">
                                                <a class="btn btn-sm show-tooltip"
                                                    href="{{url("mbc_content/$mbc_content->id/edit")}}" title="Edit"><i
                                                        class="fa fa-edit"></i></a>
                                                <a class="btn btn-sm show-tooltip btn-danger"
                                                    onclick="return ConfirmDelete();"
                                                    href="{{url("mbc_content/$mbc_content->id/delete")}}"
                                                    title="Delete"><i class="fa fa-trash"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        @if(!$without_paginate)
                        {!! $mbc_contents->setPath('mbc_contents') !!}
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

@stop

@section('script')
<script>
$(".copy").click(function() {
    var copyText = $(this).prev('input');
    console.log(copyText.attr('class'));
    copyText.select();
    document.execCommand("copy");
    //alert("Copied the text: " + copyText.val());
})
$('#datetimepicker5').datepicker({
    format: "yyyy-mm-dd"
});
</script>

<!-- <script>
    $('#mbc_content').addClass('active');
    $('#mbc_content-index').addClass('active');
    $(document).ready(function () {
        $('#example_video').DataTable({
            "processing": true,
            "serverSide": true,
            "search": {"regex":true},
            "aLengthMenu": [10, 25, 50, 100 , 200, 300, 400, 500, 1000],
            columnDefs: [ {
            orderable: false,
            className: 'select-checkbox',
            targets:   0
            } ],
            ajax: "{{url('mbc_content/allData')}}",
            rowId: 'id',
            columns: [
                {data: 'id'},
                {data: 'content_id',},
                {data: 'subscription_day'},
                {data: 'operator'},
                {data: 'type'},
                {data: 'occasion_date'},
                {data: 'action', searchable: false}
            ],
            "pageLength": {{get_pageLength()}},
            "fnCreatedRow": function (row, data, index) {
              $(row).addClass("row-table")
            }
        });

    });
</script> -->

@stop
