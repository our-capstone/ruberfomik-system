<?php

namespace App\Http\Controllers\Admin;

use App\Models\Post;
use App\Models\Photo;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminHomeController extends Controller
{
    public function index()
    {
        $total_category  = Category::count();
        $total_news = Post::count();
        $total_sub_category = SubCategory::count();
        $total_photo = Photo::count();
        return view('admin.home', compact('total_category', 'total_news', 'total_sub_category', 'total_photo'));
    }
}