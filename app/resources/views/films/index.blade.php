@extends('layouts.film')

@section('title')
    Films
@endsection

@section('content')    

    <h2>All category</h2>
    @foreach ($categories as $category)
        <a href="/films/{{ $category }}" class="btn btn-primary col-md-2 ml-3 mb-2">{{ $category }}</a>
    @endforeach

    @foreach ($films as $film)
        <div class="row no-gutters bg-light position-relative">
            <div class="col-md-4 mb-md-0 p-md-4">
                <img src="{{ Storage::url($film->image) }}" class="mr-3 rounded-lg" width="400" height="600 alt="{{ $film->title }}">
            </div>
            <div class="col-md-6 position-static p-4 pl-md-0">
                <h5 class="mt-0">{{ $film->title }}</h5>
                <p>{{ $film->subtitle }}</p>
                <p><strong>Category:</strong>{{ $film->category }}</p>
                <p>{{ $film->content }}</p>

                <a href="/films/{{ $film->category }}/{{ $film->id }}" class="col-md-3 btn btn-dark">Detail</a>

            </div>

        </div>      
    @endforeach
@endsection