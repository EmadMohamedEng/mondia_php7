<!-- loading -->
<div class="loading-overlay">
    <div class="spinner">
        
        <img src="<?php echo e(url('').'/'. DB::table('settings')->where('key','like','%loading_image%')->first()->value); ?>"
            alt="loading">
                </div>
</div>
<!-- end loading -->

<style>
    a:hover {
    color: #f3e5b8;
    text-decoration: none;
}
</style>

<!-- footer -->
<footer>
    <?php
    $enable_social = \DB::table('settings')->where('key', 'like', 'enable_social')->first()->value;
    ?>
    <?php if($enable_social == 1): ?>
    <a class="fab fa-facebook-f" href="<?php echo e(get_setting('facebook')); ?>" target="_blank"></a>
    <a class="fab fa-twitter" href="<?php echo e(get_setting('twitter')); ?>" target="_blank"></a>
    <a class="fab fa-instagram" href="<?php echo e(get_setting('instagram')); ?>" target="_blank"></a>
    <a class="fab fa-soundcloud" href="<?php echo e(get_setting('soundcloud')); ?>" target="_blank"></a>
    <a class="fab fa-youtube" href="<?php echo e(get_setting('youtube')); ?>" target="_blank"></a>
    <a class="fab fa-linkedin-in" href="<?php echo e(get_setting('linkedin')); ?>" target="_blank"></a>
    <?php else: ?>

    <?php endif; ?>


</footer>
<!-- end footer -->

<!-- script -->
<script src="<?php echo e(url('assets/front/')); ?>/js/jquery-3.3.1.min.js"></script>
<script src="<?php echo e(url('assets/front/')); ?>/js/popper.min.js"></script>
<script src="<?php echo e(url('assets/front/')); ?>/js/bootstrap.min.js"></script>
<script src="<?php echo e(url('assets/front/')); ?>/js/wow.min.js"></script>
<script src="<?php echo e(url('assets/front/')); ?>/js/owl.carousel.min.js"></script>
<script src="<?php echo e(url('assets/front/')); ?>/js/player_audio.js"></script>
<script src="<?php echo e(url('assets/front/')); ?>/js/merath_calculation.js"></script>
<script src="<?php echo e(url('assets/front/')); ?>/js/script.js"></script>
<script>
/* Start Active Menu */
$(function() {
    // this will get the full URL at the address bar
    var url = window.location.href;
    // passes on every "a" tag
    $("ul li a").each(function() {
        // checks if its the same on the address bar
        if (url == (this.href)) {
            $("#home").removeClass("active");
            //console.log('hi omar')
            $(this).closest("li a").addClass("active");
            $(this).closest(".submenu").css("display", "block");
        }
    });
});
/* End Active Menu */
</script>
<script>


    op_id = <?php echo e(isset($_REQUEST['OpID']) ? 1 : 0); ?>

        if (op_id) {
            var operator_id = <?php echo e(isset($_REQUEST['OpID']) ? $_REQUEST['OpID'] : ''); ?>

            $('a').each(function() {
                var $this = $(this);
                var _href = $this.attr("href");
                if (_href.includes('type')) {
                    $this.attr("href", _href + '&OpID=' + operator_id);
                } else {
                    $this.attr("href", _href + '?OpID=' + operator_id);
                }
            });
        }
</script>
 <?php echo $__env->yieldContent('script'); ?>

</body>

</html>
<?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/footer.blade.php ENDPATH**/ ?>