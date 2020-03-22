<?php $__env->startSection('page_title'); ?>
Content
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<?php echo $__env->make('errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-title">
                <h3><i class="fa fa-bars"></i>Content Form</h3>
                <div class="box-tool">
                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                    <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="box-content">
                <?php if($video): ?>
                <?php echo Form::model($video,["url"=>"videos/$video->id","class"=>"form-horizontal","method"=>"patch","files"=>"True"]); ?>

                <?php echo $__env->make('videos.input',['buttonAction'=>'Edit','required'=>'  (optional)'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php else: ?>
                <?php echo Form::open(["url"=>"videos","class"=>"form-horizontal","method"=>"POST","files"=>"True"]); ?>

                <?php echo $__env->make('videos.input',['buttonAction'=>'Save','required'=>'  *'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endif; ?>
                <?php echo Form::close(); ?>

            </div>
        </div>

    </div>

</div>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
<script>

    $('#videos').addClass('active');
    $('#videos-create').addClass('active');

    var type_init = $('#first_select').find('option:selected').attr('id');
    var img_type =  $('.accept_type').attr('accept')
    if(type_init == 1){
        $('.img_pre').show()
    }
    if(type_init != 4 && img_type ){
        $('.video_display').show()
    }
    if(type_init == 4){
        $('.content_text').show()
        $('.video_display').hide()
        $('.img_pre').hide()
    }
    $('#first_select').change(function(){
        var type = $(this).find('option:selected').attr('id');
        $('.img_pre').hide()
        $('.content_text').hide()
        $('.video_display').show()
        if(type == 1){
            $('.img_pre').show()
        }
        if(type == 4){
            $('.content_text').show()
            $('.video_display').hide()
        }
     })


    if(img_type.includes('video')){
        $('.img_pre').show()
    }
    if(!img_type){
        $('.content_text').show()
    }
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/videos/form.blade.php ENDPATH**/ ?>