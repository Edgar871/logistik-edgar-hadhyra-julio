@extends('layouts.layouts')

@section('content')
<div class="wrapper">
    <div class="page-wrapper">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-breadcrumb d-none d-md-flex align-items-center mb-3">
                    <div class="breadcrumb-title pr-3">Forms</div>
                    <div class="pl-3">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 p-0">
                                <li class="breadcrumb-item"><a href="{{ route('umanagement.index') }}"><i class='bx bx-home-alt'></i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">Form Pembuatan Akun Baru</li>
                            </ol>
                        </nav>
                    </div>
                </div>

                <div class="container mt-5 mb-5">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card border-0 shadow-sm rounded">
                                <div class="card-body">
                                    <div>
                                        <h4 class="text-center my-4">Form Pembuatan Akun Baru</h4>
                                    </div>
                                    <hr/>
                                    <form id="register-form" action="{{ route('register.store') }}" method="POST">
                                        @csrf
                                        <div class="form-group mt-4">
                                            <label>Nama</label>
                                            <input type="text" name="name" id="name" class="form-control" placeholder="Masukan nama" required />
                                            @error('name')
                                                <div class="invalid-feedback d-block">{{ $message }}</div>
                                            @enderror
                                        </div>
                                        <div class="form-group mt-4">
                                            <label>Username</label>
                                            <input type="username" name="username" id="username" class="form-control" placeholder="Masukan Username" required />
                                            @error('username')
                                                <div class="invalid-feedback d-block">{{ $message }}</div>
                                            @enderror
                                        </div>
                                        <div class="form-group mt-4">
                                            <label>Password</label>
                                            <div class="input-group">
                                                <input class="form-control" type="password" name="password" id="password" placeholder="Masukan password" required>
                                                <div class="input-group-append">
                                                    <span class="input-group-text" id="toggle-password">
                                                        <i class='bx bx-hide'></i>
                                                    </span>
                                                </div>
                                            </div>
                                            @error('password')
                                                <div class="invalid-feedback d-block">{{ $message }}</div>
                                            @enderror
                                        </div>
                                        <div class="form-group mt-4">
                                            <label>Role</label>
                                            <select class="form-control" name="role" id="role">
                                                <option value="Admin">Admin</option>
                                                <option value="User">User</option>
                                            </select>
                                            @error('role')
                                                <div class="invalid-feedback d-block">{{ $message }}</div>
                                            @enderror
                                        </div>
                                        <div class="form-group mt-4">
                                            <label>Status</label>
                                            <select class="form-control" name="status" id="status">
                                                <option value="active">Aktif</option>
                                                <option value="inactive">Tidak Aktif</option>
                                            </select>
                                            @error('status')
                                                <div class="invalid-feedback d-block">{{ $message }}</div>
                                            @enderror
                                        </div>
                                        <div class="btn-group mt-3 w-100">
                                            <button type="submit" class="btn btn-primary btn-block">Register</button>
                                        </div>
                                    </form>
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
    document.getElementById('nip').addEventListener('input', function (e) {
        this.value = this.value.replace(/[^0-9]/g, '');
    });
</script>

<script>
    document.getElementById('toggle-password').addEventListener('click', function() {
        var passwordInput = document.getElementById('password');
        var icon = this.querySelector('i');
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            icon.classList.remove('bx-hide');
            icon.classList.add('bx-show');
        } else {
            passwordInput.type = 'password';
            icon.classList.remove('bx-show');
            icon.classList.add('bx-hide');
        }
    });
</script>
@endsection
