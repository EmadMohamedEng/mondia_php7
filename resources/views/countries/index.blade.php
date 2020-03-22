@extends('template')
@section('page_title')
    Countries
@stop
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="row">

            <div class="col-md-12">
                <div class="box box-black">
                    <div class="box-title">
                        <h3><i class="fa fa-table"></i>Countries Table</h3>
                        <div class="box-tool">
                            <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                            <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="btn-toolbar pull-right">
                            <div class="btn-group">
                                <a class="btn btn-circle show-tooltip" title="" href="{{url('countries/create')}}" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
                                <?php 
								$table_name = "countries" ; 
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
                            <th>Name</th> 
                            <th >Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($countries as $country)
                             <tr>
                                <td><input class="select_all_template" type="checkbox" name="selected_rows[]" value="{{$country->id}}" class="roles" onclick="collect_selected(this)"></td>
                                <td>{{$country->id}}</td>
                                <td>
                                    {!! Form::label('brand_name',$country->title) !!}
                                </td> 
                                <td class="visible-md visible-lg">
                                    <div class="btn-group">                                       
                                        <a class="btn btn-sm show-tooltip" href="{{url("countries/$country->id/edit")}}" title="Edit"><i class="fa fa-edit"></i></a>
                                        <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="{{url("countries/$country->id/delete")}}" title="Delete"><i class="fa fa-trash"></i></a>                                    
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
        $('#countries').addClass('active');
        $('#countries-index').addClass('active');
    </script>
@stop
