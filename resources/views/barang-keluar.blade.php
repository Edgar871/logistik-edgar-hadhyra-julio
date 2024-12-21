@extends('layouts.layouts')

@section('content')
    <div class="wrapper">
        <div class="page-wrapper">
            <div class="page-content-wrapper">
                <div class="page-content">
                    <div class="text-right">
                        <p id="clock" style="font-size: 20px;"></p>
                    </div>
                    <div class="container">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title">
                                    <h4 class="text-center my-4">Daftar Barang Keluar</h4>
                                </div>
                                <hr/>
                                <!-- Tombol untuk membuka modal create -->
                                <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#createBarangKeluarModal">
                                    Tambah Barang Keluar
                                </button>
                                <div class="table-responsive">
                                    <div class="card-body">
                                    <table id="example" class="table table-striped table-bordered text-center" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>No. Barang Keluar</th>
                                                <th>Barang</th>
                                                <th>Quantity</th>
                                                <th>Tujuan</th>
                                                <th>Tanggal Keluar</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($barangKeluar as $keluar)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $keluar->no_barang_keluar }}</td>
                                                <td>{{ $keluar->barang->kode_barang }}</td>
                                                <td>{{ $keluar->quantity }}</td>
                                                <td>{{ $keluar->destination }}</td>
                                                <td>{{ $keluar->tanggal_keluar }}</td>
                                                <td>
                                                    <button class="btn btn-sm btn-danger" onclick="deleteBarangKeluar({{ $keluar->id }})">
                                                        Hapus
                                                    </button>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    </div>
                                </div>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal untuk create Barang keluar -->
    <div class="modal fade" id="createBarangKeluarModal" tabindex="-1" aria-labelledby="createBarangKeluarModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="createBarangKeluarModalLabel">Tambah Barang Keluar</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="createBarangKeluarForm">
                        @csrf
                        <div class="mb-3">
                            <label for="no_barang_keluar" class="form-label">No Barang Keluar</label>
                            <input type="text" name="no_barang_keluar" id="no_barang_keluar" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label for="barang_id" class="form-label">Barang</label>
                            <select name="barang_id" id="barang_id" class="form-control" required>
                                @foreach($barangs as $barang)
                                    <option value="{{ $barang->id }}">{{ $barang->kode_barang }} - {{ $barang->nama_barang }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="quantity" class="form-label">Quantity</label>
                            <input type="number" name="quantity" id="quantity" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label for="destination" class="form-label">Destination</label>
                            <input type="text" name="destination" id="destination" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label for="tanggal_keluar" class="form-label">Tanggal keluar</label>
                            <input type="date" name="tanggal_keluar" id="tanggal_keluar" class="form-control" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Tambah Barang keluar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        @if(session('failed'))
            <div class="alert alert-danger">
                {{ session('failed') }}
            </div>
        @endif

        document.getElementById('createBarangKeluarForm').addEventListener('submit', function (e) {
            e.preventDefault();  // Mencegah reload default form

            const formData = new FormData(this);

            fetch('/barang-keluar', {
                method: 'POST',
                body: formData,
            })
            .then(response => {
                if (!response.ok) {
                    // Jika ada kesalahan dari server
                    throw new Error('Terjadi kesalahan saat mengirim data!');
                }
                return response.json();
            })
            .then(data => {
                // Jika berhasil
                if (data.success) {
                    // Menutup modal
                    var createModal = bootstrap.Modal.getInstance(document.getElementById('createBarangKeluarModal'));
                    createModal.hide();

                    // Menampilkan pesan sukses
                    alert(data.message); 

                    // Refresh halaman untuk menampilkan data terbaru
                    location.reload(); 
                } else {
                    // Jika ada masalah di server (misalnya validasi gagal)
                    alert(data.message);
                }
            })
            .catch(error => {
                // Jika ada error di jaringan atau pada proses fetch
                console.error('Error during form submission:', error);
                alert('Terjadi kesalahan saat mengirim data!');
            });
        });

        function deleteBarangKeluar(id) {
            if (confirm('Apakah Anda yakin ingin menghapus data barang keluar ini?')) {
                fetch(`/barang-keluar/${id}`, {
                    method: 'DELETE',
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}',
                        'Content-Type': 'application/json',
                    },
                })
                .then(response => response.json())
                .then(data => {
                    alert(data.message);
                    location.reload(); 
                });
            }
        }
    </script>
@endsection
