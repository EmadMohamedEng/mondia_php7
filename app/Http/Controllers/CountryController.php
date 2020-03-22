<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Country ; 
use App\Operator; 
use Validator ; 

class CountryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $countries = Country::all() ;       
        return view('countries.index',compact('countries')) ;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $country = NULL  ; 
        return view('countries.form',compact('country')) ; 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[ 
            'title' => 'required|unique:countries,title' 
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $country = new Country($request->all()) ; 
        $country->save() ; 
        $request->session()->flash('success','Country Added successfully') ; 
        return redirect('countries') ; 
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
    public function edit($id)
    {
        $country = Country::findOrFail($id)  ; 
        return view('countries.form',compact('country')) ; 
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
        $validator = Validator::make($request->all(),[ 
            'title' => 'required|unique:countries,title,'.$id 
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $oldCountry = Country::findOrFail($id) ; 
        $country = $request->all() ; 
        $oldCountry->update($country) ; 
        $request->session()->flash('success','Country Updated successfully') ; 
        return redirect('countries') ; 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Country::destroy($id) ;
        \Session::flash('success','Country Deleted Successfully');
        return redirect('countries') ;
    }
 
}
