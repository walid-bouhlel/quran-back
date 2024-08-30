<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Reciter extends Model
{
    //use HasFactory;
    public function surahs()
    {
        return $this->hasMany(Surah::class);
    }
}
