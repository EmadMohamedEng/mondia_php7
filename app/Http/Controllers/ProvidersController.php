<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Validator;
use App\Provider;
use App\Language;
class ProvidersController extends Controller {

    public function __construct() {

        if (!file_exists('uploads/providers')) {
            mkdir('uploads/providers', 0777, true);
        }
        $this->destinationFolder = "uploads/providers/";
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {

        $providers = Provider::all();
        $languages = Language::all();
        return view('providers.index', compact('providers','languages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {

        $provider = null;
        $languages = Language::all();
        return view('providers.form', compact('provider','languages'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

        $validator = Validator::make($request->all(), [
                    'title' => 'required',
                    'image' => 'mimes:jpg,jpeg,png',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $provider = new Provider();
        $input = $request->except('title');
        if($request->hasFile('image')){
            $file = $request->file('image');
            $destinationFolder = $this->destinationFolder;
            $uniqID = uniqid();
            $input['image'] = $destinationFolder . $uniqID . "." . $file->getClientOriginalExtension();
            $file->move($destinationFolder, $uniqID . "." . $file->getClientOriginalExtension());
        }
        foreach ($request->title as $key => $value)
        {
            $provider->setTranslation('title', $key, $value);
        }
        $provider->save();
        \Session::flash('success', 'Provider Added successfully');
        return redirect('providers');
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
    public function edit($id) {

        $provider = Provider::findOrFail($id);
        $languages = Language::all();
        return view('providers.form', compact('provider','languages'));
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
                    'title' => 'required',
                    'image' => 'mimes:jpg,jpeg,png',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $newProvider = $request->except('title');
        $provider = Provider::findOrFail($id);
        $destinationFolder = $this->destinationFolder;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $uniqueID = uniqid();
            $file->move($destinationFolder, $uniqueID . "." . $file->getClientOriginalExtension());
            $newProvider['image'] = $destinationFolder . $uniqueID . "." . $file->getClientOriginalExtension();
            if (file_exists($provider['image'])) {
                unlink($provider['image']);
            }
        } else {
            $newProvider['image'] = $provider['image'];
        }

        foreach ($request->title as $key => $value)
        {
            $provider->setTranslation('title', $key, $value);
        }
        $provider->update($newProvider);
        \Session::flash('success', 'Provider Updated successfully');
        return redirect('providers');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {

        $provider = Provider::find($id);
        if (file_exists($provider['image']))
            unlink($provider['image']);
        Provider::destroy($id);
        \Session::flash('success', 'Provider Deleted Successfully');
        return redirect('providers');
    }

    public function services($id) {

        $services = \App\Service::where('provider_id', $id)->get();
        $provider = $id ;
        $languages = Language::all();
        return view('services.index', compact('services','provider','languages'));
    }

    public function audios($id) {

        $audios = \App\Audio::where('provider_id', $id)->get();
        return view('audios.index', compact('audios'));
    }

}
