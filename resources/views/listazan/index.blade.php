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
                            <table id="example" class="table table-striped dt-responsive" cellspacing="0" width="100%">

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
                                    @foreach($audios as $value)
                                    <tr>
                                        <td><input class="select_all_template" type="checkbox" name="selected_rows[]" value="{{$value->id}}" class="roles" onclick="collect_selected(this)"></td>
                                        <td>{{$value->id}}</td>
                                        <td><a href="{{url('providers/'.$value->provider->id.'/edit')}}" target='_blank'> {{$value->provider->title}}</a></td>
                                        <td> {{$value->title}}</td>
                                        <td><a href="{{url('operators/'.$value->operator->id.'/edit')}}"target='_blank'>{{$value->operator->name}}</a></td>
                                        <td> {{$value->code}}</td>
                                        <td> {{($value->video_id)?$value->video->title:' -- '}}</td>
                                        <td> {{$value->azan_flage == 1 ?"ON":"OFF"}}</td>
                                        <td class="visible-md visible-lg">
                                            <div class="btn-group">
                                                <a class="btn btn-sm show-tooltip" href="{{url("audios/$value->id/edit")}}" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="{{url("audios/$value->id/delete")}}" title="Delete"><i class="fa fa-trash"></i></a>
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

        $('#audios').addClass('active');
        $('#audios-index').addClass('active');

</script>
@stop
