<?php

namespace App\Http\Middleware;

use App\Models\Branch;  
use Illuminate\Support\Facades\View;
use Closure;

class RedirectIfAuthenticated
{


public function handle($request, Closure $next) {
    $branchId = $request->user()?->branch_id    // single-branch user
        ?? session('branch_id')                  // manager switching branches
        ?? Branch::first()?->id;                 // fallback

    session(['branch_id' => $branchId]);
    View::share('currentBranch', Branch::find($branchId));

    return $next($request);
}
}
