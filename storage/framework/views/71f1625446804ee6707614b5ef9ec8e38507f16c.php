<?php if($providerID !=null): ?>
<?php echo Form::hidden('provider_id',$providerID,['class'=>'form-control input-lg']); ?>

<?php echo Form::hidden('provider',1,['class'=>'form-control input-lg']); ?>

<?php else: ?>
<div class="form-group">
    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Provider <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <select id="first_select" name="provider_id" class="form-control chosen-rtl">
            <option value=""></option>
            <?php $__currentLoopData = $providers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <option value="<?php echo e($value->id); ?>" <?php if($service && $service->provider_id==$value->id): ?> selected <?php endif; ?>>
                        <?php echo e($value->title); ?>

                </option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
    </div>
</div>
<?php endif; ?>
<?php if($provider !=null): ?>
<?php echo Form::hidden('provider',1,['class'=>'form-control input-lg']); ?>

<?php endif; ?>
<!-- <div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Title <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <?php echo Form::text("title", null ,['placeholder'=> "Title",'class'=>'form-control input-lg']); ?>

    </div>
</div> -->
<div class="form-group"  id="cktextarea">
  <label class="col-sm-3 col-lg-2 control-label">Title <span class="text-danger">*</span></label>
  <div class="col-sm-9 col-lg-10 controls" >
      <ul id="myTab1" class="nav nav-tabs">
              <?php $i=0;?>
              <?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <li class="<?php echo e(($i++)? '':'active'); ?>"><a href="#title<?php echo e($language->short_code); ?>" data-toggle="tab"> <?php echo e($language->title); ?></a></li>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </ul>
      <div class="tab-content">
          <?php $i=0;?>
          <?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <div class="tab-pane fade in <?php echo e(($i++)? '':'active'); ?>" id="title<?php echo e($language->short_code); ?>">
                  <input class="form-control" name="title[<?php echo e($language->short_code); ?>]" value="<?php if($service): ?><?php echo $service->getTranslation('title',$language->short_code); ?><?php endif; ?>" required />
              </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </div>
  </div>
</div>
<div class="form-group">
    <label class="col-sm-3 col-md-2 control-label">Image <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-md-8 controls">
        <div class="fileupload fileupload-new" data-provides="fileupload">
            <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;">
                <?php if($service): ?>
                <img src="<?php echo e(url($service->image)); ?>" alt="" />
                <?php else: ?>
                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
                <?php endif; ?>
            </div>
            <div class="fileupload-preview fileupload-exists img-thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
            <div>
                <span class="btn btn-file"><span class="fileupload-new"><?php echo app('translator')->getFromJson('messages.select_image'); ?></span>
                    <span class="fileupload-exists">Change</span>
                    <?php echo Form::file('image',["accept"=>"image/*" ,"class"=>"default"]); ?>

                </span>
                <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>
            </div>
        </div>
        <span class="label label-important">NOTE!</span>
        <span>Only extensions supported png, jpg, and jpeg</span>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Type <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <?php echo Form::select("type",array('1'=>'Video','2'=>'Audio','3'=>'Image','4' => 'Text'), null ,['class'=>'form-control chosen-rtl']); ?>

    </div>
</div>
<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        <?php echo Form::submit($buttonAction,['class'=>'btn btn-primary']); ?>

    </div>
</div>
<?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/services/input.blade.php ENDPATH**/ ?>