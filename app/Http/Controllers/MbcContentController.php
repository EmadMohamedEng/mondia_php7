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

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request);
        $mbc_content = new MbcContent();
        $mbc_content->content_id = $request->content_id;
        $mbc_content->subscription_day = $request->subscription_day;
        $mbc_content->type = $request->available;
        $mbc_content->operator = $request->operator;
        $mbc_content->occasion_date =  \Carbon\Carbon::createFromFormat('d/m/Y', $request->occasion_date)->format('Y-m-d');
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
      return view('MbcContent.form', compact('content_id','service_id','provider_id','service','serviceID','mbc_content'));
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
        $mbc_content = MbcContent::findOrFail($id);
        $mbc_content->content_id = $request->content_id;
        $mbc_content->subscription_day = $request->subscription_day;
        $mbc_content->type = $request->available;
        $mbc_content->operator = $request->operator;
        $mbc_content->occasion_date =  \Carbon\Carbon::createFromFormat('d/m/Y', $request->occasion_date)->format('Y-m-d');
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
        //

      }
    public function mbc_content_create($id)
    {
      //dd($id);
      $service = $serviceID = $mbc_content = null;
      $content_id = Video::findOrFail($id);
      $service_id = Service::findOrFail($content_id->service_id);
      $provider_id = Provider::findOrFail($service_id->provider_id);
       //dd($content_id);
      return view('MbcContent.form', compact('content_id','service_id','provider_id','service','serviceID','mbc_content'));
    }


}
