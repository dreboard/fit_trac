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
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class MeasureService
{
    use MeasureConversion;


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

    public function measureData($id)
    {
        $partsArray = [];


        $partsArray['headers'] = $this->measureHeaders();

        //$partsCurrent = Measurement::find('user_id',$id);
        $partsCurrent = DB::table('measurements')->where('user_id', '=', $id)->get();


        //$initial = InitialMeasure::where('user_id', $id)->get(); //
        //$partsArray['initial'] = $initial[0];


        $partsArray['initial'] = $this->measureInitial($id);
        $partsArray['current'] = $this->getCurrentMeasure($id);
        $partsArray['difference'] = $this->measureDiff($partsArray['initial'], $partsArray['current']);
        return $partsArray;
    }

    /**
     * Get current measurements for user
     * @param int $id
     * @return mixed
     */
    public function getCurrentMeasure(int $id)
    {
        $bodyParts = Measurement::$body_parts;
        foreach ($bodyParts as $v){
            $array[$v] = Measurement::where([
                    ['part', '=', $v],
                    ['user_id', '=', $id],
                ])->pluck('measurement')->first() ?? '0.00';
        }
        return $array;
    }

    public function measureDiff($initial, $current)
    {
//        return [];
//        $diff = $this->percentDiff($original, $current);
        $diffArray = [];
        $bodyParts = Measurement::$body_parts;
        foreach ($bodyParts as $k => $v){
            $diffArray[$v] = $this->percentDiff($initial[$v], $current[$v]) ?? '0.00';
        }
        return $diffArray;
    }

    public function measureInitial($id)
    {
        $initial = InitialMeasure::where('user_id', $id)->get();
        if ( count($initial) > 0 ) {
            return $initial[0];
        }else {
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
            return $initial;
        }
    }

    public function measureHeaders()
    {
        $body_parts = [];
        foreach (Measurement::$body_parts as $v){
            $body_parts[$v] = ucwords(str_replace('_', ' ', $v)) ?? '0';
        }
        return $body_parts;
    }

}