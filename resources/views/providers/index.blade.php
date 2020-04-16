@extends('template')
@section('page_title')
 Provider
@stop
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="row">

            <div class="col-md-12">
                <div class="box box-black">
                    <div class="box-title">
                        <h3><i class="fa fa-table"></i> Provider Table</h3>
                        <div class="box-tool">
                            <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                            <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="btn-toolbar pull-right">
                            <div class="btn-group">
                                <a class="btn btn-circle show-tooltip" title="" href="{{url('providers/create')}}" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
                                <?php
                                $table_name = "providers";
                                // pass table name to delete all function
                                // if the current route exists in delete all table flags it will appear in view
                                // else it'll not appear
                                ?>
                                @include('partial.delete_all')
                            </div>
                        </div>
                        <br><br>
                        <div class="table-responsive">
                            <table id="example" class="table table-striped dt-responsive" cellspacing="0" width="100%">

                                <thead>
                                    <tr>
                                        <th style="width:18px"><input type="checkbox" onclick="select_all('{{$table_name}}')"></th>
                                        <th>id</th>
                                        <th>Title</th>
                                        <!-- <th>Image</!-->
                                        <th >Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($providers as $key=>$value)
                                    <tr class="row-table" id="{{$value->id}}">
                                        <td><input class="select_all_template" type="checkbox" name="selected_rows[]" value="{{$value->id}}" class="roles" onclick="collect_selected(this)"></td>
                                        <td>{{$value->id}}</td>
                                        <td>
                                          @foreach($languages as $language)
                                          <li> <b>{{$language->title}} :</b> {{$value->getTranslation('title',$language->short_code)}}</li>
                                          @endforeach
                                        </td>
                                        <!-- <td>
                                            <img class=" img-circle" width="100px" src="{{$value->image}}"/>
                                        </td> -->
                                        <td class="visible-md visible-lg">
                                            <div class="btn-group">
                                                <a class="btn btn-sm  show-tooltip" href="{{url('audios/create?providerID='.$value->id)}}" title="Add Audio"><i class="fa fa-plus"></i></a>
                                                @if(\App\Audio::where('provider_id',$value->id)->count()>0)
                                                <a class="btn btn-sm show-tooltip" href="{{url("providers/$value->id/audios")}}" title="Audios"><i class="fa fa-table"></i></a>
                                                @endif
                                                <a class="btn btn-sm btn-success show-tooltip" href="{{url('services/create?providerID='.$value->id)}}" title="Add Service"><i class="fa fa-plus"></i></a>
                                                @if(\App\Service::where('provider_id',$value->id)->count()>0)
                                                <a class="btn btn-sm show-tooltip" href="{{url("providers/$value->id/services")}}" title="Services"><i class="fa fa-table"></i></a>
                                                @endif
                                                <a class="btn btn-sm show-tooltip" href="{{url("providers/$value->id/edit")}}" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="{{url("providers/$value->id/delete")}}" title="Delete"><i class="fa fa-trash"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    @endforeach
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

  $('#providers').addClass('active');
  $('#providers-index').addClass('active');

</script>

<script src="{{asset('js/table-dragger.min.js')}}"></script>

<script>
  var list = []
  var el = document.getElementById('example');
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
      url:'{{url("admin/provider/order/")}}',
      data: {
        list: list,
      },
      success: function(data) {
        console.log(list);
        list = []
      }
		});
  });

</script>
@stop
