<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;


use Illuminate\Http\Request;

class ApiController extends Controller {

    public function __construct(){
        $this->middleware('cors');
    }

    public function TodayStc(){
        $URL = "http://quranlive.digizone.com.kw/api/stc/todays";
        $Response = $this->GetPageData($URL);
        return json_decode($Response);
    }
    public function LatestStc(){
        $URL = "https://quranlive.digizone.com.kw/api/stc/latest";
        $Response = $this->GetPageData($URL);
        return json_decode($Response);
    }

    public function InnerStc($id){
        $URL = "https://quranlive.digizone.com.kw/api/stc/$id";
        $Response = $this->GetPageData($URL);
        return json_decode($Response);
    }

    public function GetPageData($URL){


        $ch = curl_init();
        $timeout = 5;
        curl_setopt($ch, CURLOPT_URL, $URL);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
        curl_setopt($ch,CURLOPT_SSL_VERIFYPEER, false) ;
        $data = curl_exec($ch);
        curl_close($ch);
        return $data;
    }
}
