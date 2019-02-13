<?php

namespace App\Http\Controllers;

use App\Exercise;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ExerciseController extends Controller
{
    public function index()
    {
        $exercises = Exercise::all();
        $id = Auth::user()->id;
        return view('admin.exercises', compact('exercises', 'id'));
    }
}
