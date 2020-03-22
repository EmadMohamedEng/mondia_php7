<?php if($videoID !=null): ?>
<?php echo Form::hidden('video_id',$videoID,['class'=>'form-control input-lg']); ?>

<?php echo Form::hidden('video',1,['class'=>'form-control input-lg']); ?>

<?php endif; ?>
<div class="form-group">
    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Operator <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
    <select data-placeholder="Select operator" class="form-control chosen" <?php if(!$post): ?> multiple="multiple" <?php endif; ?> tabindex="6" name="operator_id[]" required>
            <option value=""></option>
            <?php $__currentLoopData = $operators; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($value->id); ?>" <?php if($post && $post->operator_id==$value->id): ?> selected <?php endif; ?>>
                    <?php echo e($value->name); ?>

        </option>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </select>
</div>
</div>
<?php if($video !=null): ?>
<?php echo Form::hidden('video',1,['class'=>'form-control input-lg']); ?>

<?php endif; ?>
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Show Date <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <div class="input-group"  data-date-format="dd/mm/yyyy" >
            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
            <?php if($post): ?>
            <?php echo Form::text('show_date',\Carbon\Carbon::createFromFormat('Y-m-d',$post->show_date)->format('d/m/Y'),['class'=>'form-control date-picker1','required' => 'required', 'size'=>'16']); ?>

            <?php else: ?>
             <?php echo Form::text('show_date',\Carbon\Carbon::now()->format('d/m/Y'),['class'=>'form-control date-picker1','required' => 'required', 'size'=>'16','data-date-format'=>'dd/mm/yyyy']); ?>

            <?php endif; ?>
        </div>
    </div>
</div>
<!-- <div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Show Or Not</label>
    <div class="col-sm-9 col-lg-10 controls">
        <label class="radio">
            <?php echo Form::select('active',array(1=>'YES',0=>'NO'),null,['class'=>'form-control chosen','required'=>'required']); ?>

        </label>
    </div>
</div> -->
<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        <?php echo Form::submit($buttonAction,['class'=>'btn btn-primary']); ?>

    </div>
</div>
<?php /**PATH C:\xampp\htdocs\mondia_php7\resources\views/posts/input.blade.php ENDPATH**/ ?>