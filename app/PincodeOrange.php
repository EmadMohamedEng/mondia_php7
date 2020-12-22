<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PincodeOrange extends Model
{
  protected $table = "pincode_oranges";
  protected $fillable = ['msisdn','pincode','expire_date_time'];
}
