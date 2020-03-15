<?php

namespace App\Http\Controllers;

use App\Favorite;
use App\User;
use App\Film;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{
    public function index()
    {   
        if (Auth::id()) {
            // $favorites it is array whose contain favorite film_id //[2, 5]
            $favorites = User::find(Auth::id())->favorite->pluck('film_id');
            $films = Film::find($favorites);
        } else {
            return view('favorites.index');
        }                  

        return view('favorites.index', compact('films'));
    }

    public function destroy(Request $filml_id)
    {
        Favorite::where('user_id', Auth::id())->
                where('film_id', $filml_id->film_id)->
                delete();
        
        return redirect()->back();
    }
}
