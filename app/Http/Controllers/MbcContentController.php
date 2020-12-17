<?php

namespace App\Http\Controllers;

use App\MbcContent;
use App\Provider;
use App\Service;
use App\Video;
use Illuminate\Http\Request;

class MbcContentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $mbc_contents = MbcContent::query()->select('mbc_contents.*')->orderBy('id', 'DESC');

        $without_paginate = 0;
        if ($request->has('subscription_day') && $request->subscription_day != '') {
            $mbc_contents = $mbc_contents->where('mbc_contents.subscription_day', $request->subscription_day);
            $without_paginate = 1;
        }
        if ($request->has('content_id') && $request->content_id != '') {
            $mbc_contents = $mbc_contents->join('contents', 'contents.id', '=', 'mbc_contents.content_id')->where('contents.title', 'like', '%' . $request->content_id . '%');
            $without_paginate = 1;
        }
        if ($request->has('operator') && $request->operator != '') {
            $mbc_contents = $mbc_contents->where('mbc_contents.operator', $request->operator);
            $without_paginate = 1;
        }
        if ($request->has('type') && $request->type != '') {
            $mbc_contents = $mbc_contents->where('mbc_contents.type', $request->type);
            $without_paginate = 1;
        }
        if ($request->has('occasion_date') && $request->occasion_date != '') {
            $mbc_contents = $mbc_contents->whereDate('mbc_contents.occasion_date', $request->occasion_date);
            $without_paginate = 1;
        }
        if ($without_paginate) {
            $mbc_contents = $mbc_contents->get();
        } else {
            $mbc_contents = $mbc_contents->paginate(100);
        }
        //dd($mbc_contents);
        return view('MbcContent.index', compact('mbc_contents', 'without_paginate'));
    }

    public function allData(Request $request)
    {
        // $MbcContent = MbcContent::all();

        // $datatable = \DataTables::of($MbcContent)
        //     ->addColumn('id', function (MbcContent $MbcContent) {
        //         return $MbcContent->id;
        //     })
        //     ->addColumn('content_id', function (MbcContent $MbcContent) {
        //         return $MbcContent->content;
        //     })
        //     ->addColumn('subscription_day', function (MbcContent $MbcContent) {
        //         return $MbcContent->subscription_day;
        //     })
        //     ->addColumn('operator', function (MbcContent $MbcContent) {
        //         return $MbcContent->operator;
        //     })
        //     ->addColumn('type', function (MbcContent $MbcContent) {
        //         return $MbcContent->type;
        //     })
        //     ->addColumn('occasion_date', function (MbcContent $MbcContent) {
        //         return $MbcContent->occasion_date;
        //     })
        //     ->addColumn('action', function (MbcContent $MbcContent) {
        //         return view('MbcContent.action', compact('MbcContent'))->render();
        //     })
        //     ->escapeColumns([])
        //     ->make(true);
        // return $datatable;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request->occasion_date);
        $mbc_content = new MbcContent();
        $mbc_content->content_id = $request->content_id;
        $mbc_content->type = $request->type;
        $mbc_content->subscription_day = $request->subscription_day;
        $mbc_content->operator = $request->operator;
        $mbc_content->occasion_date = $request->occasion_date ? \Carbon\Carbon::createFromFormat('d/m/Y', $request->occasion_date)->format('Y-m-d') : null;
        if ($request->type == "general") {
            $mbc_content->occasion_date = null;
        } elseif ($request->type == "occasion") {
            $mbc_content->subscription_day = null;
        } elseif ($request->type == "friday") {
            $mbc_content->occasion_date = null;
            $mbc_content->subscription_day = null;
        }
        $mbc_content->save();
        \Session::flash('success', 'Mbc Content Create successfully');
        return redirect('mbc_content');
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
        $service = $serviceID = null;
        $mbc_content = MbcContent::findOrFail($id);
        $content_id = Video::findOrFail($mbc_content->content_id);
        $service_id = Service::findOrFail($content_id->service_id);
        $provider_id = Provider::findOrFail($service_id->provider_id);
        //dd($mbc_content);
        return view('MbcContent.form', compact('content_id', 'service_id', 'provider_id', 'service', 'serviceID', 'mbc_content'));
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
        //dd($request);
        $mbc_content = MbcContent::findOrFail($id);
        $mbc_content->content_id = $request->content_id;
        $mbc_content->type = $request->type;
        $mbc_content->subscription_day = $request->subscription_day;
        $mbc_content->operator = $request->operator;
        $mbc_content->occasion_date = $request->occasion_date ? \Carbon\Carbon::createFromFormat('d/m/Y', $request->occasion_date)->format('Y-m-d') : null;
        if ($request->type == "general") {
            $mbc_content->occasion_date = null;
        } elseif ($request->type == "occasion") {
            $mbc_content->subscription_day = null;
        } elseif ($request->type == "friday") {
            $mbc_content->occasion_date = null;
            $mbc_content->subscription_day = null;
        }
        $mbc_content->save();
        \Session::flash('success', 'Mbc Content Update successfully');
        return redirect('mbc_content');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        MbcContent::destroy($id);
        \Session::flash('success', 'Mbc Content Deleted Successfully');
        return redirect('mbc_content');
    }
    public function mbc_content_create($id)
    {
        //dd($id);
        $service = $serviceID = $mbc_content = null;
        $content_id = Video::findOrFail($id);
        $service_id = Service::findOrFail($content_id->service_id);
        $provider_id = Provider::findOrFail($service_id->provider_id);
        //dd($content_id);
        return view('MbcContent.form', compact('content_id', 'service_id', 'provider_id', 'service', 'serviceID', 'mbc_content'));
    }

}
