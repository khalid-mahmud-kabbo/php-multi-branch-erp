<?php

namespace App\Models;

use App\Traits\BranchScopeable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Currency extends Model
{
    use HasFactory;
    use BranchScopeable;

    protected $fillable = [
        'name',
        'code',
        'symbol',
        'exchange_rate',
        'is_company_currency',
    ];

}
