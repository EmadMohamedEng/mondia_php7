<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MbcNotification extends Model
{
    protected $fillable = ['msisdn', 'action', 'url', 'country', 'operator', 'shortcode'];
}
