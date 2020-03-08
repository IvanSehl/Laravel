@extends('layouts.film')

@section('content')
    @foreach ($favorite_arr as $film_id)
    <div class="container-lg container-fluid">
        <div class="card" style="width: 28rem;">
            <img src="{{Storage::url(App\Film::find($film_id)->img_url)}}" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">{{App\Film::find($film_id)->title}}</h5>
                <h6 class="card-subtitle mb-2 text-muted">{{App\Film::find($film_id)->subtitle}}</h6>
                <p class="card-text">{{App\Film::find($film_id)->content}}</p>

                <form method="post" action="/favorite/delete">
                @csrf
                    <input type="hidden" name="delete_favorite" value="{{App\Film::find($film_id)->id}}">
                    <input type="submit" class="btn btn-outline-primary" value="Delete from favorites">
                </form>
                @youtube(App\Film::find($film_id)->triler_url, ['width'=>720, 'height'=>460,])
            
            </div>
        </div>
    </div>
    @endforeach
@endsection