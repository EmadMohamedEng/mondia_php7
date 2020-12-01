<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FilterPosts extends Model
{
  protected $table = "filter_posts" ;
  protected $fillable = ['filter_id','operator_id','published_date'];

  public function filter()
  {
      return $this->belongsTo('App\Filters', 'filter_id', 'id');
  }

  public function operator() {
    return $this->belongsTo('App\Operator');
   }

}
