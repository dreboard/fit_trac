<?php

namespace App\Http\Controllers\Api;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Log;

class DataController extends Controller
{

    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function getCalEvents()
    {
        $user = User::find(Auth::user()->id);
        return response()->json(['events' => $user->events], 200);
    }

    public function getWeightPage()
    {
        $user = User::find(Auth::user()->id);
        return view('admin.weight', ['user' => $user]);
    }

    public function getWeight(Request $request)
    {
        try{
            $user = User::findOrFail($request->id);
            return response()->json(['weights' => $user->userWeight->toArray()], 200);
        }catch (\Exception $e){
            Log::error($e->getMessage());
            return response()->json(['error' => []], 200);
        }
    }

}
