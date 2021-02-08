<?php

namespace App\Http\Controllers;

use App\Post;
use App\Video;
use Validator;
use App\Operator;
use App\Datatables;
use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

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
              // $posts = $posts->get();

              $posts=$posts->with(["operator", "video","operator.country"])->get();

        $video = null;
        $datatable = \DataTables::of($posts)
            ->addColumn('index', function (Post $post) {
                return '<input class="select_all_template" type="checkbox" name="selected_rows[]" value="'.$post->id.'" class="roles" onclick="collect_selected(this)">';
            })
            ->addColumn('id', function (Post $post) {
                return $post->id;
            })
            ->addColumn('operator', function (Post $post) {
                return '<a href="'.url('operators/'.$post->operator->id.'/edit').'"target=_blank>'. $post->operator->country->title . ' - ' . $post->operator->name.'</a>';

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
          $exist_post = Post::where('video_id', $request->video_id)->where('operator_id', $request['operator_id'][$i])->first();
          if($exist_post){
            return back()->with('failed', 'Post already exists!');
          }else{
            $post = new Post();
            $post->video_id = $request->video_id;
            $post->operator_id = $request['operator_id'][$i];
            $post->show_date = \Carbon\Carbon::createFromFormat('d/m/Y', $request->show_date)->format('Y-m-d');
            $post->slider = $request->slider;
            $post->free = $request->free;
            $post->save();
          }
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
        $post->free = $request->free;
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

    // add stc post
    public function post_stc()
    {
        $contents = Video::all();
        foreach ($contents as $key => $value) {
          Post::create([
            'video_id' => $value->id,
            'operator_id' => 23,
            'show_date' => '2020-04-21',
            'active' => 1,
            'slider' => 0
          ]);
        }
        echo "ok";
    }

    // add slider from mbc to orange
    public function copy_slider_from_mbc_to_orange()
    {
      $mbc_slider = Post::where('operator_id', mbc)->where('slider', 1)->get();

      foreach($mbc_slider as $slider){
        $orange_post = Post::where('operator_id', orange)->where('video_id', $slider->video_id)->update(['slider' => 1]);
      }
      echo 'done';
    }

    // remove dub posts
    public function remove_dublicate_posts()
    {
      $duplicates = DB::table('posts')->select('id', 'operator_id', 'video_id')->where('operator_id', 14)->get();

      $video_array = array();

      foreach($duplicates as $duplicate){
        if(!in_array($duplicate->video_id, $video_array)){
          $video_array[$duplicate->video_id] = $duplicate->video_id;
        }else{
          Post::where('operator_id', $duplicate->operator_id)->where('video_id', $duplicate->video_id)->first()->delete();
        }
      }
      echo 'done';
    }
}
