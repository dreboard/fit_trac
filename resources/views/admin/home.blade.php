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

        <div class="col-3 dayCal">
            <div id="calendar3"></div>
        </div>

        <div class="col-9">
            <h1>Main Dash</h1>
            <front-fitness-calendar user_id="{{Auth::user()->id}}" events_url="{{route('calEvents')}}"></front-fitness-calendar>
        </div>
    </div>
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