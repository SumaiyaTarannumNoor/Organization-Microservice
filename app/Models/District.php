<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    protected $fillable = [
        'division_id',
        'district_name',
        'status',
        'created_by',
        'updated_by',
        'ip',
        'browser',
    ];

    public function division()
    {
        return $this->belongsTo(AdministritiveDivision::class);
    }             
}

