<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GuSubscriber extends Model
{
  protected $fillable = ['msisdn', 'status', 'day', 'country', 'operator', 'gu_check_status_id'];
}
