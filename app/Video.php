<?php

namespace App;

use App\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class Video extends Model {

    use Translatable;

    protected $table = 'contents';

    protected $fillable = [
        'service_id', 'title', 'video','type' ,'image_preview','content_text'
    ];

    public function getImagePreviewAttribute($value)
    {
        return url('uploads/videos/image_preview/'.$value);
    }

    public function service() {
        return $this->belongsTo('App\Service');
    }

    public function posts() {
        return $this->hasMany('App\Post');
    }

}
