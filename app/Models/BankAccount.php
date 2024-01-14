<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BankAccount extends Model
{
    protected $fillable = [
        'bank_id',
        'owner_type',
        'account_owner_id',
        'bank_account_number',
        'status',
        'created_by',
        'updated_by',
        'ip',
        'browser',
    ];

    public function bank()
    {
        return $this->belongsTo(Bank::class);
    }

    public function accountOwner()
    {
        return $this->belongsTo(SalesOrganization::class, 'account_owner_id');
    }  
}
