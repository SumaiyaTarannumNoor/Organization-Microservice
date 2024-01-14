<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bank extends Model
{
    protected $fillable = [
        'bank_name',
        'description',
        'contact_person',
        'contact_person_mobile',
        'status',
        'created_by',
        'modified_by',
        'modified_at',
        'ip',
        'browser',
    ];
}
