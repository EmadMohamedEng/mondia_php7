<?php if($videoID !=null): ?>
<?php echo Form::hidden('video_id',$videoID,['class'=>'form-control input-lg']); ?>

<?php echo Form::hidden('title',$video->title,['class'=>'form-control input-lg']); ?>

<?php echo Form::hidden('provider_id',$video->service->provider->id,['class'=>'form-control input-lg']); ?>

<?php elseif($providerID !=null): ?>
<?php echo Form::hidden('provider_id',$providerID,['class'=>'form-control input-lg']); ?>

<?php else: ?>
<div class="form-group">
    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Provider <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <select id="first_select" name="provider_id" class="form-control chosen-rtl">
            <option value=""></option>
            <?php $__currentLoopData = $providers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($value->id); ?>" <?php if($audio && $audio->provider_id==$value->id): ?> selected <?php endif; ?>>
                <?php echo e($value->title); ?>

            </option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
    </div>
</div>
<?php endif; ?>
<div class="form-group">
    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Operator <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <select id="first_select" name="operator_id" class="form-control chosen-rtl">
            <option value=""></option>
            <?php $__currentLoopData = $operators; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($value->id); ?>" <?php if($audio && $audio->operator_id == $value->id): ?> selected <?php endif; ?>>
                <?php echo e($value->name); ?>

            </option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
    </div>
</div>
<?php if($videoID ==null): ?>
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Title <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <?php echo Form::text("title", null ,['placeholder'=> "Title",'class'=>'form-control input-lg']); ?>

    </div>
</div>
<div class="form-group">
    <label class="col-sm-3 col-md-2 control-label">Source <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-md-8 controls">
        <?php if($audio && $audio->video_id): ?>
        <video width="320" height="240" controls>
            <source src="<?php echo e(url($audio->video->video)); ?>" type="video/mp4">
        </video>
        <?php else: ?>
        <?php echo Form::file('source',["accept"=>"audio/*" ,"class"=>"default"]); ?>

        <?php endif; ?>
        <?php if($audio && $audio->video_id == null): ?>
        <audio width="320" height="240" controls>
            <source src="<?php echo e(url($audio->source)); ?>" type="audio/mp4">
        </audio>
        <?php endif; ?>
    </div>
</div>
<?php endif; ?>
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Code <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <?php echo Form::number("code", null ,['placeholder'=> "Code",'class'=>'form-control input-lg']); ?>

    </div>
</div>
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Azan Flage <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <label>On</label>
        <input type="checkbox" name="azan_flage" class="switch-input" value="1" <?php echo e($audio['azan_flage'] == '1' ? 'checked' : ''); ?> />
        <label>Off</label>
        <input type="checkbox" name="azan_flage" class="switch-input" value="0" <?php echo e($audio['azan_flage'] == '0' ? 'checked' : ''); ?> />

    </div>
</div>
<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        <?php echo Form::submit($buttonAction,['class'=>'btn btn-primary']); ?>

    </div>
</div>
<script>
    $('input[type="checkbox"]').on('change', function() {
        $('input[type="checkbox"]').not(this).prop('checked', false);
    });
</script>
<?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/audios/input.blade.php ENDPATH**/ ?>