<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
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

// Route::get('/', function () {
//     return view('index');
// });

Route::get('/', [StudentController::class, 'index']);

Route::get('/about', [StudentController::class, 'about']);
Route::get('/contact', [StudentController::class, 'contact']);


Route::get('/add-student', [StudentController::class, 'create']);
Route::post('/add-student', [StudentController::class, 'store']);

Route::get('/edit-student/{id}/edit', [StudentController::class, 'edit']);
Route::put('/edit-student/{id}/edit', [StudentController::class, 'update']);

Route::post('/delete-student/{id}/delete', [StudentController::class, 'destroy']);


Route::get('/addstd', function () {
    return view('projects.addstd');
});




