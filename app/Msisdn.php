<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Auth;
class Msisdn extends Model
{

    protected $table = 'msisdns' ;

    protected $fillable = [
        'msisdn',
        'operator_id' ,
        'ooredoo_notify_id' ,
        'ads_ur_id' ,
        'transaction_id' ,
        'ad_company' ,
        'final_status' ,

    ];

}
