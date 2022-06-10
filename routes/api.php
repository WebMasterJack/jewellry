<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
    Route::post('/register', 'App\Http\Controllers\UserController@registration');
    Route::post('/login', 'App\Http\Controllers\UserController@login');
    Route::get('/products', 'App\Http\Controllers\ProductsController@all');
    Route::get('/products/{category_id}', 'App\Http\Controllers\ProductsController@byID');
   
   

