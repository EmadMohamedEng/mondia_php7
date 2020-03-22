<?php $__env->startSection('page_title'); ?>
 Provider
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="row">
    <div class="col-md-12">
        <div class="row">

            <div class="col-md-12">
                <div class="box box-black">
                    <div class="box-title">
                        <h3><i class="fa fa-table"></i> Provider Table</h3>
                        <div class="box-tool">
                            <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                            <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="btn-toolbar pull-right">
                            <div class="btn-group">
                                <a class="btn btn-circle show-tooltip" title="" href="<?php echo e(url('providers/create')); ?>" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
                                <?php
                                $table_name = "providers";
                                // pass table name to delete all function
                                // if the current route exists in delete all table flags it will appear in view
                                // else it'll not appear
                                ?>
                                <?php echo $__env->make('partial.delete_all', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>
                        <br><br>
                        <div class="table-responsive">
                            <table id="example" class="table table-striped dt-responsive" cellspacing="0" width="100%">

                                <thead>
                                    <tr>
                                        <th style="width:18px"><input type="checkbox" onclick="select_all('<?php echo e($table_name); ?>')"></th>
                                        <th>id</th>
                                        <th>Title</th>
                                        <!-- <th>Image</!--> -->
                                        <th >Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__currentLoopData = $providers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><input class="select_all_template" type="checkbox" name="selected_rows[]" value="<?php echo e($value->id); ?>" class="roles" onclick="collect_selected(this)"></td>
                                        <td><?php echo e($value->id); ?></td>
                                        <td>
                                          <?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                          <li> <b><?php echo e($language->title); ?> :</b> <?php echo e($value->getTranslation('title',$language->short_code)); ?></li>
                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </td>
                                        <!-- <td>
                                            <img class=" img-circle" width="100px" src="<?php echo e($value->image); ?>"/>
                                        </td> -->
                                        <td class="visible-md visible-lg">
                                            <div class="btn-group">
                                                <a class="btn btn-sm  show-tooltip" href="<?php echo e(url('audios/create?providerID='.$value->id)); ?>" title="Add Audio"><i class="fa fa-plus"></i></a>
                                                <?php if(\App\Audio::where('provider_id',$value->id)->count()>0): ?>
                                                <a class="btn btn-sm show-tooltip" href="<?php echo e(url("providers/$value->id/audios")); ?>" title="Audios"><i class="fa fa-table"></i></a>
                                                <?php endif; ?>
                                                <a class="btn btn-sm btn-success show-tooltip" href="<?php echo e(url('services/create?providerID='.$value->id)); ?>" title="Add Service"><i class="fa fa-plus"></i></a>
                                                <?php if(\App\Service::where('provider_id',$value->id)->count()>0): ?>
                                                <a class="btn btn-sm show-tooltip" href="<?php echo e(url("providers/$value->id/services")); ?>" title="Services"><i class="fa fa-table"></i></a>
                                                <?php endif; ?>
                                                <a class="btn btn-sm show-tooltip" href="<?php echo e(url("providers/$value->id/edit")); ?>" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="<?php echo e(url("providers/$value->id/delete")); ?>" title="Delete"><i class="fa fa-trash"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script>

        $('#providers').addClass('active');
        $('#providers-index').addClass('active');

</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\mondia_php7\resources\views/providers/index.blade.php ENDPATH**/ ?>