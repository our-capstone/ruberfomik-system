<?php

namespace App\Models;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SubCategory extends Model
{
    use HasFactory;
    public function relationshipCategory()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
    public function relationshipPost()
    {
        return $this->hasMany(Post::class)->orderBy('id', 'desc');
    }
}