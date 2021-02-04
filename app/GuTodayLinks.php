<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GuTodayLinks extends Model
{
    protected $fillable = ['gu_request', 'gu_response', 'gu_day', 'mbc_request', 'mbc_response'];
}
