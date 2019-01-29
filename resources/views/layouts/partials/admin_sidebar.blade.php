<ul class="sidebar navbar-nav">
    <li class="nav-item">
        <a class="nav-link" href="{{route('home')}}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{route('home')}}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Today</span>
        </a>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
            <span>Body</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Stats:</h6>
            <a class="dropdown-item" href="{{ route('getWeightPage') }}">Weight</a>
            <a class="dropdown-item" href="{{ route('profile') }}">Nutrition</a>
            <a class="dropdown-item" href="{{ route('profile') }}">Photos</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">Calculators:</h6>
            <a class="dropdown-item" href="{{ route('profile') }}">Bodyfat</a>
            <a class="dropdown-item active" href="{{ route('profile') }}">Blankage</a>
        </div>
    </li>


    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
            <span>Workouts</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Muscle:</h6>
            <a class="dropdown-item" href="{{ route('profile') }}">Conditioning</a>
            <a class="dropdown-item" href="{{ route('profile') }}">Powerlifting</a>
            <a class="dropdown-item" href="{{ route('profile') }}">Bodybuilding</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">Cardio:</h6>
            <a class="dropdown-item" href="{{ route('profile') }}">Equipment</a>
            <a class="dropdown-item" href="{{ route('profile') }}">Classes</a>
        </div>
    </li>



    <li class="nav-item">
        <a class="nav-link" href="{{ route('profile') }}">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Charts</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('profile') }}">
            <i class="fas fa-fw fa-table"></i>
            <span>Progress</span></a>
    </li>
</ul>