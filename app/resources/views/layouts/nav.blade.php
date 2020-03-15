<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="btn btn-outline-success col-md-1 mr-1" href="/films">Films</a>
        @auth
        <a class="btn btn-outline-success col-md-1 mr-1" href="/favorites">Favorite</a>     
        @endauth
        
        

        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        </ul>

        @guest
        <a class="btn btn-outline-success col-md-1 mr-1" href="{{ route('login') }}">{{ __('Login') }}</a>

        <a class="btn btn-outline-success col-md-1 mr-1" href="{{ route('register') }}">{{ __('Register') }}</a>

        @else
        <a class="btn btn-outline-success col-md-1 mr-1" href="/profile">Profile</a>
        

        <a class="btn btn-outline-success col-md-1 mr-1" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
            {{ __('Logout') }}
        </a>

        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
            @csrf
        </form>
    </div>
    </li>
    @endguest

    </div>

</nav>