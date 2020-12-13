<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MbcContent extends Model
{
    protected $fillable = ['content_id', 'subscription_day', 'operator', 'type', 'occasion_date'];

    public function content()
    {
        return $this->belongsTo('App\Video', 'content_id', 'id');
    }
}
