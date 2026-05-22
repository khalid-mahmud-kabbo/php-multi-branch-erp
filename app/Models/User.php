<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles;
    // ✅ No BranchScopeable — users are NOT branch-filtered

    protected $fillable = [
        'first_name',
        'last_name',
        'branch_id',
        'username',
        'email',
        'password',
        'role_id',
        'status',
        'avatar',
        'mobile',
        'is_allowed_all_warehouses',
    ];

    protected $hidden = ['password', 'remember_token'];

    protected $casts = [
        'email_verified_at' => 'datetime',
        'password'          => 'hashed',
    ];

    protected static function boot(): void
    {
        parent::boot();

        static::creating(function ($model) {
            $model->created_by = auth()->id();
            $model->updated_by = auth()->id();
        });

        static::updating(function ($model) {
            $model->updated_by = auth()->id();
        });
    }

    // ─── Relationships ────────────────────────────────────────────

    public function role(): BelongsTo
    {
        return $this->belongsTo(Role::class, 'role_id');
    }

    public function branch(): BelongsTo
    {
        return $this->belongsTo(Branch::class);
    }

    public function orderedProducts(): BelongsTo
    {
        return $this->belongsTo(OrderedProduct::class, 'assigned_user_id');
    }

    public function userWarehouses(): HasMany
    {
        return $this->hasMany(UserWarehouse::class, 'user_id');
    }

    // ─── Role Helpers (wrapping Spatie) ──────────────────────────

    public function isSuperAdmin(): bool
    {
        return $this->hasRole('superadmin');
    }

    public function isManager(): bool
    {
        return $this->hasRole('manager');
    }

    public function isStaff(): bool
    {
        return $this->hasRole('staff');
    }

    public function hasAccessToBranch(int $branchId): bool
    {
        if ($this->isSuperAdmin()) return true;
        return $this->branch_id === $branchId;
    }

    // ─── Warehouse Access ─────────────────────────────────────────

    public function getAccessibleWarehouses(bool $viewAllWarehouse = false)
    {
        if ($this->is_allowed_all_warehouses || $viewAllWarehouse) {
            return Warehouse::all();
        }

        $warehouseIds = UserWarehouse::where('user_id', $this->id)
                                     ->pluck('warehouse_id');

        return Warehouse::whereIn('id', $warehouseIds)->get();
    }
}