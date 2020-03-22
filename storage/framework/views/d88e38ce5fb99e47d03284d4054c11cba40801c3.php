<?php $__env->startSection('content'); ?>


<!-- main content -->
<div class="main">
    <div class="container">
        <div class="audio_page">

            <div class="title_content">
                <h6><?php echo e($content->title); ?></h6>
            </div>
            <div class="audio">
                <div class="audio-player">
                    <audio id="player" src="<?php echo e(url($content->video)); ?>"></audio>

                    <div class="time-holder cf">
                        <div class="duration">00:50</div>
                        <div>/</div>
                        <div class="current-time">00:00</div>
                    </div>

                    <div class="audio-controls flex-container">
                        <div class="play-btn flex-col-1">
                            <span class="fa fa-play"></span>
                        </div>
                    </div>

                    <div class="seek-bar">
                        <div class="seek-bar-track"></div>
                        <div class="seek-bar-thumb"></div>
                    </div>
                </div>
            </div>

            <div class="btns">
                <a class="btn" href="<?php echo e(url('list_contents/'.$content->service_id)); ?>">المزيد</a>
            </div>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('front.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/inner_audio.blade.php ENDPATH**/ ?>