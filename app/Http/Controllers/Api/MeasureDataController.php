<?php

namespace App\Http\Controllers\Api;

use App\InitialMeasure;
use App\Measurement;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Services\MeasureService;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

/**
 * @property MeasureService measureService
 */
class MeasureDataController extends Controller
{
    /**
     * MeasureDataController constructor.
     * @param MeasureService $measureService
     */
    public function __construct(MeasureService $measureService)
    {
        $this->measureService = $measureService;
    }

    public function test()
    {
        return response()->json(['success' => true]);
    }

    /**
     * @return mixed
     */
    public function getParts(Request $request)
    {
//        $partsCurrent = Measurement::find($request->id)->toArray();
//
//        return response()->json(['bodyMeasurements' => $partsCurrent, 'user' => $request->id]);

        try{
            $initial = $this->measureService->measureData($request->id);

            //$initial = InitialMeasure::where('user_id', $request->id)->get();


            return response()->json(['bodyMeasurements' => $initial, 'user' => $request->id]);
        }catch (\Throwable $e){
            Log::error('Current user: '.$request->id.' MESSAGE: '.$e->getMessage());
            return response()->json(['error' => 'Record not found', 'user' => $request->id]);
        }

    }

    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function updatePart(Request $request)
    {
        $request->validate([
            'id' => 'required',
            'part' => 'required',
            'measurement' => 'required',
        ]);

        try{
            $this->measureService->saveNewMeasurement($request);
            return response()->json(['status'=>'true']);
        }catch (\Throwable $e){
            Log::error($e->getMessage());
            return response()->json(['errors' => ['There are incorect values in the form!']], 200);
        }
    }
}
