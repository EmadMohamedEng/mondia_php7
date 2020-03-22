<?php

namespace App;

use App\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use Translatable;

    protected $table = 'services';

    protected $fillable = [
        'title','image','provider_id','type'
    ];

    public function provider() {
        return $this->belongsTo('App\Provider');
    }

    public function videos()
    {
        return $this->hasMany('App\Video');
    }
}
