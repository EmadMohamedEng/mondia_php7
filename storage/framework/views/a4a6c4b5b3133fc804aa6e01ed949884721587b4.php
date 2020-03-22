<?php $__env->startSection('content'); ?>

<style>
    /* Always set the map height explicitly to define the size of the div
         * element that contains the map. */
    #map {
        height: 55vh;
        width: 100%;
        border: 3px solid #f5c52a;
    }

    .gm-style .gm-style-iw {
        text-align: right !important
    }

</style>

<!-- main content -->
<div class="main">
    <div class="container">
        <?php if($main_video): ?>
        <div class="video">
            <video class="mx-auto d-block text-center" id="myVideo" width="100%" controls>
                <source src="<?php echo e($main_video->video); ?>" type="video/mp4">
            </video>
        </div>

        <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>

                            <h5 class="modal-title" id="exampleModalLabel">مواقيت الصلاة</h5>
                        </div>
                        <div class="modal-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th><?php echo e($hjrri_date->day.' - '.$hjrri_date->month .' - '.$hjrri_date->year); ?></th>
                                        <th><?php echo e(date('d/m/Y')); ?></th>
                                    </tr>
                                    <tr>
                                        <th>الصلاة</th>
                                        <th>الوقت</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__currentLoopData = $prayer_times; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php echo e($key); ?></td>
                                        <td><?php echo e($value); ?></td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button class="btn" data-dismiss="modal" data-toggle="modal" data-target="#exampleModal2">اقرب مسجد</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Modal -->



            <!-- Modal2 -->
            <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>

                            <h5 class="modal-title" id="exampleModalLabel">اقرب مسجد</h5>
                        </div>
                        <div class="modal-body">
                            <div id="map"></div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn" data-dismiss="modal" data-toggle="modal" data-target="#exampleModal">مواقيت الصلاة</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Modal2 -->

        <?php endif; ?>
        <!------------------------------------------------------------->

        <div class="el_shuo5">
            <div class="row">
                <?php $__currentLoopData = $providers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $provider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-6">
                    <a href="<?php echo e(url('list_services/'.$provider->id)); ?>">
                        <img src="<?php echo e(url($provider->image)); ?>" alt="<?php echo e($provider->title); ?>">
                        <h6><?php echo e($provider->title); ?></h6>
                    </a>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
        </div>

        <!---------------------------------------------------------------------->
        <div class="el_5damat">
            <h2> دليل المسلم</h2>
            <div class="row">

                <div class="col-4">
                    <a href="<?php echo e(url('sebha')); ?>">
                        <img class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="2s" src="<?php echo e(url('assets/front/')); ?>/img/2.png" alt="qases">
                        <h6>السبحة</h6>
                    </a>
                </div>

                <div class="col-4">
                    <a href="<?php echo e(url('zakah')); ?>">
                        <img class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="2s" src="<?php echo e(url('assets/front/')); ?>/img/3.png" alt="qases">
                        <h6>حساب الزكاه</h6>
                    </a>
                </div>

                <div class="col-4">
                    <a href="<?php echo e(url('merath')); ?>">
                        <img class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="2s" src="<?php echo e(url('assets/front/')); ?>/img/4.png" alt=" qases">
                        <h6>حساب المواريث</h6>
                    </a>
                </div>
                <?php $__currentLoopData = $generalService; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $service): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-4">
                    <a href="<?php echo e(url('list_contents/'.$service->id)); ?>">
                        <img class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="2s" src="<?php echo e(url($service->image)); ?>" alt="<?php echo e(url($service->image)); ?>">
                        <h6><?php echo e($service->title); ?></h6>
                    </a>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                <div class="col-4">
                    <a href="<?php echo e(url('salah_time')); ?>">
                        <img class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="2s" src="<?php echo e(url('assets/front/')); ?>/img/7.png" alt="qases">
                        <h6>مواقيت الصلاة</h6>
                    </a>
                </div>
                <div class="col-4">
                    <a href="<?php echo e(url('mosque')); ?>">
                        <img class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="2s" src="<?php echo e(url('assets/front/')); ?>/img/8.png" alt="qases">
                        <h6>اقرب مسجد</h6>
                    </a>
                </div>

                <div class="col-4">
                    <a href="<?php echo e(url('azan')); ?>">
                        <img class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="2s" src="<?php echo e(url('assets/front/')); ?>/img/9.png" alt="qases">
                        <h6>اذان</h6>
                    </a>
                </div>
                <div class="col-4">
                    <a href="<?php echo e(url('rbts')); ?>">
                        <img class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="2s" src="<?php echo e(url('assets/front/')); ?>/img/9.png" alt="qases">
                        <h6>كول تون</h6>
                    </a>
                </div>
            </div>
        </div>
        <!-------------------------------------------------------------------------------->
        <div class="el_5damat el_5damat_2">
            <h2>الموضوعات</h2>
            <div class="row">
                <?php $__currentLoopData = $topics; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $topic): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-4">
                    <a href="<?php echo e(url('list_contents/'.$topic->id)); ?>">
                        <img class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="2s" src="<?php echo e(url($topic->image)); ?>" alt="<?php echo e($topic->title); ?>">
                        <h6><?php echo e($topic->title); ?></h6>
                    </a>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<!--====================== Modal =================== -->
<?php $__env->startSection('script'); ?>
<script src="<?php echo e(url('assets/front/')); ?>/js/mosque.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCkPbH3-wDpLOsruf4eBsae2q3xnb6153s&libraries=places&callback=initMap&language=ar" async defer></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/home.blade.php ENDPATH**/ ?>