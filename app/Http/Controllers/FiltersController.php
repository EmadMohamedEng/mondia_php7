<?php

namespace App\Http\Controllers;

use App\Filters;
use Illuminate\Http\Request;

class FiltersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $filters = Filters::all();
        return view('filters.index', compact('filters'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
    public function edit(Filters $filters)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Filters  $filters
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Filters $filters)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Filters  $filters
     * @return \Illuminate\Http\Response
     */
    public function destroy(Filters $filters)
    {
        //
    }
}
