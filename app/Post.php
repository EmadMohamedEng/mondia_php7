<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model {

    protected $fillable = [
        'operator_id', 'video_id', 'show_date', 'active'
    ];

    public function operator() {
        return $this->belongsTo('App\Operator');
    }

    public function video() {
        return $this->belongsTo('App\Video');
    }

}
