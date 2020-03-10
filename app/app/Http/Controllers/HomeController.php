<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function profile()
    {   
        return view('profile');
    }

    public function update_prof(Request $request) 
    {
        $request->validate([
            'phone' => 'required|min:8|numeric',
            'name' => 'required|min:3|max:16',
            'email' => 'required|max:255|email',
            'd_o_b' => 'required|max:255',
            'password' => 'required|min:4',
        ]);

        DB::table('users')
                    ->where('id', Auth::user()->id)
                    ->update([
                        'phone' => $request['phone'],
                        'name' => $request['name'],
                        'email' => $request['email'],
                        'd_o_b' => $request['d_o_b'],
                        'password' => Hash::make($request['password']),
                    ]);

        return redirect('/profile'); 

    }
    

    
}

