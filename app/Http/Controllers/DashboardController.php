<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use Illuminate\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class DashboardController extends Controller
{
    public function index(Request $request)
    {
        $currentTime = Carbon::now();
        $barangs = Barang::all();

        // Kirim waktu saat ini, total overtime, dan total undertime ke view dashboard
        return view('dashboard', compact('barangs'));
    }

    public function store(Request $request)
    {
        // Validasi data input
        $validated = $request->validate([
            'kode_barang' => 'required|string|unique:barangs,kode_barang|max:255',
            'nama_barang' => 'required|string|max:255',
        ]);

        // Simpan data ke database
        Barang::create($validated);

        // Redirect kembali ke dashboard dengan pesan sukses
        return redirect()->route('dashboard')->with('success', 'Barang berhasil ditambahkan!');
    }

    public function destroy($id)
    {
        try {
            $barang = Barang::find($id);
    
            if (!$barang) {
                return response()->json(['message' => 'Barang tidak ditemukan!'], 404);
            }
    
            $barang->delete();
    
            return response()->json(['message' => 'Barang berhasil dihapus!'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Terjadi kesalahan: ' . $e->getMessage()], 500);
        }
    }
}
