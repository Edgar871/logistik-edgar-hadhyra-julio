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
                    <!-- Isi breadcrumb -->
                </div>
                <!--end breadcrumb-->
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">
                            <!-- Isi judul card -->
                            <h4 class="text-center my-4">User Management</h4>
                        </div>
                        <hr/>
                        @if(Auth::user()->role === 'Admin')
                        <a href="{{ route('register.index') }}" class="btn btn-md btn-success mb-3 ml-3">Buat Akun</a>
                        @endif
                        <div class="table-responsive">
                            <div class="card-body">
                                <table id="example" class="table table-striped table-bordered text-center" style="width:100%">
                                    <thead>
                                        <th scope="col">Nama</th>
                                        <th scope="col">Password</th>
                                        <th scope="col">Role</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Action</th>
                                    </thead>
                                    <tbody>
                                        @forelse ($users as $user)
                                        <tr>
                                            <td>{{ isset($user) ? $user->name : 'Belum ada data karyawan' }}</td>
                                            <td>{!! Str::limit($user->password, 10, '...') !!}</td>
                                            <td>{{ $user->role }}</td>
                                            <td>
                                                <div class="custom-control custom-switch">
                                                    <input type="checkbox" class="custom-control-input" id="status_{{ $user->id }}" onchange="toggleUserStatus({{ $user->id }})" {{ $user->status === 'active' ? 'checked' : '' }}>
                                                    <label class="custom-control-label" for="status_{{ $user->id }}">{{ ucfirst($user->status) }}</label>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <!-- Tambahkan tombol Edit dan Hapus di sini -->
                                                <a href="{{ route('admin.edit-user', ['id' => $user->id]) }}" class="btn btn-sm btn-warning bx bxs-edit"></a>
                                                <button class="btn btn-sm btn-danger bx bx-trash" onclick="deleteUser({{ $user->id }})"></button>
                                            </td>
                                        </tr>
                                        @empty
                                        <tr>
                                            <td colspan="5">
                                                <div class="alert alert-danger">Data Pengguna tidak tersedia.</div>
                                            </td>
                                        </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                                {{ $users->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end page-wrapper-->
</div>
<!-- end wrapper -->

<!-- Skrip JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script>
    function updateUserrole(userId) {
        var dropdown = document.getElementById("role_" + userId);
        if (dropdown) {
            var role = dropdown.value;
            fetch(`/admin/update-user-role`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': '{{ csrf_token() }}' // Tambahkan CSRF token di sini
                },
                body: JSON.stringify({ userId: userId, role: role })
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(data => {
                alert('role pengguna berhasil diperbarui!');
                location.reload();
            })
            .catch(error => {
                console.error('There was an error!', error);
            });
        } else {
            console.error("Element with ID role_" + userId + " not found");
        }
    }
</script>

<script>
    function toggleUserStatus(userId) {
        fetch(`/admin/toggle-user-status`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': '{{ csrf_token() }}'
            },
            body: JSON.stringify({ userId: userId })
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            alert('Status pengguna berhasil diperbarui!');
            // Refresh halaman setelah berhasil memperbarui status pengguna
            location.reload();
        })
        .catch(error => {
            console.error('There was an error!', error);
        });
    }
</script>

<script>
    function deleteUser(userId) {
        Swal.fire({
            title: 'Apakah Anda yakin?',
            text: "Anda tidak akan dapat mengembalikan ini!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, hapus!'
        }).then((result) => {
            if (result.isConfirmed) {
                fetch(`/admin/delete-user/${userId}`, {
                    method: 'DELETE',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    }
                })
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.json();
                })
                .then(data => {
                    Swal.fire(
                        'Dihapus!',
                        'Akun pengguna berhasil dihapus.',
                        'success'
                    ).then(() => {
                        // Refresh halaman setelah berhasil menghapus akun pengguna
                        location.reload();
                    });
                })
                .catch(error => {
                    Swal.fire(
                        'Error!',
                        'Ada kesalahan saat menghapus akun pengguna.',
                        'error'
                    );
                    console.error('There was an error!', error);
                });
            }
        });
    }
</script>

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
@endsection
