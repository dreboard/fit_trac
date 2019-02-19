<?php

namespace App\Http\Controllers\Api;

use App\Exercise;
use App\Muscle;
use App\Program;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProgramDataController extends Controller
{
    public function loadPrograms()
    {
        $programs = Program::all();
        $muscles = Muscle::all();
        return response()->json(['programs' => $programs, 'muscles' => $muscles]);
    }

    public function getExercises(Request $request)
    {
        $id = $request->id;
        //$program = Program::find($id);
        $program = Program::where('id', $id)->first()->toArray();
        $muscles = explode(',', $program['muscles']);
        if($request->has('type')){
            $exercises = Exercise::whereIn('muscleID', $muscles)->where('type', '=', $request->type)->get();
        } else{
            $exercises = Exercise::whereIn('muscleID', $muscles)->get();
        }


        return response()->json(['program' => $program, 'exercises' => $exercises]);
    }
}
