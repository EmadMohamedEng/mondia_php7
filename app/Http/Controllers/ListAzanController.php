<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Validator;
use App\Provider;
use App\Audio;
use App\Operator;

class ListAzanController extends Controller
{

    public function __construct()
    {

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
    public function index()
    {

        $audios = Audio::where('azan_flage', 1)->get();
        return view('listazan.index', compact('audios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

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
        return view('audios.form', compact('audio', 'providers', 'operators', 'videoID', 'video', 'providerID'));
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

        $video = $providerID = $videoID = null;
        $audio = Audio::findOrFail($id);
        $providers = Provider::all();
        $operators = Operator::all();
        return view('audios.form', compact('operators', 'providers', 'audio', 'videoID', 'video', 'providerID'));
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
    public function destroy($id)
    {

        $audio = Audio::find($id);
        if (file_exists($audio['source']))
            unlink($audio['source']);
        Audio::destroy($id);
        \Session::flash('success', 'Audio Deleted Successfully');
        return redirect('audios');
    }
}
