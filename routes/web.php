<?php

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


Route::get('/home', function () {
    return view('login');
});

// Route::post('/login','DetectDevice@getDeviceType');


// =================  Redirect ==============
Route::get('/advt','DetectDevice@advt');
Route::get('/from/{id}','DetectDevice@from');
// =================  /Redirect ==============

Route::get('/login', 'UserLoginController@redirectToProvider');

//Route::get('/home2', 'UserLoginController@handleProviderCallback');


Route::get('/register',function(){
    return view('register');
});





Route::get('/', function () {
    return view('login');});

Route::post('home', 'login@auth')->name('home');
Route::post('search', 'login@search');

Route::get('service/{client_id}/{product_id}', 'serviceController@store');
Route::get('cart', 'serviceController@cart');

Route::get('device','serviceController@getdevice');



Route::post('/register', 'UserLoginController@register');
Route::post('/login', 'UserLoginController@login');

Route::get('/logout','UserLoginController@logout');

Route::get('qr-code', function () {
    return QrCode::size(500)->generate('http://codebuddies.com');
});

Route::get('/addressbook','serviceController@datagenerate');
//s Route::get('/logout', 'UserLoginController@handleProviderCallback');




// Route::post('home', 'login@auth')->name('home');
// Route::post('search', 'login@search');


