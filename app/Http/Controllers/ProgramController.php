<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProgramController extends Controller
{
    public function index()
    {
        $id = Auth::user()->id;
        return view('admin.programs', compact('id'));
    }
}
