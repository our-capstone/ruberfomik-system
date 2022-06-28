<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Setting;
use App\Models\Post;
use App\Models\SubCategory;

class HomeController extends Controller
{
    public function index()
    {

        // return view('front.layout.app');
        $setting_data = Setting::where('id', 1)->first();
        $post_data = Post::with('relationshipSubCategory')->orderBy('id', 'desc')->get();
        $sub_category_data = SubCategory::with('relationshipPost')->orderBy('sub_category_order', 'asc')->where('show_on_home', 'Show')->get();
        return view('front.home', compact('setting_data', 'post_data', 'sub_category_data'));
    }
}