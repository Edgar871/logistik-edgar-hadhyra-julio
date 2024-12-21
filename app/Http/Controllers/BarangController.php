<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\BarangMasuk;
use App\Models\BarangKeluar;
use Illuminate\Http\Request;

class BarangController extends Controller
{
    public function barangMasuk()
    {
        $barangMasuk = BarangMasuk::with('barang')->get();
        $barangs = Barang::all();
        return view('barang-masuk', compact('barangMasuk', 'barangs'));
    }

    public function barangKeluar()
    {
        $barangKeluar = BarangKeluar::with('barang')->get();
        $barangs = Barang::all();
        return view('barang-keluar', compact('barangKeluar', 'barangs'));
    }

    public function storeBarangMasuk(Request $request)
    {
        // Validasi data
        $request->validate([
            'no_barang_masuk' => 'required|string|max:255',
            'barang_id' => 'required',
            'quantity' => 'required|integer|min:1',
            'origin' => 'required',
            'tanggal_masuk' => 'required|date',
        ]);
    
        // Membuat data barang masuk
        $barangMasuk = BarangMasuk::create([
            'no_barang_masuk' => $request->no_barang_masuk,
            'barang_id' => $request->barang_id,
            'quantity' => $request->quantity,
            'origin' => $request->origin,
            'tanggal_masuk' => $request->tanggal_masuk,
        ]);
    
        // Update stok barang
        $barang = Barang::find($request->barang_id);
        $barang->stok += $request->quantity;
        $barang->save();
    
        // Mengembalikan response JSON
        return response()->json(['success' => true, 'message' => 'Barang masuk berhasil ditambahkan.']);
    }
    
    public function storeBarangKeluar(Request $request)
    {
        try {
            // Validasi input
            $request->validate([
                'barang_id' => 'required',
                'quantity' => 'required|integer|min:1',
                'destination' => 'required',
                'tanggal_keluar' => 'required|date',
                'no_barang_keluar' => 'required|unique:barang_keluars,no_barang_keluar', // Validasi unique untuk no_barang_keluar
            ]);
    
            // Temukan barang berdasarkan id
            $barang = Barang::find($request->barang_id);
    
            // Cek apakah stok cukup
            if ($barang->stok < $request->quantity) {
                return response()->json(['success' => false, 'message' => 'Stok tidak mencukupi.']);
            }
    
            // Simpan barang keluar
            BarangKeluar::create([
                'no_barang_keluar' => $request->no_barang_keluar, // Ambil dari form
                'barang_id' => $request->barang_id,
                'quantity' => $request->quantity,
                'destination' => $request->destination,
                'tanggal_keluar' => $request->tanggal_keluar,
            ]);
    
            // Kurangi stok barang
            $barang->stok -= $request->quantity;
            $barang->save();
    
            // Respons sukses
            return response()->json(['success' => true, 'message' => 'Barang keluar berhasil dicatat.']);
        } catch (\Exception $e) {
            // Tangani error
            return response()->json(['success' => false, 'message' => 'Terjadi kesalahan saat mengirim data! ' . $e->getMessage()]);
        }
    }
    
    // Hapus barang masuk
    public function deleteBarangMasuk($id)
    {
        $barangMasuk = BarangMasuk::find($id);

        // Kurangi stok barang yang dihapus
        $barang = Barang::find($barangMasuk->barang_id);
        $barang->stok -= $barangMasuk->quantity;
        $barang->save();

        $barangMasuk->delete();

        return response()->json(['message' => 'Barang masuk berhasil dihapus!'], 200);
    }

    public function deleteBarangKeluar($id)
    {
        $barangKeluar = BarangKeluar::find($id);
        
        // Update stok barang yang dikurangi
        $barang = Barang::find($barangKeluar->barang_id);
        $barang->stok += $barangKeluar->quantity;
        $barang->save();

        $barangKeluar->delete();

        return response()->json(['message' => 'Barang keluar berhasil dihapus!'], 200);
    }
}
