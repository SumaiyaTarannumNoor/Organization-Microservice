<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class AdministrativeDivision extends Model
{
    protected $fillable = [
        'status',
        'created_by',
        'modified_by',
        'modified_at',
        'ip',
        'browser',
    ];   
    
    public function districts()
    {
        return $this->hasMany(District::class);
    }      
}
