<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>

<body>
    @include('layouts.nav')
    @auth 

    <h2>Personal info</h2>
    <form action="" method="post">
        @csrf
        <div class="form-group col-md-4">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" class="form-control" value="{{ $user->name }}">

            @error('name')
            <strong>{{ $message }}</strong>
            @enderror
        </div>

        <div class="form-group col-md-4">
            <label for="email">Email address</label>
            <input type="email" name="email" id="email" class="form-control" value="{{ $user->email }}">

            @error('email')
            <strong>{{ $message }}</strong>
            @enderror
        </div>
        <div class="form-group col-md-4">
            <label for="phone">Phone</label>
            <input type="text" name="phone" id="phone" class="form-control" value="{{ $user->phone }}">

            @error('Phone')
            <strong>{{ $message }}</strong>
            @enderror
        </div>
        <div class="form-group col-md-4">
            <label for="d_o_b">Date of birth</label>
            <input type="date" name="d_o_b" id="d_o_b" class="form-control" value="{{ $user->d_o_b }}">

            @error('d_o_b')
            <strong>{{ $message }}</strong>
            @enderror
        </div>
        <div class="form-group col-md-4">
            <label for="password">Password</label>
            <input type="password" name="password" id="email" class="form-control" value="{{ old('password') }}">

            @error('password')
            <strong>{{ $message }}</strong>
            @enderror
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-dark col-md-2 ml-3" value="Update">
        </div>
    </form>
    @else
        <h2>Please login to view your profile.</h2>
    @endauth
</body>

</html>