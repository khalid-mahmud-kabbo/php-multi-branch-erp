<?php

namespace App\Models\Items;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Model;
use App\Models\Items\Item;
use App\Traits\BranchScopeable;

class ItemSerialMaster extends Model
{
    use HasFactory;
    use BranchScopeable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'item_id',
        'branch_id',
        'serial_code',
        'current_status',
    ];

    public function item():BelongsTo
    {
        return $this->belongsTo(Item::class);
    }
}
