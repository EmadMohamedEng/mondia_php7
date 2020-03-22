<?php $__env->startSection('page_title'); ?>
    Countries
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <?php echo $__env->make('errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Country Form</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <?php if($country): ?>
                    <?php echo Form::model($country,["url"=>"countries/$country->id","class"=>"form-horizontal","method"=>"patch"]); ?>

                    <?php echo $__env->make('countries.input',['buttonAction'=>'Edit','required'=>'  (optional)'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php else: ?> 
                    <?php echo Form::open(["url"=>"countries","class"=>"form-horizontal",'files'=>'true',"method"=>"POST"]); ?>

                    <?php echo $__env->make('countries.input',['buttonAction'=>'Save','required'=>'  *'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php endif; ?>
                    <?php echo Form::close(); ?>

                </div>
            </div>

        </div>

    </div>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
        $('#countries').addClass('active');
        $('#countries-create').addClass('active');
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/countries/form.blade.php ENDPATH**/ ?>