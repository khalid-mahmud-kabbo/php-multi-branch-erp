<?php

namespace App\Models\Items;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Model;
use App\Models\Items\ItemSerialMaster;
use App\Models\Warehouse;
use App\Traits\BranchScopeable;

class ItemSerialQuantity extends Model
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
        'warehouse_id',
        'item_serial_master_id',
    ];

    /**
     * Define the relationship between Item and Unit.
     *
     * @return BelongsTo
     * */
    public function itemSerialMaster(): BelongsTo
    {
        return $this->belongsTo(ItemSerialMaster::class);
    }

    /**
     * ItemTransaction item has item id
     * 
     * @return BelongsTo
     * */
    public function warehouse(): BelongsTo
    {
        return $this->belongsTo(Warehouse::class);
    }
}
