<?php $__env->startSection('content'); ?>
<style>
.error {
    text-align: center;
}

.error h2 {
    color: #f3e5b8;
}

.error p {
    color: #f3e5b8;
}

header {
    margin-top: -8%;
}

@media  only screen and (min-width: 0) and (max-width: 600px) {
    .error {
        text-align: center;
        margin-top: 36%;
    }
}
</style>

<!-- main content -->
<div class="main">
    <div class="container">

        <div class="error">
            <h2 id="tit">لا يوجد صفحة بأسم</h2>
            <p>للعودة الى الصفحة الرئيسية اضغط هنا</p>
            <div class="btns">
                <a class="btn wow pulse" href="<?php echo e(url('index')); ?>" data-wow-delay="300ms" data-wow-iteration="infinite"
                    data-wow-duration="1.5s">الصفحة الرئيسية</a>
            </div>
        </div>

    </div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
<script>
/* Start Active Menu */
$(function() {
    var url = window.location.href;
    // url == (this.href)
    url2 = url.split('/')
    console.log(url);
    $('#tit').html($('#tit').html() + ' ' + url2[url2.length - 1])
});
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\mondia_php7\resources\views/errors/404.blade.php ENDPATH**/ ?>