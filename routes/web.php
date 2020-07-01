<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/dashboard', function () {
    return view('admin.dashboard');
});
Route::get('/customer-list',function () {
    return view('admin.customer');
});
Route::get('/salon-list',function () {
    return view('admin.salon');
});
Route::get('/category',function () {
    return view('admin.category');
});
Route::get('/service',function () {
    return view('admin.service');
});
Route::get('/push-notification',function () {
    return view('admin.push_notification');
});
Route::get('/review',function () {
    return view('admin.review');
});