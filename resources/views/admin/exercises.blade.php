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
    <exercises
            user_id="{{$id}}"
            exercises_url="{{route('loadExercises')}}"
            get_exercises_url="{{route('getExercises')}}"
    ></exercises>

@endsection
@push('scripts')

    <script>
        $(document).ready(function() {
            $('#calendar3').fullCalendar({
                themeSystem: 'bootstrap4',
                height: "parent",
                defaultView: 'agendaDay',
                minTime: "07:00:00",
                maxTime: "21:00:00",
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'agendaWeek,agendaDay,listMonth'
                },
                weekNumbers: true,
                eventLimit: true, // allow "more" link when too many events
                events: 'https://fullcalendar.io/demo-events.json'
            });

            // page is now ready, initialize the calendar...
            $('#calendar').fullCalendar({
                themeSystem: 'bootstrap4',
                defaultView: 'agendaWeek',
                minTime: "07:00:00",
                maxTime: "21:00:00",
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay,listMonth'
                },
                weekNumbers: true,
                eventLimit: true, // allow "more" link when too many events
                events: 'https://fullcalendar.io/demo-events.json'
            });
        });
    </script>
@endpush