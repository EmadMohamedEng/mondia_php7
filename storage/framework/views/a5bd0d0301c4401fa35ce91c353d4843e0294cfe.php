<?php if($serviceID !=null): ?>
<?php echo Form::hidden('service_id',$serviceID,['class'=>'form-control input-lg']); ?>

<?php echo Form::hidden('service',1,['class'=>'form-control input-lg']); ?>

<?php else: ?>
<div class="form-group">
    <label for="textfield5" class="col-sm-3 col-lg-2 control-label">Select Service <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <select id="first_select" name="service_id" class="form-control chosen-rtl">
            <option value=""></option>
            <?php $__currentLoopData = $services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <option id="<?php echo e($value->type); ?>" value="<?php echo e($value->id); ?>" <?php if($video && $video->service_id==$value->id): ?> selected <?php endif; ?>>
                        <?php echo e($value->title .' - '.$value->provider->title); ?>

                </option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
    </div>
</div>
<?php endif; ?>
<?php if($service !=null): ?>
<?php echo Form::hidden('service',1,['class'=>'form-control input-lg']); ?>

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
                  <input class="form-control" name="title[<?php echo e($language->short_code); ?>]" value="<?php if($video): ?><?php echo $video->getTranslation('title',$language->short_code); ?><?php endif; ?>" required />
              </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </div>
  </div>
</div>
<div class="form-group img_pre" style="display:none">
    <label class="col-sm-3 col-md-2 control-label">Image Preview </label>
    <div class="col-sm-9 col-md-8 controls">
        <div class="fileupload fileupload-new" data-provides="fileupload">
            <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;">
                <?php if($video): ?>
                <img src="<?php echo e($video->image_preview); ?>" alt="" />
                <?php else: ?>
                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
                <?php endif; ?>
            </div>
            <div class="fileupload-preview fileupload-exists img-thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
            <div>
                <span class="btn btn-file"><span class="fileupload-new"><?php echo app('translator')->getFromJson('messages.select_image'); ?></span>
                    <span class="fileupload-exists">Change</span>
                    <?php echo Form::file('image_preview',["accept"=>"image/*" ,"class"=>"default"]); ?>

                </span>
                <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>
            </div>
        </div>
        <span class="label label-important">NOTE!</span>
        <span>Only extensions supported png, jpg, and jpeg</span>
    </div>
</div>
<div class="form-group video_display" style="display: none">
    <label class="col-sm-3 col-md-2 control-label">Source <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-md-8 controls">
        <?php echo Form::file('video',["accept"=>isset($accept)?$accept:'*' ,"class"=>"default accept_type"]); ?>

        <?php if($video && $video->type == 1): ?>
            <video width="320" height="240" controls>
                <source src="<?php echo e(url($video->video)); ?>" type="video/mp4">
            </video>
        <?php elseif($video && $video->type == 2): ?>
            <audio width="220" height="140" controls>
                 <source src="<?php echo e(url($video->video)); ?>" type="audio/mp4">
            </audio>
        <?php elseif($video && $video->type == 3): ?>
            <img class=" img-responsive" width="100px" src="<?php echo e(url($video->video)); ?>"/>
        <?php endif; ?>
    </div>
</div>
<div class="form-group content_text"  style="display: none">
  <label class="col-sm-3 col-lg-2 control-label">Content <span class="text-danger">*</span></label>
  <div class="col-sm-9 col-lg-10 controls" >
      <ul id="myTab1" class="nav nav-tabs">
              <?php $i=0;?>
              <?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <li class="<?php echo e(($i++)? '':'active'); ?>"><a href="#content_text<?php echo e($language->short_code); ?>" data-toggle="tab"> <?php echo e($language->title); ?></a></li>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </ul>
      <div class="tab-content">
          <?php $i=0;?>
          <?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <div class="tab-pane fade in <?php echo e(($i++)? '':'active'); ?>" id="content_text<?php echo e($language->short_code); ?>">
                  <textarea class="form-control" name="content_text[<?php echo e($language->short_code); ?>]" cols="9" rows="20"><?php if($video): ?><?php echo $video->getTranslation('content_text',$language->short_code); ?><?php endif; ?></textarea>
              </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </div>
  </div>
</div>
<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        <?php echo Form::submit($buttonAction,['class'=>'btn btn-primary']); ?>

    </div>
</div>
<?php /**PATH C:\xampp\htdocs\mondia_php7\resources\views/videos/input.blade.php ENDPATH**/ ?>