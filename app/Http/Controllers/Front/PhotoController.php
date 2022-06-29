<?php

namespace App\Http\Controllers\Front;

use App\Models\Photo;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PhotoController extends Controller
{
    public function index()
    {
        $photos = Photo::get();
        return view('front.photo_gallery', compact('photos'));
    }
}