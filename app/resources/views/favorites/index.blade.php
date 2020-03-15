@extends('layouts.film')

@section('title')
    Favorite films
@endsection

@section('content')

    @auth
        @forelse ($films as $film)
        <div class="row no-gutters bg-light position-relative">
            <div class="col-md-4 mb-md-0 p-md-4">
                <img src="{{ Storage::url($film->image) }}" class="mr-3 rounded-lg" width="400" height="600 alt="{{ $film->title }}">
            </div>
            <div class="col-md-6 position-static p-4 pl-md-0">
                <h5 class="mt-0">{{ $film->title }}</h5>
                <p>{{ $film->subtitle }}</p>
                <p><strong>Category:</strong>{{ $film->category }}</p>
                <p>{{ $film->content }}</p>

                <form action="" method="post">
                    @csrf
                    <input type="hidden" name="film_id" id="" value="{{ $film->id }}">
                    <input type="submit" class="btn-lg btn-dark ml-3" value="Delete from favorite">
                </form>
            </div>
        </div> 

        @empty
            <h2>You haven't added any movies to your favorites!</h2>
        @endforelse
    @else
        <h2>Please login to view your favorite films.</h2>
    @endauth

@endsection