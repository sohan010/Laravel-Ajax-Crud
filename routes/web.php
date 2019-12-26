<?php

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

Route::get('get/customer/data', 'CustomerController@getdata');
Route::get('/', 'CustomerController@home');
Route::post('add/customer/data', 'CustomerController@add');
Route::post('update/customer/data', 'CustomerController@update');

Route::get('view/customer/data', 'CustomerController@viewdata');
Route::get('edit/customer/data', 'CustomerController@editurl');
Route::get('delete/customer/data', 'CustomerController@deletedata');
Route::get('get/customer/data/by/pagination', 'CustomerController@getpagination');
