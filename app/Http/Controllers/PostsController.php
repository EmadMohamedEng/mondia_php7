<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Validator;
use App\Video;
use App\Post;
use App\Operator;
use App\Datatables;

class PostsController extends Controller
{


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $posts = Post::all();
        $video = null;
        return view('posts.index', compact('posts', 'video'));
    }


    public function allData(Request $request)
    {
        $posts = Post::query();
        if($request->has('video_id') && $request->video_id != ''){
            $posts = $posts->where('video_id',$request->video_id)->orderBy("created_at", "desc");
        }
        $posts = $posts->get();

        $video = null;
        $datatable = \DataTables::of($posts)
            ->addColumn('index', function (Post $post) {
                return '<input class="select_all_template" type="checkbox" name="selected_rows[]" value="'.$post->id.'" class="roles" onclick="collect_selected(this)">';
            })
            ->addColumn('id', function (Post $post) {
                return $post->id;
            })
            ->addColumn('operator', function (Post $post) {
                return '<a href="'.url('operators/'.$post->operator->id.'/edit').'"target=_blank>'.$post->operator->name.'</a>';

            })
            ->addColumn('video', function (Post $post) {
                return '<a href="'.url('videos/'.$post->video->id.'/edit').'"target=_blank>'.$post->video->title.'</a>';
            })
            ->addColumn('show date', function (Post $post) {
                return $post->show_date;
            })
            ->addColumn('url', function (Post $post) {
                return  '<td>
                            <input type="text" id="url_h' . $post->id . '"  value="' . url('view_content/' . $post->video_id . '/?OpID=' . $post->operator_id) . '">
                            <span class="btn" onclick="x = document.getElementById(' . "'url_h" . $post->id . "'); x.select();document.execCommand('copy')" . '"> <i class="fa fa-copy"></i> </span>
                            </td>';
            })
            ->addColumn('action', function (Post $post) {
                return '<td class="visible-md visible-lg">
                                        <div class="btn-group">
                                            <a class="btn btn-sm show-tooltip" href="' . url("posts/" . $post->id . "/edit") . '" title="Edit"><i class="fa fa-edit"></i></a>
                                            <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="' . url("posts/" . $post->id . "/delete") . '" title="Delete"><i class="fa fa-trash"></i></a>
                                        </div>
                                    </td>';
            })
            ->escapeColumns([])
            ->make(true);
        return $datatable;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        $post = $videoID = $video = null;
        $operators = Operator::all();
        if ($request->has('videoID')) {
            $videoID = $request->videoID;
        }
        return view('posts.form', compact('post', 'operators', 'videoID', 'video'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'video_id' => 'required',
            'operator_id' => 'required',
            'show_date' => 'required'
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        for ($i = 0; $i < count($request['operator_id']); $i++) {
            $post = new Post();
            $post->video_id = $request->video_id;
            $post->operator_id = $request['operator_id'][$i];
            $post->show_date = \Carbon\Carbon::createFromFormat('d/m/Y', $request->show_date)->format('Y-m-d');
            $post->slider = $request->slider;
            $post->save();
        }
        if (isset($request->video))
            return redirect("videos/$request->video_id/posts");
        return redirect('posts');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {

        $operators = Operator::all();
        $video = $videoID = null;
        if ($request->has('video')) {
            $video = $request->video;
        }
        $post = Post::findOrFail($id);

        return view('posts.form', compact('post', 'operators', 'videoID', 'video'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'operator_id' => 'required',
            'show_date' => 'required'
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $post = Post::findOrFail($id);
        $post->operator_id = $request['operator_id'][0];
        $post->show_date = \Carbon\Carbon::createFromFormat('d/m/Y', $request->show_date)->format('Y-m-d');
        $post->slider = $request->slider;
        $post->save();
        \Session::flash('success', 'Post Updated successfully');
        if (isset($request->video))
            return redirect("videos/$request->video_id/posts");
        return redirect('posts');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $post = Post::find($id);
        Post::destroy($id);
        \Session::flash('success', 'Post Deleted Successfully');
        return redirect('posts');
    }
}
