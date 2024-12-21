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
                                    <!-- Isi judul card -->
                                    <h4 class="text-center my-4">Daftar Barang Masuk</h4>
                                </div>
                                <hr/>
                                <!-- Tombol untuk membuka modal create -->
                                <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#createBarangMasukModal">
                                    Tambah Barang Masuk
                                </button>
                                <div class="table-responsive">
                                    <div class="card-body">
                                    <table id="example" class="table table-striped table-bordered text-center" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>No. Barang Masuk</th>
                                                <th>Kode Barang</th>
                                                <th>Quantity</th>
                                                <th>Origin</th>
                                                <th>Tanggal Masuk</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($barangMasuk as $index => $barangMasukItem)
                                            <tr>
                                                <td>{{ $index + 1 }}</td>
                                                <td>{{ $barangMasukItem->no_barang_masuk }}</td>
                                                <td>{{ $barangMasukItem->barang->kode_barang }}</td>
                                                <td>{{ $barangMasukItem->quantity }}</td>
                                                <td>{{ $barangMasukItem->origin }}</td>
                                                <td>{{ $barangMasukItem->tanggal_masuk }}</td>
                                                <td>
                                                    <!--Hapus -->
                                                    <button class="btn btn-sm btn-danger" onclick="deleteBarangMasuk({{ $barangMasukItem->id }})">
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

    <!-- Modal untuk create Barang Masuk -->
    <div class="modal fade" id="createBarangMasukModal" tabindex="-1" aria-labelledby="createBarangMasukModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="createBarangMasukModalLabel">Tambah Barang Masuk</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Form Create Barang Masuk -->
                    <form id="createBarangMasukForm">
                        @csrf
                        <div class="mb-3">
                            <label for="no_barang_masuk" class="form-label">No Barang Masuk</label>
                            <input type="text" name="no_barang_masuk" id="no_barang_masuk" class="form-control" required>
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
                            <label for="origin" class="form-label">Origin</label>
                            <input type="text" name="origin" id="origin" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label for="tanggal_masuk" class="form-label">Tanggal Masuk</label>
                            <input type="date" name="tanggal_masuk" id="tanggal_masuk" class="form-control" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Tambah Barang Masuk</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    @if ($message = Session::get('success'))
        <script>
            Swal.fire({
                icon: 'success',
                title: '{{ $message }}',
                showConfirmButton: false,
                timer: 1500
            });
        </script>
    @endif

    @if ($message = Session::get('warning'))
        <script>
            Swal.fire({
                icon: 'warning',
                title: '{{ $message }}',
                showConfirmButton: false,
                timer: 2500
            });
        </script>
    @endif

    @if ($message = Session::get('failed'))
        <script>
            Swal.fire({
                icon: 'error',
                title: '{{ $message }}',
                showConfirmButton: true,
                timer: null
            });
        </script>
    @endif

    <script>
        // Fungsi untuk menyimpan form create barang masuk
        document.getElementById('createBarangMasukForm').addEventListener('submit', function (e) {
            e.preventDefault();
            const formData = new FormData(this);

            fetch('/barang-masuk', {
                method: 'POST',
                body: formData,
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    var createModal = bootstrap.Modal.getInstance(document.getElementById('createBarangMasukModal'));
                    createModal.hide();
                    location.reload(); // Reload halaman setelah berhasil
                } else {
                    alert(data.message); // Tampilkan pesan error jika gagal
                }
            })
            .catch(error => {
                console.error('Error during form submission:', error);
                alert('Terjadi kesalahan saat mengirim data!');
            });
        });

        // Fungsi untuk menghapus barang masuk
        function deleteBarangMasuk(id) {
            if (confirm('Apakah Anda yakin ingin menghapus data barang masuk ini?')) {
                fetch(`/barang-masuk/${id}`, {
                    method: 'DELETE',
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}',
                        'Content-Type': 'application/json',
                    },
                })
                .then(response => response.json())
                .then(data => {
                    alert(data.message);
                    location.reload(); // Reload halaman setelah hapus berhasil
                });
            }
        }
    </script>
@endsection
