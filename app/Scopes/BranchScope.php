<?php

namespace App\Scopes;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Scope;
use App\Models\User;


class BranchScope implements Scope
{

    /** @var User $user */
    public function apply(Builder $builder, Model $model): void
    {
        /** @var User $user */
        $user = auth()->user();


        if (auth()->check() && $user->isSuperAdmin()) {
            return;
        }

        if (session()->has('branch_id')) {
            $builder->where($model->getTable() . '.branch_id', session('branch_id'));
        }
    }
}
