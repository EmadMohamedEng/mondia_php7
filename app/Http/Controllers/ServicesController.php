<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Validator;
use App\Provider;
use App\Service;
use App\Language;

class ServicesController extends Controller {

    public function __construct() {

        if (!file_exists('uploads/services')) {
            mkdir('uploads/services', 0777, true);
        }
        $this->destinationFolder = "uploads/services/";
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {

        $services = Service::all();
        $provider = null;
        $languages = Language::all();
        return view('services.index', compact('services','provider','languages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request) {

        $provider = $providerID = $service = null;
        $providers = Provider::all();
        if ($request->has('providerID')) {
            $providerID = $request->providerID;
        }
        $languages = Language::all();
        return view('services.form', compact('service','providerID','providers','provider','languages'));
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
                    'title' => 'required',
                    'image' => 'required|mimes:jpg,jpeg,png',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $service = new Service();
        $input = $request->except('title');
        $file = $request->file('image');
        $destinationFolder = $this->destinationFolder;
        $uniqID = uniqid();
        $input['image'] = $destinationFolder . $uniqID . "." . $file->getClientOriginalExtension();
        $file->move($destinationFolder, $uniqID . "." . $file->getClientOriginalExtension());
        $service->fill($input);
        foreach ($request->title as $key => $value)
        {
            $service->setTranslation('title', $key, $value);
        }
        $service->save();
        \Session::flash('success', 'Service Added successfully');
         if (isset($request->provider))
            return redirect("providers/$request->provider_id/services");
        return redirect('services');
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

        $provider = $providerID = null;
        if ($request->has('provider')) {
            $provider = $request->provider;
        }
        $service = Service::findOrFail($id);
        $providers = Provider::all();
        $languages = Language::all();
        return view('services.form', compact('service','providerID','providers','provider','languages'));
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
                    'title' => 'required',
                    'image' => 'mimes:jpg,jpeg,png',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $newService = $request->except('title');
        $service = Service::findOrFail($id);
        $destinationFolder = $this->destinationFolder;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $uniqueID = uniqid();
            $file->move($destinationFolder, $uniqueID . "." . $file->getClientOriginalExtension());
            $newService['image'] = $destinationFolder . $uniqueID . "." . $file->getClientOriginalExtension();
            if (file_exists($service['image'])) {
                unlink($service['image']);
            }
        } else {
            $newService['image'] = $service['image'];
        }
        foreach ($request->title as $key => $value)
        {
            $service->setTranslation('title', $key, $value);
        }
        $service->update($newService);
        \Session::flash('success', 'Service Updated successfully');
         if (isset($request->provider))
            return redirect("providers/$request->provider_id/services");
         return redirect('services');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {

        $service = Service::find($id);
        if (file_exists($service['image']))
            unlink($service['image']);
        Service::destroy($id);
        \Session::flash('success', 'Service Deleted Successfully');
        return redirect('services');
    }

    public function videos($id) {

        $videos = \App\Video::where('service_id', $id)->get();
        $service = $id;
        return view('videos.index', compact('videos','service'));
    }

}
