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

Route::get('/', function () {
    return view('welcome');
});

//Route::any('api/send-contact', ['as' => 'contact', 'uses'=>'ContactController@contact']);
//Route::any('agendar-cita', ['as' => 'add-date', 'uses'=>'ContactController@addDate']);

Route::get('api/prensa', ['as' => 'press', 'uses'=>'PressController@index']);
Route::get('api/blog', ['as' => 'press', 'uses'=>'BlogController@index']);
Route::get('api/blog/{id}', ['as' => 'press', 'uses'=>'BlogController@show']);
Route::get('api/blog/{id}', ['as' => 'press', 'uses'=>'BlogController@show']);
Route::get('encuesta/{slug}/{hash}', ['as' => 'suverymonkey', 'uses'=>'SuverymonkeyController']);
Route::get('meeting/{slug}/{hash}', ['as' => 'zoom', 'uses'=>'ZoomController']);
Route::get('exclusivo/{slug}/{hash}', ['as' => 'exclusivo', 'uses'=>'ExclusiveController']);



Route::get('calendario/events', 'EventController@index');

Route::get('conferencias',['as' => 'zoom', 'uses'=>'ZoomController']);
Route::get('challenger-1', 'GoogleonController@index');