<?php

namespace App\Models\Expenses;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use App\Models\Expenses\ExpenseItemMaster;
use App\Traits\BranchScopeable;

class ExpenseItem extends Model
{
    use HasFactory;
    use BranchScopeable;
    
    protected $fillable = [
        'expense_id',
        'expense_item_master_id',
        'description',
        'unit_price',
        'quantity',
        'total',
    ];

    public function itemDetails(): BelongsTo
    {
        return $this->belongsTo(ExpenseItemMaster::class, 'expense_item_master_id');
    }
}
