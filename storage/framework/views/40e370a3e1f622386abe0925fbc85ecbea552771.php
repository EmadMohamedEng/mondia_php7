<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <form action="<?php echo e(url('verify_pin')); ?>" method="POST">
        <?php echo csrf_field(); ?>
        <input name="pincode" type="text">
        <input type="submit" value="send">
    </form>

</body>
</html><?php /**PATH C:\xampp\htdocs\mondia_php7\resources\views/mondia_landing/pincode.blade.php ENDPATH**/ ?>