<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/


//matches localhost:8888/lumen/public/
$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/mangas', 'MangaController@getAll');
$router->get('/mangas/{id}', 'MangaController@getOne');
$router->post('/mangas/add', 'MangaController@save');
$router->post('/mangas/edit/{id}', 'MangaController@update');
$router->delete('/mangas/delete/{id}', 'MangaController@delete');













