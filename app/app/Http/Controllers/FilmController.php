<?php

namespace App\Http\Controllers;
use App;
use DB;
use Auth;
use Illuminate\Http\Request;

class FilmController extends Controller
{
    public function favorite()
    {
        $favorite_json = Auth::user()->favorite;
        $favorite_arr = json_decode($favorite_json);
        if ($favorite_arr == null) {
            $favorite_arr = [];
        }
        return view('favorite', compact('favorite_arr'));
    }

    public function favorite_delete()
    {
        $delete = $_POST['delete_favorite'];
        $favorite_json = Auth::user()->favorite;
        $favorite_arr = json_decode($favorite_json);
        array_splice($favorite_arr, array_search($delete, $favorite_arr), 1);
        DB::table('users')
            ->where('id', Auth::user()->id)
            ->update(['favorite' => $favorite_arr]);

        return redirect('/favorite');  
    }

    public function show_all()
    {
        $categories = App\Film::distinct('category')->pluck('category');
        $films = App\Film::all();  
        if (isset($_GET['chose_category'])) { 
            $films = App\Film::where('category', $_GET['chose_category'])->get();

        }
        return view('films', compact('films', 'categories'));
    }
    public function detail($id)
    {
        $film = App\Film::find($id);   
        return view('detail', compact('film'));
    }

    public function detail_add($id)
    {
        $favorite_json = Auth::user()->favorite;
        $favorite_arr = json_decode($favorite_json);
        if ($favorite_arr == null) {
            $favorite_arr =[];
        }
        if (!in_array($id, $favorite_arr)) {
            array_push($favorite_arr, $id); 
            DB::table('users')
                ->where('id', Auth::user()->id)
                ->update(['favorite' => $favorite_arr]);
        }
            
    
        return redirect('/films'); 
    }
           
}
