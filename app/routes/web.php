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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/profile', 'HomeController@profile');
Route::post('/profile/update', 'HomeController@update_profile');

Route::get('/films', 'FilmController@show_all');
Route::get('/', 'FilmController@show_all');

Route::get('/favorite', 'FilmController@favorite');
Route::post('/favorite/delete', 'FilmController@favorite_delete');

Route::get('/films/{id}', 'FilmController@detail');
Route::post('/films/{id}/add', 'FilmController@detail_add');




