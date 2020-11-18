<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Language;
use App\Service;
use App\Video;
use Datatables;
use Illuminate\Http\Request;
use Validator;
use App\Exports\ContentsExport;
use Maatwebsite\Excel\Facades\Excel;

class VideosController extends Controller
{

    public function __construct()
    {

        if (!file_exists('uploads/videos')) {
            mkdir('uploads/videos', 0777, true);
        }
        if (!file_exists('uploads/videos/image_preview')) {
            mkdir('uploads/videos/image_preview', 0777, true);
        }
        $this->destinationFolder = "uploads/videos/";
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

       $videos = Video::all();
        $service = null;
        return view('videos.index', compact('videos', 'service'));
    }

    public function allData(Request $request)
    {
        $videos = Video::query();
        if ($request->has('service_id') && $request->service_id != '') {
            $videos = $videos->where('service_id', $request->service_id);
        }
        $videos = $videos->orderBy('index','asc')->get();
        $service = null;
        $datatable = \DataTables::of($videos)
            ->addColumn('index', function (Video $video) {
                return '<input class="select_all_template" type="checkbox" name="selected_rows[]" value="' . $video->id . '" class="roles" onclick="collect_selected(this)">';
            })
            ->addColumn('id', function (Video $video) {
                return $video->id;
            })
            ->addColumn('service', function (Video $video) {

                return '<a href="' . url('services/' . $video->service->id . '/edit') . '"target=_blank>' . $video->service->getTranslation('title', getCode()) . '</a>';

            })
            ->addColumn('title', function (Video $video) {
                $str = '';
                $languages = Language::all();
                foreach ($languages as $language) {
                    $str .= '<li> <b>' . $language->title . ':' . '</b>' . $video->getTranslation('title', $language->short_code) . '</li>';
                }
                return $str;

            })


            ->addColumn('index2', function (Video $video) {
              return $video->index;
          })
            // ->addColumn('url', function (Video $video) {
            //     return '<td>
            //                 <input type="text" id="url_h' . $video->id . '"  value="' . url('view_content/' . $video->id) . '">
            //                 <span class="btn" onclick="x = document.getElementById(' . "'url_h" . $video->id . "'); x.select();document.execCommand('copy')" . '"> <i class="fa fa-copy"></i> </span>
            //                 </td>';
            // })
            ->addColumn('action', function (Video $video) {
                return view('videos.action', compact('video'))->render();
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

        $service = $serviceID = $video = null;
        $services = Service::all();
        $accept = "";
        if ($request->has('serviceID')) {
            $serviceID = $request->serviceID;
            $serviceRow = Service::Find($serviceID);
            if ($serviceRow->type == 1) {
                $accept = 'video/*';
            } elseif ($serviceRow->type == 2) {
                $accept = 'audio/*';
            } elseif ($serviceRow->type == 3) {
                $accept = 'image/*';
            }

        }
        $languages = Language::all();
        return view('videos.form', compact('video', 'serviceID', 'services', 'service', 'accept', 'languages'));
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
            'service_id' => 'required',
            'title' => 'required',
            'video' => '',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        // get service details
        $service = Service::FindOrFail($request->service_id);
        //check of its type
        if ($service->type == 1) {
            $vidExtensions = array("mp4", "flv", "3gp");
        } elseif ($service->type == 2) {
            $vidExtensions = array("mp3", "wav", "mpga");
        } elseif ($service->type == 3) {
            $vidExtensions = array("png", "jpg", "jpeg", "gif");
        }

        $destinationFolder = "uploads/settings_videos/";

        $destinationImagePreview = "uploads/videos/image_preview/";

        $video = new Video();
        $input = $request->except('title', 'content_text');
        $input['type'] = $service->type;
        if ($request->hasFile('video')) {
            $file = $request->file('video');
            if (!in_array($file->getClientOriginalExtension(), $vidExtensions)) {
                \Session::flash('failed', 'File must be ' . implode(' , ', $vidExtensions) . ' only !! According To Service Type , try again with that extensions please..');
                return back();
            }
            $destinationFolder = $this->destinationFolder;
            if (get_setting('content_exact_name')) {
                $input['video'] = $destinationFolder . $file->getClientOriginalName();
                $file->move($destinationFolder, $file->getClientOriginalName());
            } else {
                $uniqID = uniqid();
                $input['video'] = $destinationFolder . $uniqID . "." . $file->getClientOriginalExtension();
                $file->move($destinationFolder, $uniqID . "." . $file->getClientOriginalExtension());
            }

            if ($service->type == 1 || $service->type == 2) {
                if ($request->hasFile('image_preview')) {
                    $image_name = uniqid();
                    $input['image_preview'] = $image_name . ".png";
                    $request->image_preview->move($destinationImagePreview, $image_name . ".png");
                } else {
                    $image_name = uniqid();
                    $image_preview = base_path($destinationImagePreview . $image_name . '.png');
                    $input['image_preview'] = $image_name . '.png';
                    $command = 'ffmpeg -ss 00:00:02 -i ' . base_path($input['video']) . ' -vframes 1 -q:v 2 ' . base_path($destinationImagePreview . $image_name . '.png') . '';
                    $command = str_replace('\\', '/', $command);
                    exec($command);
                }
            }
        }
        $video->fill($input);
        foreach ($request->title as $key => $value) {
            $video->setTranslation('title', $key, $value);
        }
        if ($request->has('content_text') && $request->content_text['ar'] && $request->content_text['en']) {
            foreach ($request->content_text as $key => $value) {
                $video->setTranslation('content_text', $key, $value);
            }
        }

        $video->save();
        \Session::flash('success', 'Content Added successfully');
        if (isset($request->service)) {
            return redirect("services/$request->service_id/videos");
        }

        return redirect('videos');
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

        $service = $serviceID = null;
        if ($request->has('service')) {
            $service = $request->service;
        }
        $video = Video::findOrFail($id);
        $services = Service::all();
        $languages = Language::all();
        return view('videos.form', compact('video', 'serviceID', 'services', 'service', 'languages'));
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
            'service_id' => 'required',
            'title' => 'required',

        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $newVideo = $request->except('title', 'content_text');
        $video = Video::findOrFail($id);
        $destinationFolder = $this->destinationFolder;
        $destinationImagePreview = "uploads/videos/image_preview/";
        // get service details
        $service = Service::FindOrFail($request->service_id);
        //check of its type
        if ($service->type == 1) {
            $vidExtensions = array("mp4", "flv", "3gp");
        } elseif ($service->type == 2) {
            $vidExtensions = array("mp3", "wav", "mpga");
        } elseif ($service->type == 3) {
            $vidExtensions = array("png", "jpg", "jpeg", "gif");
        }

        if ($service->type != 4) {
            if ($request->hasFile('video')) {
                $file = $request->file('video');
                //if not same return warning
                if (!in_array($file->getClientOriginalExtension(), $vidExtensions)) {
                    \Session::flash('failed', 'File must be ' . implode(' , ', $vidExtensions) . ' only !! According To Service Type , try again with that extensions please..');
                    return back();
                }
                if (get_setting('content_exact_name')) {
                    $file->move($destinationFolder, $file->getClientOriginalName());
                    $newVideo['video'] = $destinationFolder . $file->getClientOriginalName();
                } else {
                    $uniqueID = uniqid();
                    $file->move($destinationFolder, $uniqueID . "." . $file->getClientOriginalExtension());
                    $newVideo['video'] = $destinationFolder . $uniqueID . "." . $file->getClientOriginalExtension();
                }
                if (file_exists($video['video'])) {
                    unlink($video['video']);
                }
                if ($service->type == 1) {
                    if (!$request->hasFile('image_preview')) {
                        $image_name = uniqid();
                        $image_preview = base_path($destinationImagePreview . $image_name . '.png');
                        $newVideo['image_preview'] = $image_name . '.png';
                        $command = 'ffmpeg -ss 00:00:02 -i ' . base_path($newVideo['video']) . ' -vframes 1 -q:v 2 ' . base_path($destinationImagePreview . $image_name . '.png') . '';
                        $command = str_replace('\\', '/', $command);
                        exec($command);
                    }
                }
            } else {
                $newVideo['video'] = $video['video'];
                if ($service->type == 1 || $service->type == 2) {
                    if ($request->hasFile('image_preview')) {
                        $image_name = uniqid();
                        $newVideo['image_preview'] = $image_name . ".png";
                        $request->image_preview->move($destinationImagePreview, $image_name . ".png");
                    }
                }
            }
        } else {
            foreach ($request->content_text as $key => $value) {
                $video->setTranslation('content_text', $key, $value);
            }
        }
        foreach ($request->title as $key => $value) {
            $video->setTranslation('title', $key, $value);
        }
        $video->update($newVideo);
        \Session::flash('success', 'Content Updated successfully');
        if (isset($request->service)) {
            return redirect("services/$request->service_id/videos");
        }



        return redirect("services/$video->service_id/videos");
      //  return redirect('videos');
        //return  redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $video = Video::find($id);
        if (file_exists($video['video'])) {
            unlink($video['video']);
        }

        Video::destroy($id);
        \Session::flash('success', 'Content Deleted Successfully');
        return redirect('videos');
    }

    public function posts($id)
    {

        $posts = \App\Post::where('video_id', $id)->get();
        $video = $id;
        return view('posts.index', compact('posts', 'video'));
    }

    public function audios($id)
    {

        $audios = \App\Audio::where('video_id', $id)->get();
        return view('audios.index', compact('audios'));
    }

    public function order_video(Request $request)
    {
      $videos = Video::whereIn('id',$request->list)->get();

      foreach ($videos as $key => $value) {
        $value->index  = (array_search($value->id,$request->list)) + 1;
        $value->save();
      }

      return 'ok';
    }

    public function export()
    {
        return Excel::download(new ContentsExport, 'Contents.xlsx');
    }
}
