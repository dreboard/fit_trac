<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="dev-php">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="api-base-url" content="{{ getenv('APP_URL') }}" />

    <script async>
        var ENVIRONMENT = "{{ App::environment() }}";
        var BASE_URL = "{{ getenv('APP_URL') }}";
        var USER_ID = "{{Auth::user()->id}}";
    </script>
    <title>{{ config('app.name', 'Laravel') }}</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href='https://use.fontawesome.com/releases/v5.0.6/css/all.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <!-- Custom styles for this template-->
    <link href={{asset("css/app.css")}} rel="stylesheet">
    {{--<link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">--}}

@stack('css')

<!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-72571847-2"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        @if('local' === getenv('APP_ENV'))
        gtag('config', 'UA-72571847-2');
        @else
        gtag('config', 'UA-72571847-1');
        @endif

    </script>
</head>



<body class="admin" id="page-top">

@include('layouts.partials.admin_nav')

<div id="wrapper">

    <!-- Sidebar -->
    @include('layouts.partials.admin_sidebar')

    <div id="content-wrapper">

        <div class="container-fluid" id="app">

            @yield('content')

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright © Your Website 2018</span>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->

<script src={{asset("js/app.js")}}></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src={{asset("js/admin.js")}}></script>
@stack('scripts')
</body>

</html>
