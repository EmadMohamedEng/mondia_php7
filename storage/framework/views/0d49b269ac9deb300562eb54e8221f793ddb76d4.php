<?php $__env->startSection('page_title'); ?>
Rbts
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<?php echo $__env->make('errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-title">
                <h3><i class="fa fa-bars"></i>Rbt Form</h3>
                <div class="box-tool">
                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                    <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="box-content">
                <?php if($audio): ?>
                <?php echo Form::model($audio,["url"=>"audios/$audio->id","class"=>"form-horizontal","method"=>"patch","files"=>"True"]); ?>

                <?php echo $__env->make('audios.input',['buttonAction'=>'Edit','required'=>'  (optional)'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php else: ?> 
                <?php echo Form::open(["url"=>"audios","class"=>"form-horizontal","method"=>"POST","files"=>"True"]); ?>

                <?php echo $__env->make('audios.input',['buttonAction'=>'Save','required'=>'  *'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endif; ?>
                <?php echo Form::close(); ?>

            </div>
        </div>

    </div>

</div>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
<script>

    $('#audios').addClass('active');
    $('#audios-create').addClass('active');

</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/audios/form.blade.php ENDPATH**/ ?>