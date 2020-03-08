@extends('layouts.film')

@section('content')
    <div class="container-md">
        <h1>Profile info</h1>
        <form method="post" action="/profile/update">
        @csrf
            <div class="form-group col-md-4">
                <label for="name">Name</label>
                <input type="text" name="name" class="form-control" value="{{ Auth::user()->name }}">
            </div>
            <div class="form-group col-md-4">
                <label for="email">Email</label>
                <input type="email" name="email" class="form-control" value="{{ Auth::user()->email }}" >
            </div>
            <div class="form-group col-md-4">
                <label for="phone">Phone</label>
                <input type="text" name="phone" class="form-control" value="{{ Auth::user()->phone }}">
            </div>
            <div class="form-group col-md-4">
                <label for="d_o_b">Date of birth</label>
                <input type="date" name="d_o_b" class="form-control" value="{{ Auth::user()->d_o_b }}">
            </div>
            <div class="form-group col-md-4">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" name="password" class="form-control">
            </div>
            <button type="submit" name="update_info" class="btn btn-primary">Update profile</button>

        </form>
    </div> 
@endsection

