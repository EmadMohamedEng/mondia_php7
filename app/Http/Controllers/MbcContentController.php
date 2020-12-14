<?php

namespace App\Http\Controllers;

use App\MbcContent;
use Illuminate\Http\Request;

class MbcContentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('MbcContent.index');
    }

    public function allData(Request $request)
    {
        $MbcContent = MbcContent::all();

        $datatable = \DataTables::of($MbcContent)
            ->addColumn('id', function (MbcContent $MbcContent) {
                return $MbcContent->id;
            })
            ->addColumn('content_id', function (MbcContent $MbcContent) {
                return $MbcContent->content;
            })
            ->addColumn('subscription_day', function (MbcContent $MbcContent) {
                return $MbcContent->subscription_day;
            })
            ->addColumn('operator', function (MbcContent $MbcContent) {
                return $MbcContent->operator;
            })
            ->addColumn('type', function (MbcContent $MbcContent) {
                return $MbcContent->type;
            })
            ->addColumn('occasion_date', function (MbcContent $MbcContent) {
                return $MbcContent->occasion_date;
            })
            ->addColumn('action', function (MbcContent $MbcContent) {
                return view('MbcContent.action', compact('MbcContent'))->render();
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
    public function create()
    {
      $content_id = $request->content_id;
      return view('MbcContent.form', compact('content_id'));
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
