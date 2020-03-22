<?php $__env->startSection('page_title'); ?>
    List Of operators
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

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
                            <a class="btn btn-circle show-tooltip" title="" href="<?php echo e(url('operators/create')); ?>" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
                             <?php
                                $table_name = "operators";
                              
                                ?>
                                <?php echo $__env->make('partial.delete_all', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?> 
                        </div>
                    </div>
                    <br><br>
                    <div class="table-responsive" style="border:0">
                        <table id="example" class="table table-striped  dt-responsive" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th style="width:18px"><input type="checkbox" onclick="select_all('<?php echo e($table_name); ?>')"></th>
                    <th>#</th>
                    <th>Operator Name</th>
                    <th>Country</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php $__currentLoopData = $operators; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $operator): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><input class="select_all_template" type="checkbox" name="selected_rows[]" value="<?php echo e($operator->id); ?>" class="roles" onclick="collect_selected(this)"></td>
                        <td><?php echo e($operator->id); ?></td>
                        <td><?php echo e($operator->name); ?></td>
                        <td><?php echo e($operator->country->title); ?></td>
                        <td>
                            <img src="<?php echo e($operator->operator_image); ?>" class="img-circle" width="160px" height="160px">
                        </td>                    
                        <td class="visible-md visible-lg">
                            <div class="btn-group">
                                 <a class="btn btn-sm show-tooltip" title="" href="<?php echo e(url("operators/$operator->id/edit")); ?>" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                                <?php echo Form::open(["url"=>"operators/$operator->id/delete","method"=>"get","onsubmit" => "return ConfirmDelete()"]); ?>

                                    <?php echo Form::button('<a class="show-tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>',['type'=>'submit','class'=>'btn btn-sm btn-danger show-tooltip']); ?>

                                <?php echo Form::close(); ?>

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
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
        $('#operator').addClass('active');
        $('#operator-index').addClass('active');
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/operators/listoperator.blade.php ENDPATH**/ ?>