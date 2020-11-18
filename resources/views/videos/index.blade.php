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
                        <div class="btn-toolbar pull-right">
                            <div class="btn-group">
                                <a class="btn btn-sm btn-primary" href="{{url('content/export')}}">Export exccel sheet</a>

                                <a class="btn btn-circle show-tooltip" title="" href="{{url('videos/create')}}" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
                                <?php
                                $table_name = "contents";
                                // pass table name to delete all function
                                // if the current route exists in delete all table flags it will appear in view
                                // else it'll not appear
                                ?>
                                @include('partial.delete_all')
                            </div>
                        </div>
                        <br><br>
                        <div class="table-responsive">
                            <table id="example_video" class="table table-striped dt-responsive" cellspacing="0" width="100%">

                                <thead>
                                    <tr>
                                        <th style="width:18px"><input type="checkbox" onclick="select_all('{{$table_name}}')"></th>
                                        <th>id</th>
                                        <th>Service</th>
                                        <th>Title</th>
                                        <th>index2</th>
                                        <!-- <th>URl</th> -->
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
        $('#videos').addClass('active');
        $('#videos-index').addClass('active');
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
            ajax: "{!! url('videos/allData?service_id='.Request::route('id')) !!}",
            rowId: 'id',
            columns: [
                {data: 'index'},
                {data: 'id'},
                {data: 'service',name:'service'},  // here to can search with product title that FK
                {data: 'title'},
                {data: 'index2'},
                // {data: 'url',name:'url'},
                {data: 'action', searchable: false}

            ],
            "pageLength": {{get_pageLength()}},
            "fnCreatedRow": function (row, data, index) {
              $(row).addClass("row-table")
            }
        });

        $("#example_video").sortable({
          items: "tr",
          cursor: 'move',
          opacity: 0.6,
          update: function() {
              sendOrderToServer();
          }
        });

        function sendOrderToServer() {
            var list = []
            $('.row-table').each(function(index,e){
              list.push($(this).attr('id'))
            });
            $.ajax({
              type:'post',
              url:'{{url("admin/video/order/")}}',
              data: {
                list: list,
              },
              success: function(data) {
                console.log(list);
                list = []
              }
            });
        }
    });
</script>

{{-- <script src="{{asset('js/table-dragger.min.js')}}"></script>
<script>
jQuery(document).on('DOMNodeInserted','tbody', function (e) {
  var list = []
  var el = document.getElementById('example_video');
  var dragger = tableDragger(el, {
    mode: 'row',
    dragHandler: '.row-table',
    onlyBody: true,
  });
  dragger.on('drop',function(from, to){
    $('.row-table').each(function(index,e){
      list.push($(this).attr('id'))
    });

    $.ajax({
      type:'post',
      url:'{{url("admin/service/order/")}}',
      data: {
        list: list,
      },
      success: function(data) {
        console.log(list);
        list = []
      }
		});
  });
})

</script> --}}

@stop
