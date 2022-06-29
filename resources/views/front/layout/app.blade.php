<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="">
    <title>RUBERFOMIK</title>

    <link rel="icon" type="image/png" href="uploads/favicon.png">

    @include('front.layout.styles')
    @include('front.layout.scripts')



    <link href="https://fonts.googleapis.com/css2?family=Maven+Pro:wght@400;500;600;700&display=swap" rel="stylesheet">

    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-6212352ed76fda0a"></script>

</head>

<body>

    @include('front.layout.nav')


    @yield('main_content')


    <div class="copyright">
        Created with &#10084; Our Capstone
    </div>

    <div class="scroll-top">
        <i class="fas fa-angle-up"></i>
    </div>

    @include('front.layout.footer')

</body>

</html>
