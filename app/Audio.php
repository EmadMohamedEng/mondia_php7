<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Traits\Translatable;

class Audio extends Model {
    use Translatable;

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
