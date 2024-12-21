<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\BarangController;

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
// Login
Route::get('/login', function () {
    if (Auth::check()) {
        return redirect('/')->with('warning', 'Anda sudah login. Harap logout terlebih dahulu.');
    }
    return view('login');
})->name('login');
Route::post('/login', [UserController::class, 'check_login'])->name('login');

// Logout
Route::get('/logout', [UserController::class, 'logout'])->name('logout');

Route::middleware(['auth', 'no_cache'])->group(function () {
    // Rute-rute yang memerlukan otentikasi di sini
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
    Route::post('/dashboard/store', [DashboardController::class, 'store'])->name('dashboard.store');
    Route::delete('/barangs/{id}', [DashboardController::class, 'destroy'])->name('barangs.destroy');

    // Register
    Route::get('/register', [UserController::class, 'index'])->name('register.index');
    Route::post('/register', [UserController::class, 'store'])->name('register.store');

    // Profile
    Route::get('/profile', [UserController::class, 'profile'])->name('profile.index');

    // User Management
    Route::get('/admin', [UserController::class, 'umanagement'])->name('umanagement.index');
    Route::post('/admin/toggle-user-status', [UserController::class, 'toggleUserStatus'])->name('admin.toggle-user-status');
    Route::delete('/admin/delete-user/{id}', [UserController::class, 'deleteUser'])->name('admin.delete-user');
    Route::get('/admin/edit-user/{id}', [UserController::class, 'editUser'])->name('admin.edit-user');
    Route::post('/admin/update-user', [UserController::class, 'updateUser'])->name('admin.update-user');

    // Reset Password
    Route::post('/reset-password', [UserController::class, 'resetPassword'])->name('user.reset-password');
    Route::get('/reset-password', [UserController::class, 'showResetPasswordForm'])->name('user.show-reset-password-form');

    // Route untuk barang masuk
    Route::get('/barang-masuk', [BarangController::class, 'barangMasuk'])->name('barang-masuk');
    Route::post('/barang-masuk', [BarangController::class, 'storeBarangMasuk'])->name('barang-masuk.store');
    Route::delete('/barang-masuk/{id}', [BarangController::class, 'deleteBarangMasuk'])->name('barang-masuk.delete');

    
    // Routes untuk Barang Keluar
    Route::get('/barang-keluar', [BarangController::class, 'barangKeluar'])->name('barang-keluar');
    Route::post('/barang-keluar', [BarangController::class, 'storeBarangKeluar'])->name('barang-keluar.store');
    Route::delete('/barang-keluar/{id}', [BarangController::class, 'deleteBarangKeluar'])->name('barang-keluar.delete');
});
