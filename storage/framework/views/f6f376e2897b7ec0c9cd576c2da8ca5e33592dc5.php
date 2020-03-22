<?php $__env->startSection('page_title'); ?>
Edit Operator
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<?php echo $__env->make('errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-title">
                <h3><i class="fa fa-bars"></i>Edit Operator Form</h3>
                <div class="box-tool">
                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                    <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="box-content">
                <?php echo Form::open(["url"=>"operators/$operator->id",'class'=>'form-horizontal','files'=>'true','method'=>'patch']); ?>

                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label">Operator *</label>
                    <div class="col-sm-9 col-lg-10 controls">
                        <?php echo Form::text('name',$operator->name,['class'=>'form-control input-lg','required' => 'required']); ?>

                        <span class="help-inline">Edit Operator name</span><br><br>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label">Operator Image</label>
                        <div class="col-sm-9 col-lg-10 controls">
                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;">
                                    <img src="<?php echo e(url($operator->operator_image)); ?>" alt="" />
                                </div>
                                <div class="fileupload-preview fileupload-exists img-thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                <div>
                                    <span class="btn btn-default btn-file"><span class="fileupload-new">Select image</span>
                                        <span class="fileupload-exists">Change</span>
                                        <?php echo Form::file('operator_image',['accept'=>'image/*']); ?></span>
                                    <a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
                                </div>
                            </div>
                            <span class="label label-important">NOTE!</span>
                            <span>Only extension supported jpg, png, and jpeg</span>
                        </div>
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label">Code <span class="text-danger">*</span></label>
                    <div class="col-sm-9 col-lg-10 controls">
                        <?php echo Form::number("code", $operator->code ,['placeholder'=> "Code",'class'=>'form-control input-lg']); ?>

                    </div>
                </div>

                <div class="form-group">
                    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Country <span class="text-danger">*</span></label>
                    <div class="col-sm-9 col-lg-10 controls">
                        <select id="first_select" name="country_id" class="form-control chosen-rtl">
                            <?php $__currentLoopData = $countries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($value->id); ?>" <?php if($operator && $operator->country_id==$value->id): ?> selected <?php endif; ?>><?php echo e($value->title); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Save Edit</button>
                    </div>
                </div>
                <?php echo Form::close(); ?>

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
<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/operators/editoperator.blade.php ENDPATH**/ ?>