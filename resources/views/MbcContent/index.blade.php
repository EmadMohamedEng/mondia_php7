@extends('template')
@section('page_title')
 Content
@stop
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="row">

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
                            <table id="example_video" class="table table-striped dt-responsive" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Content</th>
                                        <th>Subscription day</th>
                                        <th>Operator</th>
                                        <th>Type</th>
                                        <th>Occasion date</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

@stop

@section('script')
<script>
    $(".copy").click(function () {
        var copyText = $(this).prev('input');
        console.log(copyText.attr('class'));
        copyText.select();
        document.execCommand("copy");
        //alert("Copied the text: " + copyText.val());
    })

</script>

<script>
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
</script>

@stop
