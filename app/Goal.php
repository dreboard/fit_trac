<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Goal extends Model
{

    public $timestamps = false;

    public $incrementing = false;

    public $fillable = ['goalName', 'weight', 'goalDate', 'user_id'];

    public function getGoalDateAttribute($value)
    {
        $date = new \DateTime($value);
        return $date->format("D M j Y");
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
