<?php
/**
 * @since       v0.1.0
 * @package     Dev-PHP
 * @author      Andre Board <dre.board@gmail.com>
 * @version     v1.0
 * @access      public
 * @see         https://github.com/dreboard
 */

namespace App\Http\Controllers\Services;


use App\Goal;
use App\User;
use App\UserWeight;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class WeightService
{

    public function weightHistory(int $id)
    {
        $user = User::findOrFail($id);
        $weights = [];
        $weights['all'] = $user->userWeight->toArray();
        $weights['avg'] = DB::table('myweight')
            ->where('user_id', $id)
            ->avg('weight');
        $weights['max'] = DB::table('myweight')
            ->where('user_id', $id)
            ->avg('weight');
        $weights['min'] = DB::table('myweight')
            ->where('user_id', $id)
            ->min('weight');
        $weights['last'] = UserWeight::where('user_id', $id)
            ->latest('enterDate')
            ->first();
        $weights['goal'] = User::find($id)->goals()->where('goalName', 'weight')->first() ?? 0;
        return $weights;
    }

    public function saveNewWeight(Request $request)
    {
        $userWeight = new UserWeight();
        $userWeight->weight = $request->weight;
        $userWeight->user_id = $request->id;
        $userWeight->enterDate = date('Y-m-d');
        $userWeight->save();
    }


    /**
     * @param Request $request
     * @return array
     */
    public function saveNewWeightGoal(Request $request)
    {
        try{
            //$goal = Goal::where('user_id', $request->id)->where('goalName', 'weight')->first();
            if ($goal = Goal::where('user_id', $request->id)->where('goalName', 'weight')->first()) {
                $goal->weight = $request->weight;
                $goal->goalDate = date('Y-m-d');
            } else {
                $goal = new Goal;
                $goal->goalName = 'weight';
                $goal->weight = $request->weight;
                $goal->user_id = $request->id;
                $goal->goalDate = date('Y-m-d');

            }
            $goal->save();
            return $request->weight;
        }catch (\Throwable $e){
            Log::error($e->getMessage());
            return [];
        }

    }
}