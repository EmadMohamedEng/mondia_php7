<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Validator;
use App\Provider;
use App\Audio;
use App\Operator;

class AudiosController extends Controller {

    public function __construct() {

        if (!file_exists('uploads/audios')) {
            mkdir('uploads/audios', 0777, true);
        }
        $this->destinationFolder = "uploads/audios/";
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {

        $audios = Audio::all();
        return view('audios.index', compact('audios'));
    }

    public function allData(Request $request)
    {
        $audios = Audio::query();
        if($request->has('video_id') && $request->video_id != ''){
            $audios = $audios->where('video_id',$request->video_id)->orderBy("created_at", "desc");
        }
        $audios = $audios->get();
        $datatable = \DataTables::of($audios)
            ->addColumn('index', function (audio $audio) {
                return '<input class="select_all_template" type="checkbox" name="selected_rows[]" value="{{$audio->id}}" class="roles" onclick="collect_selected(this)">';
            })
            ->addColumn('id', function (audio $audio){
                return $audio->id;
            })
            ->addColumn('provider', function (audio $audio) {
                return '<a href="'.url('providers/'.$audio->provider->id.'/edit').'"target=_blank>'.$audio->provider->title.'</a>';

            })
            ->addColumn('title', function (audio $audio) {
                return $audio->title;
            })
            ->addColumn('operator', function (audio $audio) {
                return '<a href="'.url('operators/'.$audio->operator->id.'/edit').'"target=_blank>'.$audio->operator->name.'</a>';
            })
            ->addColumn('code', function (audio $audio){
                return $audio->code;
            })
            ->addColumn('video', function (audio $audio){
                return ($audio->video_id)?$audio->video->title:' -- ';
            })
            ->addColumn('azan_flage', function (audio $audio){
                return $audio->azan_flage == 1 ?"ON":"OFF";
            })
            ->addColumn('action', function (audio $audio) {
                return '<td class="visible-md visible-lg">
                                        <div class="btn-group">
                                            <a class="btn btn-sm show-tooltip" href="' . url("audios/" . $audio->id . "/edit") . '" title="Edit"><i class="fa fa-edit"></i></a>
                                            <a class="btn btn-sm show-tooltip btn-danger" onclick="return ConfirmDelete();" href="' . url("audios/" . $audio->id . "/delete") . '" title="Delete"><i class="fa fa-trash"></i></a>
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
    public function create(Request $request) {

        $audio = $video = $providerID = $videoID = null;
        if ($request->has('videoID')) {
            $videoID = $request->videoID;
             $video = \App\Video::FindOrFail($videoID);
        }
        if ($request->has('providerID')) {
            $providerID = $request->providerID;
        }
        $providers = Provider::all();
        $operators = Operator::all();
        return view('audios.form', compact('audio','providers','operators','videoID','video','providerID'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

        $validator = Validator::make($request->all(), [
                    'provider_id' => 'required',
                    'operator_id' => 'required',
                    'title' => 'required',
                    'source' => 'mimes:mpga,wav,mp3,mp4',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $audio = new Audio($request->all());
        if ($request->hasFile('source')) {
            $file = $request->file('source');
            $destinationFolder = $this->destinationFolder;
            $uniqID = uniqid();
            $audio['source'] = $destinationFolder . $uniqID . "." . $file->getClientOriginalExtension();
            $file->move($destinationFolder, $uniqID . "." . $file->getClientOriginalExtension());
        }
        $audio->save();
        \Session::flash('success', 'Audio Added successfully');
        return redirect('audios');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request ,$id) {

        $video = $providerID = $videoID = null;
        $audio = Audio::findOrFail($id);
        $providers = Provider::all();
        $operators = Operator::all();
        return view('audios.form', compact('operators','providers','audio','videoID','video','providerID'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {

        $validator = Validator::make($request->all(), [
                    'provider_id' => 'required',
                    'operator_id' => 'required',
                    'title' => 'required',
                    'source' => 'mimes:mpga,wav,mp3,mp4',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $newAudio = $request->all();
        $audio = Audio::findOrFail($id);
        $destinationFolder = $this->destinationFolder;
        if ($request->hasFile('source')) {
            $file = $request->file('source');
            $uniqueID = uniqid();
            $file->move($destinationFolder, $uniqueID . "." . $file->getClientOriginalExtension());
            $newAudio['source'] = $destinationFolder . $uniqueID . "." . $file->getClientOriginalExtension();
            if (file_exists($audio['source'])) {
                unlink($audio['source']);
            }
        } else {
            $newAudio['source'] = $audio['source'];
        }
        $audio->update($newAudio);
        \Session::flash('success', 'Audio Updated successfully');

         return redirect('audios');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {

        $audio = Audio::find($id);
        if (file_exists($audio['source']))
            unlink($audio['source']);
        Audio::destroy($id);
        \Session::flash('success', 'Audio Deleted Successfully');
        return redirect('audios');
    }



}
