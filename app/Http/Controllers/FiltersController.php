<?php

namespace App\Http\Controllers;

use App\Filters;
use App\Language;
use Validator;
use Illuminate\Http\Request;

class FiltersController extends Controller
{
  public function __construct() {

    if (!file_exists('uploads/filters')) {
        mkdir('uploads/filters', 0777, true);
    }
    $this->destinationFolder = "uploads/filters/";
}

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $filters = Filters::all();
        $languages = Language::all();
        return view('filters.index', compact('filters','languages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $filters = null;
        $languages = Language::all();
        return view('filters.form', compact('filters', 'languages'));
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
        'title' => 'required',
        'link' => 'required',
        'image' => 'required|mimes:jpg,jpeg,png',
        ]);
        if ($validator->fails()) {
          return back()->withErrors($validator)->withInput();
        }
        $filter = new Filters;
        $filter->title = $request->title;
        $filter->link = $request->link;
        if ($request->hasFile('image')) {
          if ($request->file('image')->isValid()) {
              try {
                  $imageName = time() . '.' . $request->image->getClientOriginalExtension();
                  $request->image->move('uploads/filters', $imageName);
                  $filter->image = $imageName;
              } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
          }
      }
        foreach ($request->title as $key => $value)
        {
            $filter->setTranslation('title', $key, $value);
        }
        $filter->save();
        \Session::flash('success', 'Filter Added successfully');
        return redirect('filters');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Filters  $filters
     * @return \Illuminate\Http\Response
     */
    public function show(Filters $filters)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Filters  $filters
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $filters = Filters::findOrFail($id);
      $languages = Language::all();
      return view('filters.form', compact('filters', 'languages'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Filters  $filters
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request , $id)
    {
      $validator = Validator::make($request->all(), [
        'title' => 'required',
        'link' => 'required',
        ]);
        if ($validator->fails()) {
          return back()->withErrors($validator)->withInput();
        }
        $filter = Filters::findOrFail($id);
        $filter->title = $request->title;
        $filter->link = $request->link;
        if ($request->hasFile('image')) {
          if ($request->file('image')->isValid()) {
              try {
                  $imageName = time() . '.' . $request->image->getClientOriginalExtension();
                  $request->image->move('uploads/filters', $imageName);
                  $filter->image = $imageName;
              } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
          }
      }
        foreach ($request->title as $key => $value)
        {
            $filter->setTranslation('title', $key, $value);
        }
        $filter->save();
        \Session::flash('success', 'Filter Update successfully');
        return redirect('filters');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Filters  $filters
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      Filters::destroy($id);
      \Session::flash('success', 'Filter Delete successfully');
        return redirect('filters');
    }
}
