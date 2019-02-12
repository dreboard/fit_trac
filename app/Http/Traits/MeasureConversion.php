<?php
/**
 * @since       v0.1.0
 * @package     Dev-PHP
 * @author      Andre Board <dre.board@gmail.com>
 * @version     v1.0
 * @access      public
 * @see         https://github.com/dreboard
 */

namespace App\Http\Traits;


/**
 * Trait MeasureConversion
 * @package App\Http\Traits
 */
trait MeasureConversion
{

    /**
     * Percent difference of 2 integers
     * @param int $original
     * @param int $current
     * @return string
     */
    public function percentDiff(int $original, int $current):string
    {
        if($original == 0 || $current == 0){
            return '0%';
        }
        $diff = $current - $original;
        $more_less = $diff > 0 ? "Gain" : "Loss";
        $diff = abs($diff);
        $percentChange = round(($diff/$original)*100, 2);
        return "$percentChange% $more_less";
    }
    
    public function actualDiff($initial, $current):string
    {
        if($initial == 0 || $current == 0){
            return '0%';
        }
        if($initial > $current){
            $diff = $this->decToFraction($initial - $current);

        } else {
            $diff = $this->decToFraction($current - $initial);
        }
        return $diff;
    }
    /**
     * @param $float
     * @return float|int|string
     */
    public function decToFraction(string $float):string {
        if($float === '0.00' || !$float || empty($float)){
            return '0.00';
        }
        // 1/2, 1/4, 1/8, 1/16, 1/3 ,2/3, 3/4, 3/8, 5/8, 7/8, 3/16, 5/16, 7/16,
        // 9/16, 11/16, 13/16, 15/16
        $whole = floor ( $float );
        $decimal = $float - $whole;
        $leastCommonDenom = 48; // 16 * 3;
        $denominators = array (2, 3, 4, 8, 16, 24, 48 );
        $roundedDecimal = round ( $decimal * $leastCommonDenom ) / $leastCommonDenom;
        if ($roundedDecimal == 0)
            return $whole;
        if ($roundedDecimal == 1)
            return $whole + 1;
        foreach ( $denominators as $d ) {
            if ($roundedDecimal * $d == floor ( $roundedDecimal * $d )) {
                $denom = $d;
                break;
            }
        }
        return ($whole == 0 ? '' : $whole) . " " . ($roundedDecimal * $denom) . "/" . $denom;
    }
    public function decimalToFraction($decimal)
    {
        if ($decimal < 0 || !is_numeric($decimal)) {
            // Negative digits need to be passed in as positive numbers
            // and prefixed as negative once the response is imploded.
            return false;
        }
        if ($decimal == 0) {
            return [0, 0];
        }

        $tolerance = 1.e-4;

        $numerator = 1;
        $h2 = 0;
        $denominator = 0;
        $k2 = 1;
        $b = 1 / $decimal;
        do {
            $b = 1 / $b;
            $a = floor($b);
            $aux = $numerator;
            $numerator = $a * $numerator + $h2;
            $h2 = $aux;
            $aux = $denominator;
            $denominator = $a * $denominator + $k2;
            $k2 = $aux;
            $b = $b - $a;
        } while (abs($decimal - $numerator / $denominator) > $decimal * $tolerance);

        return [
            $numerator,
            $denominator
        ];
    }
    /**
     * @param $inches
     * @return string
     */
    public function convertInchesToFeet($inches){
        $feet = floor($inches/12);
        $inches = ($inches%12);
        return $feet."'".$inches."''";
    }


    /**
     * @param $decimal
     * @return string
     */
    public function decimal_to_time($decimal) {
        $hours = floor($decimal);
        $mins = round(($decimal - $hours) * 60);
        return str_pad($hours, 2, "0", STR_PAD_LEFT) . ":" . str_pad($mins, 2, "0", STR_PAD_LEFT) . ":00:";
    }

    /*
    $num_hours = 5.8641; //some float
    $hours = floor($num_hours);
    $mins = round(($num_hours - $hours) * 60);
    echo $hours." Hours and ".$mins." minutes";
    */

    /**
     * @param $number
     * @return string
     */
    public function getOrdinalSuffix($number) {
        $number = abs($number);
        $lastChar = substr($number, -1, 1);
        switch ($lastChar) {
            case '1' : return ($number == '11') ? 'th' : 'st';
            case '2' : return ($number == '12') ? 'th' : 'nd';
            case '3' : return ($number == '13') ? 'th' : 'rd';
        }
        return 'th';
    }

//////////////////////////////////////////////////////////////////////////////

    /**
     * TIME ADDITION
     * @param $time1
     * @param $time2
     * @return string
     */
    public function sum_the_time($time1, $time2) {
        $times = array($time1, $time2);
        $seconds = 0;
        foreach ($times as $time)
        {
            list($hour,$minute,$second) = explode(':', $time);
            $seconds += $hour*3600;
            $seconds += $minute*60;
            $seconds += $second;
        }
        $hours = floor($seconds/3600);
        $seconds -= $hours*3600;
        $minutes  = floor($seconds/60);
        $seconds -= $minutes*60;
        // return "{$hours}:{$minutes}:{$seconds}";
        return sprintf('%02d:%02d:%02d', $hours, $minutes, $seconds);
    }

    /**
     * @param $small
     * @param $large
     * @return string
     */
    public function percent($small, $large){
        if($small == 0){
            $returnPercent = '0';
        } else {
            $percentCalc = ((100*$small)/$large);
            $returnPercent = number_format($percentCalc, 1);
        }
        return $returnPercent;
    }



    /**
     * @param $percentage
     * @param $totalNum
     * @return string
     */
    public function percentOfNum($percentage, $totalNum) {
        $newPercent = ($percentage / 100) * $totalNum;
        return number_format($newPercent, 0);
    }

    /**
     * @param $number
     * @return float|int
     */
    public function ceilFive($number) {
        $div = floor($number / 5);
        $mod = $number % 5;

        If ($mod > 0) $add = 5;
        Else $add = 0;

        return $div * 5 + $add;
    }
//////////////////////////////money Formats

    /**
     * @param $number
     * @param bool $fractional
     * @return string|string[]|null
     */
    public function formatMoney($number, $fractional=false) {
        if ($fractional) {
            $number = sprintf('%.2f', $number);
        }
        while (true) {
            $replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
            if ($replaced != $number) {
                $number = $replaced;
            } else {
                break;
            }
        }
        return $number;
    }
}