<div class="form-group">
    <label class="col-sm-3 col-lg-2 control-label">Country Name <span class="text-danger">*</span></label>
    <div class="col-sm-9 col-lg-10 controls">
        <?php echo Form::text('title',null,['placeholder'=>'Country Name','class'=>'form-control input-lg','required' => 'required']); ?>

    </div>
</div>

 
<div class="form-group">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
        <?php echo Form::submit($buttonAction,['class'=>'btn btn-primary']); ?>

    </div>
</div><?php /**PATH C:\xampp\htdocs\mondia_php7\resources\views/countries/input.blade.php ENDPATH**/ ?>