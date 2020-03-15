<?php

namespace App\Http\Controllers;

use App\Catecory;
use Illuminate\Http\Request;
use App\Film;
use App\User;
use App\Favorite;
use Illuminate\Support\Facades\Auth;

class FilmController extends Controller
{
    protected function category()
    {
        // all categories(unique)
        $categories = Film::distinct('category')->pluck('category');

        return $categories;
    }

    public function index()
    {
        $films = Film::all();
        $categories = $this->category();
           
        return view('films.index', compact('films', 'categories'));
    }

    public function show($category, $film_id)
    {        
        $film = Film::find($film_id);

        return view('films.show', compact('film'));
    }

    public function show_by_category($category)
    {
        $categories = $this->category();
        $films = Film::where('category', $category)->get();
               
        return view('films.index', compact('films', 'categories'));
    }

    public function store($category, $film_id)
    {
        Favorite::firstOrCreate([
            'user_id' => Auth::id(),
            'film_id' => $film_id
        ]);
        
        return redirect('films');
    }
}
