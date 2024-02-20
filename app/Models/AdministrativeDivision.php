<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdministrativeDivision extends Model
{
    protected $fillable = [
        'division_name',
        'status',
        'created_by',
        'updated_by',
        'ip',
        'browser',
    ];    
    
    public function districts()
    {
        return $this->hasMany(District::class);
    } 

}
