<?php $__env->startSection('page_title'); ?>
    Create Language
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <?php echo $__env->make('errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Language</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                     <?php if(isset($language)): ?>
                        <?php echo Form::model($language, ['url'=>'language/'.$language->id.'/update' , 'method' => 'post', 'class' => 'form-horizontal', 'files'=>'true' ]); ?>


                    <?php else: ?>
                        <?php echo Form::open(['method' => 'POST', 'url'=>'language' , 'class' => 'form-horizontal', 'files'=>'true' ]); ?>

                        
                           
                    <?php endif; ?>
                        <?php echo $__env->make('language._form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo Form::close(); ?>

                </div>
            </div>
        </div>

    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script>
        $('#language').addClass('active');
        $('#language-create').addClass('active');
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/language/create.blade.php ENDPATH**/ ?>