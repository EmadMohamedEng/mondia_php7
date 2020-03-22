<td class="visible-md visible-lg">
    <div class="btn-group">
        @if($video->type == 2)
        <a class="btn btn-sm show-tooltip" href="{{url('audios/create?videoID='.$video->id)}}" title="Add Rbt"><i class="fa fa-plus"></i></a>
        @if(\App\Audio::where('video_id',$video->id)->count()>0)
        <a class="btn btn-sm show-tooltip" href="{{url("videos/$video->id/audios")}}" title="Rbts"><i class="fa fa-table"></i></a>
        @endif
        @endif
        <a class="btn btn-sm btn-success show-tooltip" href="{{url('posts/create?videoID='.$video->id)}}" title="Add Post"><i class="fa fa-plus"></i></a>
        @if(\App\Post::where('video_id',$video->id)->count()>0)
        <a class="btn btn-sm show-tooltip" href="{{url("videos/$video->id/posts")}}" title="Posts"><i class="fa fa-table"></i></a>
        @endif
        <a class="btn btn-sm show-tooltip" href="{{url("videos/$video->id/edit")}}" title="Edit"><i class="fa fa-edit"></i></a>
        <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="{{url("videos/$video->id/delete")}}" title="Delete"><i class="fa fa-trash"></i></a>
    </div>
</td>
