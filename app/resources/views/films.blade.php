@extends('layouts.film')

@section('content')
<h2>Category</h2>

@foreach ($categories as $elem)
<form action="" method="GET">
    <input type="hidden" name="chose_category" value="{{$elem}}">
    <input type="submit" class="btn btn-outline-primary col-2" value="{{$elem}}">
</form>
@endforeach

<div class="container-lg container-fluid ">
    <h1>All films</h1>
    @foreach ($films as $film)
    <div class="card" style="width: 28rem;">
        <img src="{{Storage::url($film->img_url)}}" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">{{$film->title}}</h5>
            <h6 class="card-subtitle mb-2 text-muted">{{$film->subtitle}}</h6>
            <p class="card-text">{{$film->content}}</p>
            <a href="films/{{$film->id}}" class="btn btn-primary">Detail</a>
        </div>
    </div>
    @endforeach

</div>
@endsection