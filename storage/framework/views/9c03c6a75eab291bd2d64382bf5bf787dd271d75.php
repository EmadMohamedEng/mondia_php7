<?php $__env->startSection('content'); ?>


<!-- main content -->
<div class="main">
    <div class="container">
        <div class="audio_list">
            <table class="table table-dark table-hover">
                <thead>
                    <tr>
                        <th>اختر</th>
                        <th>تشغيل</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $__currentLoopData = $contents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td>
                            <a href="<?php echo e(url('view_content/'.$value->id)); ?>">
                                <span><?php echo e($value->title); ?></span>
                            </a>
                        </td>
                        <td>
                            <div class="np-play play-status">
                                <span class="fa fa-play" data-src="<?php echo e(url($value->video)); ?>"></span>
                            </div>
                            <audio id="audio_test" controls="controls" style="display:none">
                                <source id="audioSource" src="">
                            </audio>
                        </td>
                    </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>                    
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/audios.blade.php ENDPATH**/ ?>