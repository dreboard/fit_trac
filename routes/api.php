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

Route::post('weight', 'Api\WeightDataController@getWeight')->name('getWeight');


Route::post('getWeightHistory', 'Api\WeightDataController@getWeightHistory')->name('getWeightHistory');
Route::post('newWeightEntry', 'Api\WeightDataController@newWeightEntry')->name('newWeightEntry');
Route::post('newWeightGoalEntry', 'Api\WeightDataController@newWeightGoalEntry')->name('newWeightGoalEntry');

Route::get('apiTest', 'Api\MeasureDataController@test');


Route::post('updatePart', 'Api\MeasureDataController@updatePart')->name('updatePart');
Route::post('getParts', 'Api\MeasureDataController@getParts')->name('getParts');

Route::get('loadExercises', 'Api\ExerciseDataController@loadExercises')->name('loadExercises');
Route::post('getExercises', 'Api\ExerciseDataController@getExercises')->name('getExercises');


Route::fallback(function(){
    return response()->json(['message' => 'Not Found.'], 404);
})->name('api.fallback.404');


/*Route::group(['prefix'=>'api'], function(){
    Route::post('/booking/request', 'BookingController@sendMail');
});

Route::prefix('api')->group(function () {

});
*/