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
                            <h4 class="text-center my-4">Profile</h4>
                        </div>
                        <hr/>
                        <div class="profile-details">
                            <div class="profile-left">
                                <div class="profile-item">
                                    <span class="profile-label">Name:</span>
                                    <span class="profile-value">{{ $user->name }}</span>
                                </div>
                                <div class="profile-item">
                                    <span class="profile-label">Role:</span>
                                    <span class="profile-value">{{ $user->role }}</span>
                                </div>
                                <div class="profile-item">
                                    <span class="profile-label">Status:</span>
                                    <span class="profile-value">{{ $user->status }}</span>
                                </div>
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
<style>
    .profile-details {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
    }
    .profile-item {
        margin-bottom: 10px;
    }
    .profile-label {
        font-weight: bold;
        display: inline-block;
        width: 120px; /* You can adjust this width as needed */
    }
    .profile-value {
        display: inline-block;
    }
    .profile-left {
        flex: 1;
    }
    .profile-right {
        flex: 1;
        margin-left: 20px; /* Adjust margin as needed */
    }
    .signature-preview-container {
        width: 150px; /* Set the width of the preview box */
        height: 150px; /* Set the height of the preview box */
        border: 1px solid #ccc;
        display: flex;
        align-items: center;
        justify-content: center;
        position: relative;
    }
    .signature-preview {
        max-width: 100%;
        max-height: 100%;
    }
    #no-signature-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
</style>

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
