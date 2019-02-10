<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

/**
 * Class User
 * @package App
 */
class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'height', 'weight', 'sex', 'birthDate'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * Convert birthday to age
     * @param $value
     * @return int
     * @throws \Exception
     */
    public function getBirthDateAttribute($value)
    {
        $date = new \DateTime($value);
        $now = new \DateTime();
        $interval = $now->diff($date);
        return $interval->y;
    }


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function events()
    {
        return $this->hasMany('App\Event');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function userWeight()
    {
        return $this->hasMany('App\UserWeight');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function goals()
    {
        return $this->hasMany('App\Goal');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function measurements()
    {
        return $this->hasMany('App\Measurement');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function initialMeasure()
    {
        return $this->hasOne('App\InitialMeasure');
    }

}
