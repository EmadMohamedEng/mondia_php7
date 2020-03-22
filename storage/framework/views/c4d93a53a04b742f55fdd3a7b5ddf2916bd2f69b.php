<!DOCTYPE html>
<html lang="en" style="height:100%;">

<head>
    <meta charset="utf-8">
    <!--IE Compatibility Meta-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile Meta-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="<?php echo DB::table('settings')->where('key','like','%fav_icon%')->first()->value; ?>" type="image/x-icon"> <!-- Favicon-->

    <title><?php echo DB::table('settings')->where('key','like','%title_page%')->first()->value; ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo e(url('assets/front/')); ?>/css/animate.css">
    <link rel="stylesheet" type="text/css" href="<?php echo e(url('assets/front/')); ?>/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo e(url('assets/front/')); ?>/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo e(url('assets/front/')); ?>/css/main-style.css">
    <!--[if lt IE 9]>
      <script src="<?php echo e(url('assets/front/')); ?>/js/html5shiv.min.js"></script>
      <script src="<?php echo e(url('assets/front/')); ?>/js/respond.min.js"></script>
      <![endif]-->

</head>

<body style="height:100%;">
    <div class="welcome_page">
        <div class="logo">
            
            <img src="<?php echo e(url('assets/front/')); ?>/img/logo-khair.png" alt="دو الخير">
        </div>
        <!--<h2>دليل المسلم</h2>-->
        <a href="<?php echo e(url('home')); ?>" class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="1.5s"><i class="fas fa-angle-double-right fa-2x"></i></a>
        <!--<h6>تصميم وتطوير</h6>
        <img src="<?php echo e(url('assets/front/')); ?>/img/ivas.png" alt="ivas">-->
        <p><?php echo DB::table('settings')->where('key','like','%copy_rights%')->first()->value; ?></p>
    </div>

    <script src="<?php echo e(url('assets/front/')); ?>/js/wow.min.js"></script>
    <script>
        new WOW().init();

    </script>
<?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/index_.blade.php ENDPATH**/ ?>