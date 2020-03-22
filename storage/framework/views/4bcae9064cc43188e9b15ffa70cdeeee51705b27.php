<?php $__env->startSection('page_title'); ?>
Post
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="row">
    <div class="col-md-12">
        <div class="row">

            <div class="col-md-12">
                <div class="box box-black">
                    <div class="box-title">
                        <h3><i class="fa fa-table"></i> Post Table</h3>
                        <div class="box-tool">
                            <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                            <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="btn-toolbar pull-right">
                            <div class="btn-group">
                                <?php
                                $table_name = "posts";
                                // pass table name to delete all function
                                // if the current route exists in delete all table flags it will appear in view
                                // else it'll not appear
                                ?>
                                <?php echo $__env->make('partial.delete_all', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>
                        <br><br>
                        <div class="table-responsive">
                            <table id="example_post" class="table table-striped dt-responsive" cellspacing="0" width="100%">

                                <thead>
                                    <tr>
                                        <th style="width:18px"><input type="checkbox" onclick="select_all('<?php echo e($table_name); ?>')"></th>
                                        <th>id</th>
                                        <th>Operator</th>
                                        <th>Content</th>
                                        <th>Show Date</th>
                                        <th>URL</th>
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
    $(".copy").click(function() {
        var copyText = $(this).prev('input');
        console.log(copyText.attr('class'));
        copyText.select();
        document.execCommand("copy");
        //alert("Copied the text: " + copyText.val());
    })
</script>


<script>
    $('#posts').addClass('active');
    $('#posts-index').addClass('active');
    $(document).ready(function () {
        $('#example_post').DataTable({
            "processing": true,
            "serverSide": true,
            "search": {"regex":true},
            ajax: "<?php echo url('posts/allData?video_id='.Request::route('id')); ?>",
            columns: [
                {data: 'index'},
                {data: 'id'},
                {data: 'operator',name:'operator'},  // here to can search with product title that FK
                {data: 'video'},
                {data: 'show date'},
                {data: 'url',name:'url'},
                {data: 'action', searchable: false}

            ]
             , "pageLength": <?php echo e(get_pageLength()); ?>

        });
    });
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\mondia_php7\resources\views/posts/index.blade.php ENDPATH**/ ?>