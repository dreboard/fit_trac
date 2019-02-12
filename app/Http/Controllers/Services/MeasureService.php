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

use App\{Http\Resources\InitialResource, Http\Traits\MeasureConversion, Measurement, InitialMeasure};
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

/**
 * Class MeasureService
 * @package App\Http\Controllers\Services
 */
class MeasureService
{
    use MeasureConversion;

    /**
     * @var array
     */
    protected $partsArray = [];


    /**
     * @param int $id
     * @return array
     */
    public function getBodyParts(int $id)
    {
        $initial = InitialMeasure::where('user_id', $id)->get();
        if ( count($initial) > 0 ) {
            return $initial;
        }
        return [];
    }

    /**
     * @param $id
     * @return array
     */
    public function measureData($id)
    {
        $this->partsArray['headers'] = $this->measureHeaders();
        $this->partsArray['initial']['actual'] = $this->measureInitial($id)->toArray();
        $this->partsArray['initial']['converted'] = $this->getInitialConvertedMeasure();
        $this->partsArray['current'] = $this->getCurrentMeasure($id);
        $this->partsArray['current']['converted'] = $this->getCurrentConvertedMeasure();
        $this->partsArray['difference'] = $this->percentageChange($this->partsArray['initial'], $this->partsArray['current']['actual']);
        $this->partsArray['actualDiff'] = $this->actualChange($this->partsArray['initial'], $this->partsArray['current']['actual']);
        return $this->partsArray;
    }

    /**
     * Get current measurements for user
     * @param int $id
     * @return mixed
     */
    public function getCurrentMeasure(int $id)
    {
        $array = [];
        try{
            $bodyParts = Measurement::$body_parts;
            foreach ($bodyParts as $v){
                $array['actual'][$v] = Measurement::where([
                        ['part', '=', $v],
                        ['user_id', '=', $id],
                    ])->orderBy('enterDate', 'desc')->pluck('measurement')->first() ?? '0.00';
            }
        }catch (\Throwable $e){
            Log::error($e->getMessage());
        }
        return $array;
    }

    /**
     * @return array
     */
    public function getCurrentConvertedMeasure()
    {
        $a = [];
        try{
            foreach($this->partsArray['current']['actual'] as $k => $v){
                $a[$k] = $this->decToFraction($v);
            }
            return $a;

        }catch (\Throwable $e){
            Log::error($e->getMessage());
        }
    }

    /**
     * @return array
     */
    public function getInitialConvertedMeasure()
    {
        $a = [];
        try{
            foreach($this->partsArray['initial']['actual'] as $k => $v){
                $a[$k] = $this->decToFraction($v);
            }
            return $a;

        }catch (\Throwable $e){
            Log::error($e->getMessage());
        }
    }

    /**
     *
     */
    public function getActualMeasure()
    {
        try{
            foreach($this->partsArray['initial']['actual'] as $k => $v){
                $this->partsArray['initial']['converted'][$k] = $this->decToFraction($v);
            }
        }catch (\Throwable $e){
            Log::error($e->getMessage());
        }
    }

    /**
     * @param $initial
     * @param $current
     * @return array
     */
    public function percentageChange($initial, $current)
    {
        $diffArray = [];

        try{
            $bodyParts = Measurement::$body_parts;
        foreach ($bodyParts as $k => $v){
            $diffArray[$v] = $this->percentDiff($initial['actual'][$v], $current[$v]) ?? '0.00';
        }
        return $diffArray;
        }catch (\Throwable $e){
            Log::error($e->getMessage());
        }

    }

    /**
     * @param $initial
     * @param $current
     * @return array
     */
    public function actualChange($initial, $current)
    {
        try{
            $diffArray = [];
            $bodyParts = Measurement::$body_parts;
            foreach ($bodyParts as $k => $v){
                $diffArray[$v] = $this->actualDiff($initial[$v], $current[$v]) ?? '0.00';
            }
            return $diffArray;
        }catch (\Throwable $e){
            Log::error($e->getMessage());
        }

    }

    /**
     * @param $id
     * @return array
     */
    public function measureInitial($id)
    {
        if($initial = InitialMeasure::where('user_id', $id)->get()){
            if ( count($initial) > 0 ) {
                return $initial[0];
            }
        }
        else {
            $initial = new InitialMeasure();
            $initial->user_id = $id;
            $initial->initialDate = date('Y-m-d');
            $initial->weight = 0;
            $initial->neck = '0.000';
            $initial->shoulder = '0.000';
            $initial->chest = '0.000';
            $initial->waist = '0.000';
            $initial->hips = '0.000';
            $initial->left_wrist = '0.000';
            $initial->right_wrist = '0.000';
            $initial->left_bicep = '0.000';
            $initial->right_bicep = '0.000';
            $initial->left_thigh = '0.000';
            $initial->right_thigh = '0.000';
            $initial->left_calf = '0.000';
            $initial->right_calf = '0.000';
            $initial->save();
            return $initial->toArray();
        }
    }

    /**
     * @return array
     */
    public function measureHeaders()
    {
        $body_parts = [];
        foreach (Measurement::$body_parts as $v){
            $body_parts[$v] = ucwords(str_replace('_', ' ', $v)) ?? '0';
        }
        return $body_parts;
    }

    /**
     * @param Request $request
     */
    public function saveNewMeasurement(Request $request)
    {
        $measurement = new Measurement;
        $measurement->measurement = $request->measurement;
        $measurement->user_id = $request->id;
        $measurement->enterDate = date('Y-m-d');
        $measurement->part = $request->part;
        $measurement->save();
    }

}