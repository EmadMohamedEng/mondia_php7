<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GuCheckStatus extends Model
{
  protected $fillable = ['msisdn', 'url', 'response', 'status', 'day', 'country', 'operator'];
}
