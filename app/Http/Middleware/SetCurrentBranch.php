<?php

namespace App\Http\Middleware;

use App\Models\Branch;
use Illuminate\Support\Facades\View;
use Closure;

class SetCurrentBranch
{
    public function handle($request, Closure $next)
    {
        // Skip if user is not authenticated (login page, etc.)
        if (!$request->user()) {
            return $next($request);
        }

        $branchId = $request->user()->branch_id
            ?? session('branch_id')
            ?? Branch::first()?->id;

        session(['branch_id' => $branchId]);

        // Share with ALL views (sidebar, navbar, etc.)
        View::share('currentBranch', Branch::find($branchId));
        View::share('branches', Branch::where('is_active', true)->get()); // ← this was missing

        return $next($request);
    }
}