<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Http\Traits\MeasureConversion;

class Measurement extends Model
{
    use MeasureConversion;

    protected $table = 'measurements';

    public $fillable = ['user_id', 'measurement', 'enterDate', 'part'];

    public static $body_parts = ['neck','shoulder','chest','waist','hips','left_wrist','right_wrist','left_bicep','right_bicep','left_thigh','right_thigh','left_calf','right_calf'];

    public $timestamps = false;

    public function user()
    {
        return $this->hasOne('App\User');
    }


}
