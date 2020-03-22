<?php

namespace App;

use App\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class Provider extends Model {
    use Translatable;

    protected $table = 'providers';

    protected $fillable = [
        'title', 'image'
    ];

    public function services() {
        return $this->hasMany('App\Service');
    }

    public function audio() {
        return $this->hasMany('App\Audio');
    }

}
