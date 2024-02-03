<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Category;

class Product extends Model
{
    use HasFactory;

    /**
     * field mass assignment
     *
     * @var array
     */
    protected $guarded = ['id'];

    /**
     * belongs to relation to category
     *
     * @return BelongsTo
     */
    public function category()
    {
        return $this->belongsTo(Category::class,'category_id');
    }


}
