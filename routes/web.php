<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\StudentController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');


});

require __DIR__.'/auth.php';



Route::get('/about', [StudentController::class, 'about']);
Route::get('/contact', [StudentController::class, 'contact']);

Route::get('/std-list', [StudentController::class, 'index']);

Route::get('/add-student', [StudentController::class, 'create']);
Route::post('/add-student', [StudentController::class, 'store']);

Route::get('/edit-student/{id}/edit', [StudentController::class, 'edit']);
Route::put('/edit-student/{id}/edit', [StudentController::class, 'update']);

Route::post('/delete-student/{id}/delete', [StudentController::class, 'destroy']);

Route::get('/single-student/{id}', [StudentController::class, 'show']);


Route::get('/addstd', function () {
    return view('projects.addstd');
});


Route::get('/not-found', function () {
    return view('not_found');
})->name('not_found');

