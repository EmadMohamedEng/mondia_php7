@extends('template')
@section('page_title')
    List Of operators
@stop
@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="box box-black">
                <div class="box-title">
                    <h3><i class="fa fa-table"></i>Operators Table</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div class="btn-toolbar pull-right">
                        <div class="btn-group">
                            <a class="btn btn-circle show-tooltip" title="" href="{{url('operators/create')}}" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
                             <?php
                                $table_name = "operators";
                              
                                ?>
                                @include('partial.delete_all') 
                        </div>
                    </div>
                    <br><br>
                    <div class="table-responsive" style="border:0">
                        <table id="example" class="table table-striped  dt-responsive" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th style="width:18px"><input type="checkbox" onclick="select_all('{{$table_name}}')"></th>
                    <th>#</th>
                    <th>Operator Name</th>
                    <th>Country</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($operators as $operator)
                    <tr>
                        <td><input class="select_all_template" type="checkbox" name="selected_rows[]" value="{{$operator->id}}" class="roles" onclick="collect_selected(this)"></td>
                        <td>{{$operator->id}}</td>
                        <td>{{$operator->name}}</td>
                        <td>{{$operator->country->title}}</td>
                        <td>
                            <img src="{{$operator->operator_image}}" class="img-circle" width="160px" height="160px">
                        </td>                    
                        <td class="visible-md visible-lg">
                            <div class="btn-group">
                                 <a class="btn btn-sm show-tooltip" title="" href="{{url("operators/$operator->id/edit")}}" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                                {!! Form::open(["url"=>"operators/$operator->id/delete","method"=>"get","onsubmit" => "return ConfirmDelete()"]) !!}
                                    {!! Form::button('<a class="show-tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>',['type'=>'submit','class'=>'btn btn-sm btn-danger show-tooltip']) !!}
                                {!! Form::close() !!}
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
@stop
@section('script')
    <script>
        $('#operator').addClass('active');
        $('#operator-index').addClass('active');
    </script>
@stop