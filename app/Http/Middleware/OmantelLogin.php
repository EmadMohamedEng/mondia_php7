<?php

namespace App\Http\Middleware;

use Closure;
use Session;

class OmantelLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Session::has('userToken') && Session::has('status') && Session::get('status') == 'active') {
            return redirect('/mondia_landing');
        }

        return $next($request);
    }
}
