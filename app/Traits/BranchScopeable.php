<?php

namespace App\Traits;

use App\Scopes\BranchScope;
use Illuminate\Database\Eloquent\Model;

trait BranchScopeable
{
    public static function bootBranchScopeable(): void
    {
        /** @var Model $model */

        static::addGlobalScope(new BranchScope());

        static::creating(function ($model) {

            if (!empty($model->branch_id)) {
                return;
            }

            if (auth()->check() && auth()->user()->branch_id) {
                $model->branch_id = auth()->user()->branch_id;
            }
        });
    }
}