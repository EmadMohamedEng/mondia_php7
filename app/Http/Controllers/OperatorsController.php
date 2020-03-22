<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Validator;
use App\Operator;
use App\Country;

class OperatorsController extends Controller {

    public function __construct() {

        if (!file_exists('uploads/operators')) {
            mkdir('uploads/operators', 0777, true);
        }
        $this->destinationFolder = "uploads/operators/";
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $operators = Operator::all();
        return view('operators.listoperator', compact('operators'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        $countries = \App\Country::all();
        return view('operators.addoperator',compact('countries'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
                    'name' => 'required',
                    'country_id' => 'required',
                    'operator_image' => 'required|mimes:jpg,jpeg,png',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $operator = new Operator($request->all());
        $file = $request->file('operator_image');
        $destinationFolder = $this->destinationFolder;
        $uniqueID = uniqid();
        $operator['operator_image'] = $destinationFolder . $uniqueID . "." . $file->getClientOriginalExtension();
        $file->move($destinationFolder, $uniqueID . "." . $file->getClientOriginalExtension());
        $operator->save();
        \Session::flash('success', 'Operator Added successsfully');
        return redirect('operators');
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
        $countries = \App\Country::all();
        $operator = Operator::findOrFail($id);
        return view('operators.editoperator', compact('operator','countries'));
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
                    'name' => 'required',
                    'country_id' => 'required',
                    'operator_image' => 'mimes:jpg,jpeg,png',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $imgExtensions = array("png", "jpeg", "jpg");
        $oldOperator = Operator::findOrFail($id);
        $newOperator = $request->all();
        $destinationFolder = $this->destinationFolder;
        if ($request->hasFile('operator_image')) {
            $file = $request->file("operator_image");
            $uniqueid = uniqid();
            $file->move($destinationFolder, $uniqueid . "." . $file->getClientOriginalExtension());
            $newOperator['operator_image'] = $destinationFolder . $uniqueid . "." . $file->getClientOriginalExtension();
            if (file_exists($oldOperator['operator_image'])) {
                unlink($oldOperator['operator_image']);
            }
        } else {
            $newOperator['operator_image'] = $oldOperator['operator_image'];
        }

        $oldOperator->update($newOperator);
        \Session::flash('success', 'Operator Updated Successfully');
        return redirect('operators');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        $operator = Operator::find($id);
        if (file_exists($operator['operator_image']))
            unlink($operator['operator_image']);
        $operator->destroy($id);
        return redirect('operators');
    }

}
