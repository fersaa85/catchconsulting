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
Route::any('send-contact', ['as' => 'contact', 'uses'=>'ContactController@contact']);
Route::any('agendar-cita', ['as' => 'add-date', 'uses'=>'ContactController@addDate']);
Route::get('eventos', ['as' => 'events', 'uses'=>'EventController@events']);
Route::get('citas', ['as' => 'events', 'uses'=>'EventController@quotes']);


/*
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
*/
