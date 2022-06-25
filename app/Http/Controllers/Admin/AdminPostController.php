<?php

namespace App\Http\Controllers\Admin;

use App\Models\Tag;
use App\Models\Post;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AdminPostController extends Controller
{
    public function show()
    {
        $posts = Post::with('relationshipSubCategory.relationshipCategory')->get();
        return view('admin.post_show', compact('posts'));
    }

    public function create()
    {
        // $categories = Category::get();
        // foreach ($categories as $item) {
        //     // dd($item);
        //     echo $item->category_name . '</br>';
        // }

        $sub_categories = SubCategory::with('relationshipCategory')->get();
        // foreach ($sub_categories as $item) {
        //     // dd($item);
        //     echo $item->sub_category_name . $item->relationshipCategory->category_name . '</br>';
        // }
        // dd($categories);
        return view('admin.post_create', compact('sub_categories'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'post_title' => 'required',
            'post_detail' => 'required'
        ]);

        $q = DB::select("SHOW TABLE STATUS LIKE 'posts'");
        $ai_id = $q[0]->Auto_increment;
        // dd($ai_id);
        // dd($request->tags);


        $post = new Post();
        $post->sub_category_id = $request->sub_category_id;
        $post->post_title = $request->post_title;
        $post->post_detail = $request->post_detail;
        $post->visitors = 1;
        $post->author_id = 0;
        $post->admin_id = Auth::guard('admin')->user()->id;
        $post->is_share = $request->is_share;
        $post->is_comment = $request->is_comment;
        $post->save();

        $tags_array = explode(',', $request->tags);
        for ($i = 0; $i < count($tags_array); $i++) {
            $tag = new Tag();
            $tag->post_id = $ai_id;
            $tag->tag_name = trim($tags_array[$i]);
            $tag->save();
        }

        return redirect()->route('admin_post_show')->with('success', 'Data is added successfully.');
    }
}