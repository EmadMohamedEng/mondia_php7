<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UnsubPincodeOrange extends Model
{
  protected $table = "unsub_pincode_oranges";
  protected $fillable = ['msisdn','pincode','expire_date_time'];
}
