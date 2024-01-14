<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Distributor extends Model
{
    protected $fillable = [
        'distributor_name',
        'storage_id',
        'upazila_id',
        'erp_id',
        'proprietor_name',
        'proprietor_dob',
        'address',
        'mobile_number',
        'has_printer',
        'has_pc',
        'has_live_app',
        'has_direct_sale',
        'opening_date',
        'emergency_contact_name',
        'emergency_contact_number',
        'emergency_contact_relation',
        'union',
        'ward',
        'village',
        'status',
        'created_by',
        'updated_by',
        'ip',
        'browser',
    ];

    public function storage()
    {
        return $this->belongsTo(Storage::class);
    }

    public function upazila()
    {
        return $this->belongsTo(Upazila::class);
    }

    public function erp()
    {
        return $this->belongsTo(DistributionAssignedArea::class);
    }      
    
  
}
