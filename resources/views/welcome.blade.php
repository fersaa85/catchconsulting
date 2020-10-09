<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="_token" content="{{ csrf_token() }}" >
    <title>Catch Consulting</title>

    <meta property="og:title" content="Catch Consulting" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="https://catchconsulting.com.mx" />
    <meta property="og:image" content="https://catchconsulting.com.mx/images/home/home_logo.png" />
    <meta property="og:description" content="Analizamos, entendemos y mejoramos tu negocio. Ofrecemos soluciones para mejorar las condiciones de trabajo y <br />
                                             desarrollo al máximo a tu Capital Humano." />
    <link rel="shortcut icon" type="image/x-icon" href="https://catchconsulting.com.mx/images/7861Catch_Consulting_CC.ico">
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}?v=1" rel="stylesheet">
</head>
<body id="body">
<div id="app">

    <nav-component></nav-component>
    <router-view></router-view>
    <footer-component @hiddenData=""></footer-component>

</div>
<!-- Scripts -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-149852582-1">
</script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-149852582-1');
</script>
<script src="{{ asset('js/app.js') }}?v=1"></script>
</body>
</html>