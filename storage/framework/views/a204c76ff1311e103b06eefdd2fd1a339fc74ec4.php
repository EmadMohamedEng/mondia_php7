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

    <script type="text/javascript">
        if (screen.width <= 600) {
            document.location = "<?php echo e(url('index')); ?>";
        }

    </script>

    <style>
        .the-frame {
            padding: 0;
            margin: 0;
            border-radius: 30px;
            border-top: 15px solid #a0a19f;
            border-bottom: 15px solid #a0a19f;
            border-right: 15px solid #a0a19f;
            border-left: 15px solid #a0a19f;
            box-shadow: 0 6px 10px 0 rgba(245, 205, 205, 0.14), 0 1px 18px 0 rgba(247, 172, 172, 0.12), 0 3px 5px -1px rgba(158, 85, 85, 0.3);
            width: 370px;
            height: 600px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .main .filter_services {
            height: 200px !important;
        }

        @media  only screen and (max-width: 600px) {
            .the-frame {
                display: none;
            }

            .enter {
                display: block;
            }

            .enter h4 {
                padding: 20px;
                text-align: center;
                color: #f3e5b8;
                position: absolute;
                top: 50%;
                left: 50%;
                margin-right: -50%;
                transform: translate(-50%, -50%);
            }

            .enter a {
                font-weight: bold;
                font-size: 18px;
                color: #333;
                padding: 5px 10px;
                background-color: #f3e5b8;
                border-radius: 5px;
                text-decoration: none;
                position: absolute;
                top: 60%;
                left: 45%;
                margin-right: -50%;
                transform: translate(-50%, -50%);
            }
        }

        @media  only screen and (min-width: 600px) {
            .enter {
                display: none;
            }
        }

    </style>
</head>

<body>
    <div class="the-frame">
        <iframe class="full-screen-preview__frame" src="<?php echo e(url('index')); ?>" name="preview-frame" frameborder="0" noresize="noresize" data-view="fullScreenPreview" style="height: 570px; width: 340px; border-radius: 10px;">
        </iframe>
    </div>
    <div class="enter">
        <h4>انت الان على الهاتف للدخول اضغط هنا</h4>
        <a href="<?php echo e(url('index')); ?>" class="wow pulse" data-wow-delay="300ms" data-wow-iteration="infinite" data-wow-duration="1.5s">دخول</a>
    </div>

    <script src="<?php echo e(url('assets/front/')); ?>/js/wow.min.js"></script>
    <script>
        new WOW().init();

    </script>
</body>

</html>
<?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/index.blade.php ENDPATH**/ ?>