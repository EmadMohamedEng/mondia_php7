@extends('template')
@section('page_title')
Post
@stop
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="row">

            <div class="col-md-12">
                <div class="box box-black">
                    <div class="box-title">
                        <h3><i class="fa fa-table"></i> Post Table</h3>
                        <div class="box-tool">
                            <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                            <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="btn-toolbar pull-right">
                            <div class="btn-group">

                            </div>
                        </div>
                        <br><br>
                        <div class="table-responsive">
                            <table id="filter_posts" class="table table-striped dt-responsive" cellspacing="0" width="100%">

                                <thead>
                                    <tr>
                                        <th style="width:18px"><input type="checkbox" onclick="select_all('filter_posts')"></th>
                                        <th>id</th>
                                        <th>Operator</th>
                                        <th>Filters</th>
                                        <th>Published Date</th>
                                        <th>URL</th>
                                        <th>Free</th>
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
    $(".copy").click(function() {
        var copyText = $(this).prev('input');
        console.log(copyText.attr('class'));
        copyText.select();
        document.execCommand("copy");
        //alert("Copied the text: " + copyText.val());
    })
</script>


<script>
    $('#filters').addClass('active');
    $('#filter_posts-index').addClass('active');
    $(document).ready(function () {
        $('#filter_posts').DataTable({
            "processing": true,
            "serverSide": true,
            "search": {"regex":true},
            columnDefs: [ {
            orderable: false,
            className: 'select-checkbox',
            targets:   0
            } ],
            ajax: "{!! url('filter_posts/allData?filterID='.Request::route('id')) !!}",
            columns: [
                {data: 'index'},
                {data: 'id'},
                {data: 'operator',name:'operator'},  // here to can search with product title that FK
                {data: 'filter'},
                {data: 'published_date'},
                {data: 'url',name:'url'},
                {data: 'free',name:'free'},
                {data: 'action', searchable: false}

            ]
             , "pageLength": {{get_pageLength()}}
        });
    });
</script>
@stop
