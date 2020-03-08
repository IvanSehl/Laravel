@extends('layouts.film')

@section('content')
    <div class="container-lg container-fluid">
        <div class="card" style="width: 28rem;">
            <img src="{{Storage::url($film->img_url)}}" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">{{$film->title}}</h5>
                <h6 class="card-subtitle mb-2 text-muted">{{$film->subtitle}}</h6>
                <p class="card-text">{{$film->content}}</p>

                <form method="post" action="/films/{{$film->id}}/add">
                @csrf
                    <input type="hidden" name="add_favorite" value="{{$film->id}}">
                    <input type="submit" class="btn btn-outline-primary" value="Add to favorites">
                </form>

                @youtube($film->triler_url, ['width'=>720, 'height'=>460,])
               
            </div>
        </div>
    </div>
@endsection

