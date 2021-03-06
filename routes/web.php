<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'FrontController@index');

Auth::routes();


Route::group(['middleware' => ['web']], function () {
    //
});

Route::get('/home', 'HomeController@index')->name('home');
Route::get('profile', 'HomeController@profile')->name('profile');


Route::get('events', 'Api\DataController@getCalEvents')->name('calEvents');
Route::get('weight-page', 'Api\WeightDataController@getWeightPage')->name('getWeightPage');

Route::get('/measurements', 'MeasureController@measurements')->name('measurements');

Route::post('getWeightHistory', 'Api\WeightDataController@getWeightHistory');

Route::get('/exercises', 'ExerciseController@index')->name('exercises');

Route::get('/programs', 'ProgramController@index')->name('programs');

// end