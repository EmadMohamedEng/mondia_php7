<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Traits\Translatable;

class Filters extends Model
{
  use Translatable;
  protected $table = "filters" ;
  protected $fillable = ['title','link','image'];
}
