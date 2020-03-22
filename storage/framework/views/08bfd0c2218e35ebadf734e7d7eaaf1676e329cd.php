<?php $__env->startSection('content'); ?>
<div class="main">
   <div class="container">
      <div class="display">
         <h1 id="wordSebha"></h1>
         <h2 id="tally">Loading...</h2>
         <div class="btn-bar">
            <button id="plusBtn"><i class="fas fa-fingerprint"></i></button>
            <button id="resetBtn" data-toggle="modal" data-target="#sebhaModal"><i class="fas fa-sync-alt"></i></button>
         </div>
      </div>
   </div>
</div>
<!--====================== Modal =================== -->
<div class="modal fade" id="sebhaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            <h5 class="modal-title" id="exampleModalLabel">السبحة</h5>
         </div>
         <div class="modal-body">
            <a href="javascript:void(0)" class="choose_sebha" data-dismiss="modal"  onclick="getValue(this.innerHTML)">سبحان الله</a>
            <a href="javascript:void(0)" class="choose_sebha" data-dismiss="modal"  onclick="getValue(this.innerHTML)" >الحمدلله</a>
            <a href="javascript:void(0)" class="choose_sebha" data-dismiss="modal" onclick="getValue(this.innerHTML)" >الله اكبر</a>
            <a href="javascript:void(0)" class="choose_sebha" data-dismiss="modal" onclick="getValue(this.innerHTML)">استغفر الله</a>
         </div>
      </div>
   </div>
</div> 
<?php $__env->stopSection(); ?>
<!--====================== Modal =================== -->
<?php $__env->startSection('script'); ?>
<script src="<?php echo e(url('assets/front/')); ?>/js/services.js"></script>
<?php $__env->stopSection(); ?>





<?php echo $__env->make('front.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/sebha.blade.php ENDPATH**/ ?>