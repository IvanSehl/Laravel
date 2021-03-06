<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', 'Filmcontroller@index');

Auth::routes();

Route::get('/films', 'Filmcontroller@index');
Route::get('/films/{category}', 'Filmcontroller@show_by_category');

Route::get('/films/{category}/{film_id}', 'Filmcontroller@show');
Route::post('/films/{category}/{film_id}', 'Filmcontroller@store');

Route::get('/profile', 'UserController@index');
Route::post('/profile', 'UserController@store');

Route::get('/favorites', 'FavoriteController@index');
Route::post('/favorites', 'FavoriteController@destroy');

