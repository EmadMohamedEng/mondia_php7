<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;


class OrangeController extends Controller
{


  public function login(Request $request)
  {

    return view('landing_v2.orange.login');
  }

  public function unsubscribe()
  {
    return view('landing_v2.orange.unsub');
  }


}
