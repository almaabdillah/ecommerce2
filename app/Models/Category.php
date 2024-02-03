<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    /**
     * @var array
     */
    protected $guarded = ['id'];

    /**
     * @return HasMany
     */
    public function products()
    {
        return $this->hasMany(Category::class, 'category_id', 'id');
    }
}
