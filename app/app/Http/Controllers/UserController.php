<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $user = User::find(Auth::id());   
             
        return view('profile.index', compact('user'));
    }

    public function store(Request $data)
    {     
        $data->validate([
            'name' => 'required|min:3|string',
            'email' => 'required|email',
            'phone' => 'required|min:8|numeric',
            'd_o_b' => 'required|date',
            'password' => 'required|min:4|string',
        ]);

        User::where('id', Auth::id())->update([ 
            'name' => $data['name'],          
            'email' => $data['email'],
            'phone' => $data['phone'],
            'd_o_b' => $data['d_o_b'],
            'password' => Hash::make($data['password']),
        ]);

        return redirect()->back();
    }
}
