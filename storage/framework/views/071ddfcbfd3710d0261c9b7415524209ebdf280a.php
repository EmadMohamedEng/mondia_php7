<!DOCTYPE html>
<html lang="en">

<head>
    <!-- metas -->
    <meta charset="utf-8">
    <!-- IE compatibility meta -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- for phons -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="<?php echo DB::table('settings')->where('key','like','%fav_icon%')->first()->value; ?>" type="image/x-icon"> <!-- Favicon-->

    <!-- links -->
    <link rel="stylesheet" href='<?php echo e(url('assets/front/')); ?>/css/bootstrap.min.css'>
    <link rel="stylesheet" href="<?php echo e(url('assets/front/')); ?>/css/animate.css">
    <link rel="stylesheet" href="<?php echo e(url('assets/front/')); ?>/css/all.min.css">
    <link rel="stylesheet" href="<?php echo e(url('assets/front/')); ?>/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo e(url('assets/front/')); ?>/css/owl.theme.default.css">
    <link rel="stylesheet" href="<?php echo e(url('assets/front/')); ?>/css/audioplayer.css">
    <link rel="stylesheet" href="<?php echo e(url('assets/front/')); ?>/css/main-style.css">

    <!-- title -->
    <title><?php echo DB::table('settings')->where('key','like','%title_page%')->first()->value; ?></title>
    <style>
        .active {
            background: #b63b4d;
            color: #FFF;
        }
    </style>
</head>

<body>

    <!-- navbar -->
    <header>
        <div class="container-fluid">
            <div class="row">

                <!-- hamburger -->
                <div class="col-4">
                    <input type="checkbox" id="menu-toggle">
                    <label class="hamburger-wrapper" for="menu-toggle">
                        <span class="hamburger"></span>
                    </label>
                    <nav>
                        <div class="spacer"></div>
                        <!-- accordion -->
                        <ul id="accordion" class="accordion list-unstyled">
                        <li class="<?php echo e(URL::current() === url('/home') ? 'open':''); ?>">
                                <a class="link" style="color: #f3e5b8" href="<?php echo e(url('/home')); ?>">الرئيسة</i>
                                </a>
                            </li>

                            <li>
                                <div class="link"><?php echo DB::table('settings')->where('key','like','%title_menu%')->first()->value; ?><i class="fa fa-chevron-down"></i>
                                </div>

                                <ul class="submenu list-unstyled">
                                    <li><a href="<?php echo e(url('sebha')); ?>">السبحة الإلكترونية</a></li>
                                    <li><a href="<?php echo e(url('zakah')); ?>">حساب الزكاة</a></li>
                                    <li><a href="<?php echo e(url('merath')); ?>">حساب المواريث</a></li>
                                    <?php $__currentLoopData = general_service(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><a href="<?php echo e(url('list_contents/'.$val->id)); ?>"><?php echo e($val->title); ?></a></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <li><a href="<?php echo e(url('salah_time')); ?>">مواقيت الصلاة</a></li>
                                    <li><a href="<?php echo e(url('mosque')); ?>">اقرب مسجد</a></li>
                                    <li><a href="<?php echo e(url('azan')); ?>">اذان</a></li>
                                    <li><a href="<?php echo e(url('rbts')); ?>">كول تون</a></li>
                                </ul>
                            </li>
                            <!---------->
                            <?php $__currentLoopData = provide_menu(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li>
                                <div class="link"><?php echo e($val->title); ?><i class="fa fa-chevron-down"></i>
                                </div>
                                <ul class="submenu list-unstyled">
                                    <?php $services = provider_service($val->id); ?>
                                    <?php $__currentLoopData = $services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><a href="<?php echo e(url('list_contents/'.$value->id)); ?>"><?php echo e($value->title); ?></a></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>

                    </nav>
                </div>

                <div class="col-4 h_title">
                    <div class="page_title">
                        <!-- <h4 class="text-center h5"><?php echo e(isset($title)?$title:'دو الخير'); ?></h4> -->
                        
                       <a href="<?php echo e(url('/home')); ?>"><img style="border: unset;" src="<?php echo e(url('').'/'. DB::table('settings')->where('key','like','%header_logo%')->first()->value); ?>" alt="دو الخير" onclick="gotohome()"></a>
                    </div>
                </div>
                <div class="col-4 h_arrow">
                    <a class="arrow back" href="#"><i class="fas fa-angle-left fa-lg"></i></a>
                </div>

            </div>
        </div>
    </header>
    <!-- end navbar -->


    <script>
        function gotohome() {
            window.location.href = '<?php echo e(url("/home")); ?>';
        }
    </script>
<?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/header.blade.php ENDPATH**/ ?>