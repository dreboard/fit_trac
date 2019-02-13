<?php

namespace App\Http\Controllers\Api;

use App\Exercise;
use App\Muscle;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class ExerciseDataController extends Controller
{
    /**
     *
     */
    public function loadExercises()
    {
        $exercises = Exercise::all();
        $muscles = Muscle::all();
        return response()->json(['exercises' => $exercises, 'muscles' => $muscles]);
    }

    public function getExercises(Request $request)
    {
        $id = $request->id;
        $part_exercises = Exercise::where('muscleID', $id)->get();
        return response()->json(['part_exercises' => $part_exercises]);
    }
}
