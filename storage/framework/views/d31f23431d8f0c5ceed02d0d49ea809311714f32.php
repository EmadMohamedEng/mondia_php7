<table>
    <tr>
        <th>اختر</th>
        <th>تشغيل</th>
        <th>الأذان</th>
    </tr>
    <?php $__currentLoopData = $audios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <tr>
        <td class="audio-radio">
                <input id="audioChosen" class="center" type="radio" name="audio" value="<?php echo e($val->code); ?>" data-op="<?php echo e($val->operator->code); ?>">
            <label for="" class="center"><span class="center"></span></label>
        </td>
        <td class="np-play" data-src="<?php echo e(url($val->source)); ?>"></td>
        <td><?php echo e($val->title); ?></td>
    </tr>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</table><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/front/list_azan.blade.php ENDPATH**/ ?>