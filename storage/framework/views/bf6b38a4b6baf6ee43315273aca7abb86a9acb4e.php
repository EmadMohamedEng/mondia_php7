<?php $__env->startSection('page_title'); ?>
 Content
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="row">
    <div class="col-md-12">
        <div class="row">

            <div class="col-md-12">
                <div class="box box-black">
                    <div class="box-title">
                        <h3><i class="fa fa-table"></i> Content Table</h3>
                        <div class="box-tool">
                            <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                            <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="btn-toolbar pull-right">
                            <div class="btn-group">
                                <a class="btn btn-circle show-tooltip" title="" href="<?php echo e(url('videos/create')); ?>" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
                                <?php
                                $table_name = "contents";
                                // pass table name to delete all function
                                // if the current route exists in delete all table flags it will appear in view
                                // else it'll not appear
                                ?>
                                <?php echo $__env->make('partial.delete_all', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>
                        <br><br>
                        <div class="table-responsive">
                            <table id="example_video" class="table table-striped dt-responsive" cellspacing="0" width="100%">

                                <thead>
                                    <tr>
                                        <th style="width:18px"><input type="checkbox" onclick="select_all('<?php echo e($table_name); ?>')"></th>
                                        <th>id</th>
                                        <th>Service</th>
                                        <th>Title</th>
                                        <th>URl</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>

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
          $(".copy").click(function () {
            var copyText = $(this).prev('input');
            console.log(copyText.attr('class'));
            copyText.select();
            document.execCommand("copy");
            //alert("Copied the text: " + copyText.val());
        })

</script>

<script>
        $('#videos').addClass('active');
        $('#videos-index').addClass('active');
    $(document).ready(function () {
        $('#example_video').DataTable({
            "processing": true,
            "serverSide": true,
            "search": {"regex":true},
            ajax: "<?php echo url('videos/allData?service_id='.Request::route('id')); ?>",
            columns: [
                {data: 'index'},
                {data: 'id'},
                {data: 'service',name:'service'},  // here to can search with product title that FK
                {data: 'title'},
                {data: 'url',name:'url'},
                {data: 'action', searchable: false}

            ]
            , "pageLength": <?php echo e(get_pageLength()); ?>

        });
    });
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/videos/index.blade.php ENDPATH**/ ?>