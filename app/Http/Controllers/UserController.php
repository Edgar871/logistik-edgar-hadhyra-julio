<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Role;
use App\Imports\UsersImport;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;

class UserController extends Controller
{
    public function index()
    {   
        return view('register');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'username' => 'required|unique:users',
            'password' => 'required|min:8',
            'role' => 'required',
            'status' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator->errors())->withInput();
        }

        User::create([
            'name' => $request->name,
            'username' => $request->username,
            'password' => Hash::make($request->password),
            'role' => $request->role,
            'status' => $request->status,
        ]);

        return redirect('/admin')->with('success', 'Berhasil menambahkan akun baru');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function showLoginForm()
    {
        return view('login');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function check_login(Request $request)
    {
        $request->validate([
            'username' => 'required',
            'password' => 'required',
        ], [
            'username.required' => 'Username harus diisi.',
            'password.required' => 'Password harus diisi.',
        ]);

        $credentials = $request->only('username', 'password');

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            if ($user->status === 'active') {
                return redirect('/')->with('success', 'Login berhasil!');
            } else {
                Auth::logout();
                return redirect('login')->with('failed', 'Akun Anda tidak aktif. Harap hubungi administrator.');
            }
        } else {
            return redirect('login')->with('failed', 'Email atau Password Salah');
        }
    }

    public function logout(Request $request)
    {
        Auth::logout();

        // Menambahkan header untuk mengatur cache agar tidak disimpan
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('login')->with('success', 'Kamu telah logout');;
    }

    public function deleteUser($userId)
    {
        try {
            $user = User::findOrFail($userId);
            $user->delete();
            
            return response()->json(['message' => 'success'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function umanagement()
    {
        $user = Auth::user();

        // Periksa apakah pengguna adalah 'staff' dan 'active'
        if ($user->role === 'Admin') {
            $users = User::paginate(1000000);
            $roles = User::$allowedRoles; 
            return view('umanagement.index', ['users' => $users, 'roles' => $roles]);
        } else {
            return redirect('/')->with('failed', 'Anda tidak memiliki izin untuk mengakses halaman ini');
        }
    }

    public function editUser($id)
    {
        $currentUser = Auth::user();

        if ($currentUser->isAdmin()) {
            $user = User::findOrFail($id);
            
            return view('umanagement.edit', compact('user'));
        } else {
            return redirect('/')->with('failed', 'Anda tidak memiliki izin untuk mengakses halaman ini');
        }
    }

    public function updateUser(Request $request)
    {
        $user = User::findOrFail($request->user_id);

        $user->update([
            'name' => $request->name,
            'username' => $request->username,
            'role' => $request->role,
        ]);

        if ($request->filled('password')) {
            $user->password = Hash::make($request->password);
        }

        $user->save();

        return redirect('/admin')->with('success', 'User updated successfully.');
    }

    public function toggleUserStatus(Request $request)
    {
        try {
            $user = User::findOrFail($request->userId);
            
            // Toggle status pengguna antara 'active' dan 'inactive'
            $user->status = $user->status === 'active' ? 'inactive' : 'active';
            
            // Simpan perubahan status ke dalam database
            $user->save();
            
            return response()->json(['message' => 'success'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function showResetPasswordForm()
    {
        return view('reset-password');
    }

    public function resetPassword(Request $request)
    {
        $user = Auth::user();
        
        // Validasi input password
        $request->validate([
            'password' => 'required|string|min:8|confirmed',
        ]);

        // Update password pengguna
        $user->password = Hash::make($request->password);
        $user->save();

        return redirect('/')->with('success', 'Password berhasil direset.');
    }
    
    public function profile()
    {
        $user = Auth::user();
        return view('profile.index', compact('user'));
    }

    public function uploadSignature(Request $request)
    {
        $user = Auth::user();

        // Validasi file upload
        $request->validate([
            'signature' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // sesuaikan dengan kebutuhan
        ]);

        // Simpan gambar ke storage
        $path = $request->file('signature')->store('public/signatures');

        // Simpan path gambar di kolom signature user
        $user->signature = basename($path);
        $user->save();

        return back()->with('success', 'Tanda tangan berhasil diunggah.');
    }

    public function showImportForm()
    {
        $user = Auth::user();

        if($user->role !== 'Admin'){
            return redirect()->route('dashboard')->with('failed', 'Anda tidak memiliki izin untuk mengakses halaman ini');
        }

        return view('import.import-users');
    }

    public function import(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx',
        ]);

        Excel::import(new UsersImport, $request->file('file'));

        return redirect()->route('umanagement.index')->with('success', 'Data Users berhasil diimport!');
    }
}
