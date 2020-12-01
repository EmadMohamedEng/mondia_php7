@extends('template')
@section('page_title')
 Filters
@stop
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="row">

            <div class="col-md-12">
                <div class="box box-black">
                    <div class="box-title">
                        <h3><i class="fa fa-table"></i> Filters Table</h3>
                        <div class="box-tool">
                            <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                            <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="btn-toolbar pull-right">
                            <div class="btn-group">
                                <a class="btn btn-circle show-tooltip" title="" href="{{url('filters/create')}}" data-original-title="Add new record"><i class="fa fa-plus"></i></a>

                            </div>
                        </div>
                        <br><br>
                        <div class="table-responsive">
                            <table id="example" class="table table-striped dt-responsive" cellspacing="0" width="100%">

                                <thead>
                                    <tr>
                                        <th style="width:18px"><input type="checkbox" ></th>
                                        <th>id</th>
                                        <th>Title</th>
                                        <th>Link</th>
                                        <th>Image</th>
                                        <th >Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($filters as $key=>$value)
                                    <tr class="row-table" id="{{$value->id}}">
                                        <td><input class="select_all_template" type="checkbox" name="selected_rows[]" value="{{$value->id}}" class="roles" onclick="collect_selected(this)"></td>
                                        <td>{{$value->id}}</td>
                                        <td>
                                          @foreach($languages as $language)
                                          <li> <b>{{$language->title}} :</b> {{$value->getTranslation('title',$language->short_code)}}</li>
                                          @endforeach
                                        </td>
                                        <td>
                                          <a href="{{$value->link}}" target="_blank">{{$value->link}}</a>

                                        </td>
                                        <td>
                                            <img class=" img-circle" width="100px" src="{{url('uploads/filters/'.$value->image)}}"/>
                                        </td>
                                        <td class="visible-md visible-lg">
                                            <div class="btn-group">
                                                <a class="btn btn-sm btn-success show-tooltip" href="{{url('filter_posts/create?filterID='.$value->id)}}" title="Add Filters Post"><i class="fa fa-plus"></i></a>
                                                <a class="btn btn-sm show-tooltip" href="{{url("filters/$value->id/edit")}}" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="{{url("filters/$value->id/delete")}}" title="Delete"><i class="fa fa-trash"></i></a>
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

  $('#filters').addClass('active');
  $('#filters-index').addClass('active');

</script>
@stop
