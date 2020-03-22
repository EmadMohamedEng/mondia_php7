<?php $__env->startSection('content'); ?>
<style>
    .main h6 {
        text-align: center;
        color: #f3e5b8;
        margin-bottom: 15%;
    }
    .main .video_content a video{
        width: 100%;
        border: 2px solid #f3e5b8;
        border-radius: 5px;
    }
</style>
<!-- main content -->
<div class="main">
    <div class="container">
        <div class="row">
            <?php $__currentLoopData = $contents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $video): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-6">
                <div class="video_content">
                    <div class="over"></div>
                    <a href="<?php echo e(url('view_content/'.$video->id)); ?>">
                        <div class="play_icon"><i class="far fa-play-circle fa-2x"></i></div>
                        <video >
                            <source src="<?php echo e(url($video->video)); ?>"></source>
                        </video>
                    </a>
                </div>
                <h6><?php echo e($video->title); ?></h6>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        </div>
    </div>
</div>
<!-- end main content -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/videos.blade.php ENDPATH**/ ?>