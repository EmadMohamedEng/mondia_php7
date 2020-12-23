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

    public function scopeMbcAllContent($query, $sub_day) {
        $query->where('operator', 'all')->where('subscription_day', $sub_day);
    }

    public function scopeStcAllContent($query, $sub_day) {
        $query->where('operator', 'ksa-stc')->where('subscription_day', $sub_day);
    }

}
