<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ResponseSendMessage extends Model
{
    protected $table = "response_send_messages";
    protected $fillable = ['link','response'];
}
