@extends('template')
@section('page_title')
 Rbts
@stop
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="row">

            <div class="col-md-12">
                <div class="box box-black">
                    <div class="box-title">
                        <h3><i class="fa fa-table"></i> Rbts Table</h3>
                        <div class="box-tool">
                            <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                            <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="btn-toolbar pull-right">
                            <div class="btn-group">
                                <a class="btn btn-circle show-tooltip" title="" href="{{url('audios/create')}}" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
                                <?php
                                $table_name = "audios";
                                // pass table name to delete all function
                                // if the current route exists in delete all table flags it will appear in view
                                // else it'll not appear
                                ?>
                                @include('partial.delete_all')
                            </div>
                        </div>
                        <br><br>
                        <div class="table-responsive">
                            <table id="example_rbt" class="table table-striped dt-responsive" cellspacing="0" width="100%">

                                <thead>
                                    <tr>
                                        <th style="width:18px"><input type="checkbox" onclick="select_all('{{$table_name}}')"></th>
                                        <th>id</th>
                                        <th>Provider</th>
                                        <th>Title</th>
                                        <th>Operator</th>
                                        <th>Code</th>
                                        <th>Video</th>
                                        <th>Azan Flage</th>
                                        <th >Action</th>
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
   $('#audios').addClass('active');
        $('#audios-index').addClass('active');
    $(document).ready(function () {
        $('#example_rbt').DataTable({
            "processing": true,
            "serverSide": true,
            "search": {"regex":true},
            ajax: "{!! url('audios/allData?video_id='.Request::route('id')) !!}",
            columns: [
                {data: 'index'},
                {data: 'id'},
                {data: 'provider',name:'provider'},  // here to can search with product title that FK
                {data: 'title'},
                {data: 'operator',name:'operator'},
                {data: 'code'},
                {data: 'video'},
                {data: 'azan_flage'},
                {data: 'action', searchable: false}
            ]
             , "pageLength": {{get_pageLength()}}
        });
    });
</script>
@stop
