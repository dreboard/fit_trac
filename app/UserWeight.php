<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserWeight extends Model
{
    protected $table = 'myweight';

    protected $fillable = [
        'weight','userID','enterDate','measurementID'
    ];

    public $timestamps = false;


    /**
     * @param $value
     * @return string
     * @throws \Exception
     */
    public function getEnterDateAttribute($value)
    {
        $date = new \DateTime($value);
        return $date->format("D M j Y");
    }

    /**
     *
     */
    public function user()
    {
        return $this->belongsTo('App\User', 'userID');
    }
}
