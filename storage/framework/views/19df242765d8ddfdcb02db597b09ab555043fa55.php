<td class="visible-md visible-lg">
    <div class="btn-group">
        <?php if($video->type == 2): ?>
        <a class="btn btn-sm show-tooltip" href="<?php echo e(url('audios/create?videoID='.$video->id)); ?>" title="Add Rbt"><i class="fa fa-plus"></i></a>
        <?php if(\App\Audio::where('video_id',$video->id)->count()>0): ?>
        <a class="btn btn-sm show-tooltip" href="<?php echo e(url("videos/$video->id/audios")); ?>" title="Rbts"><i class="fa fa-table"></i></a>
        <?php endif; ?>
        <?php endif; ?>
        <a class="btn btn-sm btn-success show-tooltip" href="<?php echo e(url('posts/create?videoID='.$video->id)); ?>" title="Add Post"><i class="fa fa-plus"></i></a>
        <?php if(\App\Post::where('video_id',$video->id)->count()>0): ?>
        <a class="btn btn-sm show-tooltip" href="<?php echo e(url("videos/$video->id/posts")); ?>" title="Posts"><i class="fa fa-table"></i></a>
        <?php endif; ?>
        <a class="btn btn-sm show-tooltip" href="<?php echo e(url("videos/$video->id/edit")); ?>" title="Edit"><i class="fa fa-edit"></i></a>
        <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="<?php echo e(url("videos/$video->id/delete")); ?>" title="Delete"><i class="fa fa-trash"></i></a>
    </div>
</td>
<?php /**PATH C:\xampp\htdocs\islamic_services_php7\resources\views/videos/action.blade.php ENDPATH**/ ?>