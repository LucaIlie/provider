<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\PostController;

Route::get('/',[PageController::class,'index']);
Route::resource('posts',PostController::class);
