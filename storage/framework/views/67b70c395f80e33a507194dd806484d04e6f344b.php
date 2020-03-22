<?php $__env->startSection('content'); ?>
<style>
    .main .title img{
        width: 35%;
        margin: 0 auto;
        display: block;
        border: 2px solid #f3e5b8;
        border-radius: 5px;
    }
    .main .title h6 {
        text-align: center;
        color: #f3e5b8;
        font-size: 18px;
        font-weight: bold;
        padding-top: 5px;
    }
    .main .content {
        padding-top: 5%;
        width: 90%;
        margin: 0 auto;
        text-align: center;
    }
    .main .content a img {
        border: 2px solid #f3e5b8;
        border-radius: 5px;
        display: block;
        width: 100%;
    }
    .main .content a h6 {
        color: #f3e5b8;
        font-size: 12px;
        padding-top: 3px;
    }
</style>    
<!-- main content -->
<div class="main">
    <div class="container">
        <div class="title">
            <img src="<?php echo e(url($provider->image)); ?>" alt="<?php echo e($provider->title); ?>">
            <h6><?php echo e('الشيخ '.$provider->title); ?></h6>
        </div>
        <div class="content">
            <div class="row">
                <?php $services = provider_service($provider->id); ?>
                <?php $__currentLoopData = $services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-4">
                    <a href="<?php echo e(url('list_contents/'.$value->id)); ?>">
                        <img class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="2s" src="<?php echo e(url($value->image)); ?>" alt="<?php echo e($value->title); ?>">
                        <h6><?php echo e($value->title); ?></h6>
                    </a>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
</div>
<!-- end main content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/services.blade.php ENDPATH**/ ?>