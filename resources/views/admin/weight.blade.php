@extends('layouts.admin.master')

@push('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.print.css" media="print">
@endpush

@section('content')
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item active">
            <a href="{{route('home')}}">Home</a>
        </li>
    </ol>
    <div class="row">

        <div class="col-12">
            <h1>My Weight</h1>
            <weight-stats
                    user_id="{{Auth::user()->id}}"
                    weight_plan="{{$user->plan}}"
                    weights="{{$user->userWeight}}"
                    events_url="{{route('getWeight')}}"
                    new_weight_url="{{route('newWeightEntry')}}"
                    new_weight_goal_url="{{route('newWeightGoalEntry')}}"
                    history_url="{{route('getWeightHistory')}}"
            ></weight-stats>
        </div>
    </div>
@endsection
@push('scripts')
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

@endpush