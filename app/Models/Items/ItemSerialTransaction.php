<?php

namespace App\Models\Items;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Model;
use App\Models\Items\ItemSerialMaster;
use App\Models\Items\ItemTransaction;
use App\Models\Items\Item;
use App\Models\Warehouse;
use App\Traits\BranchScopeable;

class ItemSerialTransaction extends Model
{
    use HasFactory;
    use BranchScopeable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'item_transaction_id',
        'branch_id',
        'item_serial_master_id',
        'warehouse_id',
        'item_id',
        'unique_code',
    ];

    public function itemSerialMaster():BelongsTo
    {
        return $this->belongsTo(ItemSerialMaster::class, 'item_serial_master_id');
    }
    
    public function item():BelongsTo
    {
        return $this->belongsTo(Item::class);
    }

    public function itemTransaction():BelongsTo
    {
        return $this->belongsTo(ItemTransaction::class, 'item_transaction_id');
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
