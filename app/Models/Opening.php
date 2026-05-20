<?php
namespace App\Models;

use App\Traits\BranchScopeable;
use Illuminate\Database\Eloquent\Model;

class Opening extends Model
{
    use BranchScopeable;
    
    protected $table = 'payment_transactions';
    public $timestamps = false;
}
