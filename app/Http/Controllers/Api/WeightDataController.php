<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Services\WeightService;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class WeightDataController extends Controller
{
    /**
     * @var WeightService
     */
    private $weightService;

    public function __construct(WeightService $weightService)
    {
        $this->weightService = $weightService;
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

            $weights = DB::table('myweight')
                ->where('user_id', '=', $request->id)
                ->orderBy('enterDate', 'desc')
                ->get();


            return response()->json(['weights' => $weights], 200);
        }catch (\Exception $e){
            Log::error($e->getMessage());
            return response()->json(['error' => []], 200);
        }
    }

    public function getWeightHistory(Request $request)
    {
        try{
            $weights = $this->weightService->weightHistory($request->id);
            return response()->json(['weights' => $weights], 200);
        }catch (\Exception $e){
            Log::error($e->getMessage());
            return response()->json(['error' => []], 200);
        }
    }

    public function newWeightEntry(Request $request)
    {
        $request->validate([
            'id' => 'required',
            'weight' => 'required|numeric',
        ]);

        try{
            $this->weightService->saveNewWeight($request);
            return response()->json(['status'=>'true']);
        }catch (\Throwable $e){
            Log::error($e->getMessage());
            return response()->json(['errors' => ['There are incorect values in the form!']], 200);
        }
    }

    public function newWeightGoalEntry(Request $request)
    {
        $request->validate([
            'id' => 'required',
            'weight' => 'required|numeric',
        ]);

        try{
            $weight = $this->weightService->saveNewWeightGoal($request);
            return response()->json(['newGoal'=> $weight]);
        }catch (\Throwable $e){
            Log::error($e->getMessage());
            return response()->json(['errors' => ['There are incorect values in the form!']], 200);
        }
    }

}
