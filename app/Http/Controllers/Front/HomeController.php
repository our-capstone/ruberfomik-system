<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Setting;
use App\Models\Post;

class HomeController extends Controller
{
    public function index()
    {

        // return view('front.layout.app');
        $setting_data = Setting::where('id', 1)->first();
        $post_data = Post::orderBy('id', 'desc')->get();
        return view('front.home', compact('setting_data', 'post_data'));
    }
}