<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Operator extends Model {

    protected $table = "operators";
    protected $fillable = [
        'name',
        'operator_image',
        'code',
        'country_id',
        'operator_name'
    ];

    public function country()
    {
        return $this->belongsTo('App\Country') ;
    }

    public function filterPosts()
    {
        return $this->hasMany('App\FilterPosts', 'operator_id', 'id');
    }

}
