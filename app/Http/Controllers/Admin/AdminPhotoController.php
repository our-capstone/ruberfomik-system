<?php

namespace App\Http\Controllers\Admin;

use App\Models\Photo;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminPhotoController extends Controller
{
    public function show()
    {
        $photos = Photo::get();
        return view('admin.photo_show', compact('photos'));
    }

    public function create()
    {
        return view('admin.photo_create');
    }
    public function store(Request $request)
    {
        $request->validate([
            'caption' => 'required',
            'photo' => 'required|image|mimes:jpg,jpeg,png,gif'
        ]);

        $now = time();
        $ext = $request->file('photo')->extension();
        $final_name = 'photo_' . $now . '.' . $ext;
        $request->file('photo')->move(public_path('uploads/'), $final_name);

        $photo = new Photo();
        $photo->photo = $final_name;
        $photo->caption = $request->caption;
        $photo->save();

        return redirect()->route('admin_photo_show')->with('success', 'Data is added successfully.');
    }
}