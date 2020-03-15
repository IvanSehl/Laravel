@extends('layouts.film')

@section('title')
    {{ $film->title }}
@endsection

@section('content')
    <div class="row no-gutters bg-light position-relative">
        <div class="col-md-4 mb-md-0 p-md-4">
            <img src="{{ Storage::url($film->image) }}" class="mr-3 rounded-lg" width="400" height="600 alt="{{ $film->title }}">
        </div>
        <div class="col-md-6 position-static p-4 pl-md-0">
            <h5 class="mt-0">{{ $film->title }}</h5>
            <p>{{ $film->subtitle }}</p>
            <p>Category: {{ $film->category }}</p>
            <p>{{ $film->content }}</p>

            @auth

            <form action="" method="post">
                @csrf
                <input type="submit" class="btn-lg btn-dark" value="Add to favorite">
            </form>
      
            @endauth
        </div>
        <div class="col-md-4 mb-md-0 p-md-4">
            {!! $film->trailer_url !!}
        </div>
    </div>
@endsection