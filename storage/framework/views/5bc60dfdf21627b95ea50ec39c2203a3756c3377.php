<?php $__env->startSection('page_title'); ?>
	Routes
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
	<div class="row">
		<div class="col-md-12">
			<div class="box box-black">
				<div class="box-title">
					<h3><i class="fa fa-table"></i>Routes</h3>
					<div class="box-tool">
						<a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
						<a data-action="close" href="#"><i class="fa fa-times"></i></a>
					</div>
				</div>
				<div class="box-content">
                    <div class="btn-toolbar pull-right">
                        <div class="btn-group">
                            <a style="position: relative;left: -10px;" class="btn btn-default btn-sm" title="Download Routes" href="<?php echo e(url('buildroutes')); ?>" data-original-title=""><i class="glyphicon glyphicon-download-alt"></i> </a>
							<?php 
								$table_name = "routes" ;
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
								<th>method</th>
								<th>route</th>
								<th>controller</th>
								<th>method</th>
								<th>Roles Assigned</th>
								<th class="visible-md visible-lg" style="width:130px">Action</th>
							</tr>
							</thead>
							<tbody>
							<?php $__currentLoopData = $routes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $route): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<tr class="table-flag-blue">
									<th><input class="select_all_template" type="checkbox" name="selected_rows[]" value="<?php echo e($route->id); ?>" onclick="collect_selected(this)"></th>
									<td><?php echo e($route->method); ?></td>
									<td><?php echo e($route->route); ?></td>
									<td><?php echo e($route->controller_name); ?></td>
									<td><?php echo e($route->function_name); ?></td>
									<td>
									    <?php $__currentLoopData = $route->roles_routes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									        - <?php echo e($item->role->name); ?><br>
									    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
									</td>
									<td class="visible-md visible-lg">
										<div class="btn-group">
											<a class="btn btn-sm show-tooltip" title="" href="<?php echo e(url('routes/'.$route->id.'/edit')); ?>" data-original-title="Edit"><i class="fa fa-edit"></i></a>
											<a class="btn btn-sm btn-danger show-tooltip" title="" onclick="return confirm('Are you sure you want to delete this ?');" href="<?php echo e(url('routes/'.$route->id.'/delete')); ?>" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
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
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
	<script>
		$('#role').addClass('active');
		$('#route-index').addClass('active');
	</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/route/index.blade.php ENDPATH**/ ?>