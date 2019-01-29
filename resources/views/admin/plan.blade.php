@extends('layouts.admin.master')

@push('css')

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
            <h1>Profile</h1>

        </div>
    </div>
@endsection
@push('scripts')
    <script>
        $(document).ready(function() {
            // page is now ready, initialize the calendar...

        });
    </script>
@endpush