<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckAuth
{
    public function handle(Request $request, Closure $next)
    {
        if (auth()->check()) {
            // User is authenticated, allow access to the specific page
            return $next($request);
        }

        // User is not authenticated, redirect to the "not found" page
        return redirect()->route('not_found');
    }
}
