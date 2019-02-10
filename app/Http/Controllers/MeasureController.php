<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MeasureController extends Controller
{
    public function measurements()
    {
        $user = User::find(Auth::user()->id);
        return view('admin.measure', ['user' => $user]);
    }
}
