<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;

class AdminSettingController extends Controller
{
    public function index()
    {
        $setting_data = Setting::where('id', 1)->first();
        return view('admin.setting', compact('setting_data'));
    }
}