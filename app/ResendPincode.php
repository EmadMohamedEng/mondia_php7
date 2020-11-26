<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ResendPincode extends Model
{
  protected $table = 'resend_pincodes';

  protected $fillable = ['msisdn', 'count','date'];
}
