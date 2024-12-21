<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Login - SIAMI PNJ</title>
    <!--favicon-->
    <link rel="icon" href="assets/images/tripa-logo.png" type="image/png" />
    <!-- loader-->
    <link href="assets/css/pace.min.css" rel="stylesheet" />
    <script src="assets/js/pace.min.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <!-- Icons CSS -->
    <link rel="stylesheet" href="assets/css/icons.css" />
    <!-- App CSS -->
    <link rel="stylesheet" href="assets/css/app.css" />
</head>

<body class="bg-login">
    <!-- wrapper -->
    <div class="wrapper">
        <div class="section-authentication-login d-flex align-items-center justify-content-center">
            <div class="row">
                <div class="col-12 col-lg-10 mx-auto">
                    <div class="card radius-15">
                        <div class="row no-gutters">
                            <div class="col-lg-6">
                                <div class="card-body p-md-5">
                                    <div class="text-center">
                                        <img style="margin-right: 150px" src="assets/images/tripa-logo.png" width="80" alt="">
                                        <h3 style="margin-right: 150px" class="mt-4 font-weight-bold">Log In</h3>
                                    </div>
                                    <form style="width: 23rem;" action="{{ route('login') }}" method="POST">
                                        @csrf
                                        <div class="form-group mt-4">
                                            <label>Username</label>
                                            <input type="text" class="form-control" name="username" id="username" placeholder="Masukan Username" />
											@if ($errors->has('email'))
                                                <div class="alert alert-danger mt-2">{{ $errors->first('email') }}</div>
                                            @endif
										</div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <div class="input-group">
                                                <input type="password" id="password" name="password" class="form-control" placeholder="Masukan Password" />
                                                <div class="input-group-append">
                                                    <span class="input-group-text" id="toggle-password">
                                                        <i class='bx bx-hide'></i>
                                                    </span>
                                                </div>
                                            </div>
                                            @if ($errors->has('password'))
                                                <div class="alert alert-danger mt-2">{{ $errors->first('password') }}</div>
                                            @endif
										</div>
                                        <div class="form-row">
                                            <div class="form-group col text-right"> 
                                                <a href="#" onclick="showContactAdminPopup()"><i class='bx bxs-key mr-2'></i>Lupa Password?</a>
                                            </div>
                                        </div>
                                        <div class="btn-group mt-3 w-100">
                                            <button type="submit" class="btn btn-primary btn-block">Log In</button>
                                            <button type="submit" class="btn btn-primary"><i class="lni lni-arrow-right"></i>
                                            </button>
                                        </div>
                                    </form>
                                    <hr>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <img src="assets/images/login-images/login-img.jpg" class="card-img login-img h-100" alt="...">
                            </div>
                        </div>
                        <!--end row-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="text-center">
        <p class="mb-0">&copy;2024 | Developed By : <a href="#" target="_blank" style="color: blue;">Edgar Hadhyra Julio</a>
        </p>
    </footer>
    <!-- end wrapper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/8.11.8/sweetalert2.all.min.js"></script>

    <!-- Example using SweetAlert2 for notifications -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
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

	<script>
		// Fungsi untuk menampilkan pesan popup
		function showContactAdminPopup() {
			Swal.fire({
				icon: 'info',
				title: 'Hubungi Administrator',
				text: 'Silakan hubungi administrator untuk mengatur ulang kata sandi Anda.',
				showConfirmButton: true,
				timer: null
			});
		}
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

    <script type="text/javascript">
        // Blokir kombinasi tombol Alt + Left Arrow dan Backspace
        document.addEventListener('keydown', function(e) {
            if ((e.altKey && e.key === 'ArrowLeft') || (e.altKey && e.key === 'Backspace')) {
                e.preventDefault();
            }
        });
	</script>
</body>

</html>
