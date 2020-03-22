<?php $__env->startSection('content'); ?>
<?php
preg_match("/iPhone|iPad|iPod/", $_SERVER['HTTP_USER_AGENT'], $matches);
$os = current($matches);

switch ($os) {
    case 'iPhone':
        if (preg_match('/OS 8/', $_SERVER['HTTP_USER_AGENT']) || preg_match('/OS 9/', $_SERVER['HTTP_USER_AGENT'])) {
            $Att = '&body=';
        } else {
            $Att = ';';
        }
        break;
    case 'iPad': $Att = '&body=';
        break;
    case 'iPod': $Att = '&body=';
        break;
    default : $Att = '?body=';
        break;
}?>
<link rel="stylesheet" type="text/css" href="<?php echo e(url('assets/front/')); ?>/css/aboelwafa.css">

<div class="main">
   <div class="container">

<div class="azan">
 
    <h2> يمكنك الآن اختيار الأذان  بصوت شيخك المفضل  </h2>

    
    <div class="select-panel">
           <select id="chooseProvider" name="provider">
               <option value="empty">اختر المؤذن</option>
               <?php $__currentLoopData = $providers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
               <option value="<?php echo e($value->provider->id); ?>"><?php echo e($value->provider->title); ?></option>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              
           </select>
           <i class="fa fa-angle-down"></i>
    </div>

    <div id="chooseAudio">
        <h2 id="provider-name"></h2>
        <table>


        </table>
    </div>


    <a href="#" class="button" id="chooseRBT" onclick="confirm('لتأكيد الاشتراك فى الخدمة إضغط تأكيد')">اجعلها كول تون</a>

    <div class="tab-bar-wrapper decorator">
   
    </div>
</div>


   </div>
</div>


<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>

<script src="<?php echo e(url('assets/front/')); ?>/js/player.js"></script>
<script>
     $('#chooseProvider').on('change',function(){
         
         var id  = $(this).val();
         var title  = $("#chooseProvider option:selected").text();
        
            $.ajax({
            method: "get",
            url: "<?= url('providers/list_azan') ?>",
            data: {id: id},
            success: function (data) {
                $("#chooseAudio table").html(data);
                
                 $('#chooseAudio').slideDown();

                $('#provider-name').text(title);

                $('body.service').css({
                    "background":"#eee"
                });
            }
        });
     });
     $( document ).on( "click", "input:radio[name=audio]:checked", function() {
                var value = $(this).val();
                var op = $(this).attr('data-op');
                $("#chooseRBT").prop('href', "sms:"+op+"<?php echo e($Att); ?>"+value);
            });
    </script>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('front.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/azan.blade.php ENDPATH**/ ?>