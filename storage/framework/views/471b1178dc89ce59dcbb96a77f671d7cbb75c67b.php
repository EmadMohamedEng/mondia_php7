<?php $__env->startSection('page_title'); ?>
    Countries
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
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
                                <a class="btn btn-circle show-tooltip" title="" href="<?php echo e(url('countries/create')); ?>" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
                                <?php 
								$table_name = "countries" ; 
								// pass table name to delete all function 
								// if the current route exists in delete all table flags it will appear in view
								// else it'll not appear
                                ?>
                                <?php echo $__env->make('partial.delete_all', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?> 
                            </div>
                        </div>
                        <br><br>
                        <div class="table-responsive">
						<table id="example" class="table table-striped dt-responsive" cellspacing="0" width="100%">

                        <thead>
                        <tr>
                            <th style="width:18px"><input type="checkbox" onclick="select_all('<?php echo e($table_name); ?>')"></th>
                            <th>id</th>
                            <th>Name</th> 
                            <th >Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php $__currentLoopData = $countries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $country): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                             <tr>
                                <td><input class="select_all_template" type="checkbox" name="selected_rows[]" value="<?php echo e($country->id); ?>" class="roles" onclick="collect_selected(this)"></td>
                                <td><?php echo e($country->id); ?></td>
                                <td>
                                    <?php echo Form::label('brand_name',$country->title); ?>

                                </td> 
                                <td class="visible-md visible-lg">
                                    <div class="btn-group">                                       
                                        <a class="btn btn-sm show-tooltip" href="<?php echo e(url("countries/$country->id/edit")); ?>" title="Edit"><i class="fa fa-edit"></i></a>
                                        <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="<?php echo e(url("countries/$country->id/delete")); ?>" title="Delete"><i class="fa fa-trash"></i></a>                                    
                                    </div>
                                </td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
            </div>
        </div>

</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script>
        $('#countries').addClass('active');
        $('#countries-index').addClass('active');
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/countries/index.blade.php ENDPATH**/ ?>