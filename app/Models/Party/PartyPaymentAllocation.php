<?php

namespace App\Models\Party;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Model;
use App\Models\PaymentTransaction;
use App\Traits\BranchScopeable;

class PartyPaymentAllocation extends Model
{
    use HasFactory;
    use BranchScopeable;

    public $timestamps = false; // Disable automatic timestamps

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'party_payment_id',
        'payment_transaction_id',
    ];

    /**
     *
     * @return BelongsTo
     */
    /**
     * Changed it from HasMany to BelongsTo to generate Payment Transactions datatables
     * */
    public function paymentTransaction(): BelongsTo
    {
        return $this->belongsTo(PaymentTransaction::class);
    }

}
