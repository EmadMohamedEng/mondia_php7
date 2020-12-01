<?php

namespace App\Http\Controllers;

use App\FilterPosts;
use App\Operator;
use Validator;
use Illuminate\Http\Request;

class FilterPostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $posts = FilterPosts::all();
        $filter = null;
        return view('filter_posts.index', compact('posts', 'filter'));
    }


    public function allData(Request $request)
    {
        $posts = FilterPosts::query();
        if($request->has('filterID') && $request->filterID != ''){
            $posts = $posts->where('filter_id',$request->filterID)->orderBy("created_at", "desc");
        }
        $posts = $posts->get();

        $filter = null;
        $datatable = \DataTables::of($posts)
            ->addColumn('index', function (FilterPosts $post) {
                return '<input class="select_all_template" type="checkbox" name="selected_rows[]" value="'.$post->id.'" class="roles" onclick="collect_selected(this)">';
            })
            ->addColumn('id', function (FilterPosts $post) {
                return $post->id;
            })
            ->addColumn('operator', function (FilterPosts $post) {
                return '<a href="'.url('operators/'.$post->operator->id.'/edit').'"target=_blank>'.$post->operator->name.'</a>';

            })
            ->addColumn('filter', function (FilterPosts $post) {
                return '<a href="'.url('filters/'.$post->filter->id.'/edit').'"target=_blank>'.$post->filter->title.'</a>';
            })
            ->addColumn('published_date', function (FilterPosts $post) {
              return $post->published_date;
          })
            ->addColumn('url', function (FilterPosts $post) {
                return  '<td>
                            <input type="text" id="url_h' . $post->id . '"  value="' . url('view_content/' . $post->filter_id . '/?OpID=' . $post->operator_id) . '">
                            <span class="btn" onclick="x = document.getElementById(' . "'url_h" . $post->id . "'); x.select();document.execCommand('copy')" . '"> <i class="fa fa-copy"></i> </span>
                            </td>';
            })
            ->addColumn('action', function (FilterPosts $post) {
                return '<td class="visible-md visible-lg">
                                        <div class="btn-group">
                                            <a class="btn btn-sm show-tooltip" href="' . url("filter_posts/" . $post->id . "/edit") . '" title="Edit"><i class="fa fa-edit"></i></a>
                                            <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="' . url("filter_posts/" . $post->id . "/delete") . '" title="Delete"><i class="fa fa-trash"></i></a>
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

        $post = $filterID = $filter = null;
        $operators = Operator::all();
        if ($request->has('filterID')) {
            $filterID = $request->filterID;
        }
        return view('filter_posts.form', compact('post', 'operators', 'filterID', 'filter'));
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
            'filter_id' => 'required',
            'operator_id' => 'required',
            'published_date' => 'required'
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        for ($i = 0; $i < count($request['operator_id']); $i++) {
          $exist_post = FilterPosts::where('filter_id', $request->filter_id)->where('operator_id', $request['operator_id'][$i])->first();
          if($exist_post){
            return back()->with('failed', 'Post already exists!');
          }else{
            $post = new FilterPosts();
            $post->filter_id = $request->filter_id;
            $post->operator_id = $request['operator_id'][$i];
            $post->published_date = \Carbon\Carbon::createFromFormat('d/m/Y', $request->published_date)->format('Y-m-d');
            $post->save();
          }
        }
        if (isset($request->video))
            return redirect("videos/$request->video_id/posts");
        return redirect('filter_posts');
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
        $filter = $filterID = null;
        if ($request->has('filter')) {
            $filter = $request->filter;
        }
        $post = FilterPosts::findOrFail($id);

        return view('filter_posts.form', compact('post', 'operators', 'filterID', 'filter'));
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
            'published_date' => 'required'
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $post = FilterPosts::findOrFail($id);
        $post->operator_id = $request['operator_id'][0];
        $post->published_date = \Carbon\Carbon::createFromFormat('d/m/Y', $request->published_date)->format('Y-m-d');
        $post->save();
        \Session::flash('success', 'Post Updated successfully');
        if (isset($request->video))
            return redirect("videos/$request->video_id/posts");
        return redirect('filter_posts');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $post = FilterPosts::find($id);
        FilterPosts::destroy($id);
        \Session::flash('success', 'Post Deleted Successfully');
        return redirect('filter_posts');
    }

    public function posts($id)
    {
        $posts = FilterPosts::where('filter_id', $id)->get();
        $filter = $id;
        return view('filter_posts.index', compact('posts', 'filter'));
    }
}
