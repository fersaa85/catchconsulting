<?php

use Illuminate\Routing\Router;


    Admin::registerAuthRoutes();

    Route::group([
        'prefix'        => config('admin.route.prefix'),
        'namespace'     => config('admin.route.namespace'),
        'middleware'    => config('admin.route.middleware'),
    ], function (Router $router) {

        $router->get('/', 'HomeController@fullcallender');
        $router->resource('blog', BlogController::class);
        $router->resource('press', PresController::class);
        $router->resource('history', ContactController::class);
        $router->resource('events', EventController::class);
        $router->resource('suverymonkey', SuverymonkeyController::class);
        $router->resource('zoom', ZoomController::class);
        $router->resource('exclusive', ExclusiveController::class);
        $router->resource('pdfs', PdfController::class);
        $router->get('quotes', 'EventController@quotes');
        $router->get('quotes-detail/{id}', 'EventController@quotesDetail')->name('quotes-detail');
        $router->get('delete-quotes/{id}', 'EventController@quotesDelete')->name('delete-quotes');

    });


