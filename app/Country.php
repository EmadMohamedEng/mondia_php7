<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $table = "countries" ;
    protected $fillable = ['title','code'];

    public function operators()
    {
        return $this->hasMany('App\Operator');
    }
}
