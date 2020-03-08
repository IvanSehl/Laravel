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
    public function update_profile() {
            DB::table('users')
                    ->where('id', Auth::user()->id)
                    ->update(['phone' => $_POST['phone'],
                            'name' => $_POST['name'],
                            'email' => $_POST['email'],
                            'd_o_b' => $_POST['d_o_b'],
                            'password' => Hash::make($_POST['password'])]
                        ); 

        return redirect('/profile');                  
    }

    
}

