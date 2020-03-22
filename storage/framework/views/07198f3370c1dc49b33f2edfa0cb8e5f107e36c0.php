<?php $__env->startSection('page_title'); ?>
    <?php 
        $controller_setter = "Select Controller" ; // default value 
        echo $controller_setter ;
        
        if(isset($controller_name))
            $controller_setter = $controller_name ; 
    ?> 
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <?php echo $__env->make('errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-title">
                                <h3><i class="fa fa-table"></i><?php echo e($controller_setter); ?></h3>
                                <div class="box-tool">
                                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                                    <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <?php echo Form::open(["url"=>"routes/index_v2","class"=>"form-horizontal","method"=>"GET","id"=>"form_body"]); ?>

                                    <div class="form-group">
                                        <label class="col-sm-3 col-lg-2 control-label">Select Controller</label>
                                        <div class="col-sm-9 col-md-10 controls">
                                            <select class="form-control chosen-rtl" onchange="get_controller_methods(this)" name="controller_name" required>
                                                <option value>Select Controller</option>
                                                <?php $__currentLoopData = $controllers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $controller_name=>$item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <option value="<?php echo e($controller_name); ?>" <?php if(isset($_GET['controller_name'])&&!empty($_GET['controller_name']) && $_GET['controller_name']== $controller_name): ?> selected <?php endif; ?>><?php echo e($controller_name); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select> 
                                        <br/>
                                        </div>
                                    </div> 
                
                                    <div class="form-group">
                                        <label class="col-sm-3 col-lg-2 control-label" id="methods_word"></label>
                                        <div class="col-sm-9 col-md-10 controls">
                                            <ul id="methods">
                                            
                                            </ul>
                                        </div>
                                    </div>
                                <?php echo Form::close(); ?> 
                            </div> 
                            <?php if(isset($methods)): ?> 
                                <div class="box-content">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover fill-head">
                                            <thead>
                                                <tr>
                                                    <th>method name</th>
                                                    
                                                    <?php $__currentLoopData = $roles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <th>
                                                        <label class="checkbox-inline">
                                                            <input type="checkbox" onchange="check_all(<?php echo e($role->id); ?>)"/>
                                                            <?php echo e($role->name); ?>

                                                        </label>
                                                        </th>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <?php echo Form::open(["url"=>"routes/store_v2","class"=>"form-horizontal"]); ?>

                                                <?php $__currentLoopData = $methods; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $i=>$function_name): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php echo Form::hidden("controller_name",$_GET['controller_name']); ?>

                                                <?php 
                                                    $function_name = str_replace(' ', '', $function_name); // to remove spaces from function name
                                                    $j = 0 ; 
                                                ?> 
                                                    <?php if($function_name!=""): ?>
                                                    <tr>
                                                    
                                                        <td> 
                                                        <p><?php echo e($function_name); ?></p> 
                                                        <?php echo Form::hidden("route[$i][$j]",$function_name); ?>

                                                        <?php $j++ ; ?>
                                                        <div class="col-sm-4 col-lg-4 controls">
                                                            <input type="text" name="route[<?php echo e($i); ?>][<?php echo e($j++); ?>]" <?php $__currentLoopData = $selected_routes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $route): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> <?php if($route->function_name == $function_name): ?> style="border: 1px solid #248dc1" value="<?php echo e($route->route); ?>" <?php endif; ?> <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> placeholder="..." class="form-control input-lg">
                                                        </div>  
                                                        <div class="form-group"> 
                                                            <div class="col-sm-3 col-lg-2 controls">
                                                                <select class="form-control chosen-rtl" name="route[<?php echo e($i); ?>][<?php echo e($j++); ?>]">
                                                                    <option></option>
                                                                    <?php $__currentLoopData = $method_types; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index=>$type): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                        <option <?php $__currentLoopData = $selected_routes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $route): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> <?php if($route->function_name == $function_name && $route->method==$index): ?> selected <?php endif; ?> <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> value="<?php echo e($index); ?>" ><?php echo e($type); ?></option>
                                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                </select>
                                                            </div>
                                                        </div>                                                  
                                                        </td>
                                                        <?php $__currentLoopData = $roles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index=>$role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
                                                            <td>
                                                                <label class="checkbox-inline">
                                                                    <input type="checkbox" 
                                                                            name="route[<?php echo e($i); ?>][<?php echo e($j++); ?>]" 
                                                                            value="<?php echo e($role->id); ?>"
                                                                            class = "check_role_<?php echo e($role->id); ?>" 
                                                                            <?php $__currentLoopData = $selected_routes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $route): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> <?php if($route->function_name == $function_name): ?> <?php $__currentLoopData = $route->roles_routes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role_route): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> <?php if($role_route->role_id == $role->id): ?> checked <?php endif; ?> <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> <?php endif; ?> <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                            />
                                                                </label>
                                                            </td>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
                                                    </tr>
                                                    <?php endif; ?>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                <div class="btn-group">
                                                    <input type="submit" class="btn btn-primary btn-success" value="Save Changes">
                                                </div><br><br>
                                            <?php echo Form::close(); ?>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>

                </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

    <script>
        var checked_roles = [] ; 
        function check_all(role_id)
        {
            var index = checked_roles.indexOf(role_id) ;
            if(index!=-1)
            { 
                checked_roles.splice(index,1) ; 
                $('.check_role_'+role_id).prop('checked', false);
            }
            else{ 
                checked_roles.push(role_id) ; 
                $('.check_role_'+role_id).prop('checked', true);
            } 
        }

        function get_controller_methods(element)
        {
            $('#form_body').submit();
        }
    </script>

    <script>
        $('#role').addClass('active');
        $('#route-v2-index').addClass('active');
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\mondia_php7\resources\views/route/index_v2.blade.php ENDPATH**/ ?>