<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/weight', 'Api\WeightDataController@getWeight')->name('getWeight');

Route::post('/getWeightHistory', 'Api\WeightDataController@getWeightHistory')->name('getWeightHistory');
Route::post('/newWeightEntry', 'Api\WeightDataController@newWeightEntry')->name('newWeightEntry');
Route::post('/newWeightGoalEntry', 'Api\WeightDataController@newWeightGoalEntry')->name('newWeightGoalEntry');
