@extends('layouts.layouts')

@section('content')
<!-- wrapper -->
<div class="wrapper">
    <!--page-wrapper-->
    <div class="page-wrapper">
        <!--page-content-wrapper-->
        <div class="page-content-wrapper">
            <div class="page-content">
                <!--breadcrumb-->
                <div class="page-breadcrumb d-none d-md-flex align-items-center mb-3">
                    <div class="breadcrumb-title pr-3">Forms</div>
                    <div class="pl-3">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 p-0">
                                <li class="breadcrumb-item"><a href="/admin"><i class='bx bx-home-alt'></i></a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Form Edit Akun</li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!--end breadcrumb-->
                <div class="container mt-5 mb-5">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card border-0 shadow-sm rounded">
                                <div class="card-body">
                                    <h4 class="text-center my-4">Form Edit Akun</h4>
                                    <hr />
                                    <!-- Formulir edit akun -->
                                    <form action="{{ route('admin.update-user') }}" method="POST">
                                        @csrf
                                        <input type="hidden" name="user_id" value="{{ $user->id }}">
                                        <div class="form-group mt-4">
                                            <label>Nama</label>
                                            <input type="text" class="form-control" id="name" name="name"
                                                value="{{ $user->name }}">
                                        </div>
                                        <div class="form-group mt-4">
                                            <label>Username</label>
                                            <input type="text" class="form-control" id="username" name="username"
                                                value="{{ $user->username }}">
                                        </div>
                                        <div class="form-group mt-4">
                                            <label>Password Baru</label>
                                            <input type="password" name="password" id="password" class="form-control"
                                                placeholder="Masukan password baru" />
                                            <small class="form-text text-muted">*Biarkan kosong jika tidak ingin
                                                mengubah password.</small>
                                        </div>
                                        <div class="form-group mt-4">
                                            <label>Role</label>
                                            <select class="form-control" name="role" id="role">
                                                <option value="Admin">Admin</option>
                                                <option value="User">User</option>
                                            </select>
                                        </div>
                                        <div class="btn-group mt-3 d-flex">
                                            <button type="submit" class="btn btn-primary btn-sm mr-2">Simpan</button>
                                            <a href="/admin" class="btn btn-primary btn-sm">Kembali</a>
                                        </div>
                                    </form>
                                    <!-- End Formulir edit akun -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    // Tangkap submit form
    document.getElementById('register-form').addEventListener('submit', function(event) {
        // Bersihkan pesan kesalahan sebelumnya
        document.querySelectorAll('.invalid-feedback').forEach(function(element) {
            element.innerText = '';
        });

        // Tangkap nilai input
        var email = document.getElementById('email').value;
        var username = document.getElementById('username').value;
        var nik = document.getElementById('nik').value;

        // Lakukan request AJAX ke server untuk validasi
        var xhr = new XMLHttpRequest();
        xhr.open('POST', '{{ route("register.store") }}', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4) { // Request selesai
                if (xhr.status === 400) { // Bad request
                    var response = JSON.parse(xhr.responseText);
                    // Tampilkan pesan kesalahan di bawah kolom input yang sesuai
                    document.getElementById(response.field + '-error').innerText = response.message;
                }
            }
        };
        // Kirim data form sebagai URL-encoded string
        xhr.send('email=' + encodeURIComponent(email) + '&username=' + encodeURIComponent(username) + '&nik=' + encodeURIComponent(nik));

        // Hentikan submit form jika ada kesalahan
        if (document.querySelectorAll('.invalid-feedback:not(:empty)').length > 0) {
            event.preventDefault();
        }
    });
</script>
<script>
    // JavaScript untuk membatasi input NIK hanya pada angka dan maksimal 5 digit
    document.getElementById('nik').addEventListener('input', function(evt) {
        // Hapus karakter non-angka
        this.value = this.value.replace(/\D/g, '');
        // Batasi input ke 5 digit
        if (this.value.length > 5) {
            this.value = this.value.slice(0, 5);
        }
    });
</script>
@endsection
