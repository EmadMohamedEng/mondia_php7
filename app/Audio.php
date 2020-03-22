<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Audio extends Model {

    protected $table = 'audios';
    protected $fillable = [
        'provider_id','operator_id', 'title', 'source','code','video_id','azan_flage'
    ];

    public function provider() {
        return $this->belongsTo('App\Provider');
    }

    public function operator() {
        return $this->belongsTo('App\Operator');
    }

    public function video() {
        return $this->belongsTo('App\Video');
    }



}
