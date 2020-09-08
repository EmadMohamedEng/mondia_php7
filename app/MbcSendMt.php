<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MbcSendMt extends Model
{
  protected $fillable = ['SmsID', 'MobileNo', 'Country', 'Operator', 'Shortcode', 'Msgtxt', 'Lang', 'ServiceID', 'Request', 'Response', 'ResponseCode'];
}
