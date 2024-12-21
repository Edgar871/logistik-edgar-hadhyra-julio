<!-- wrapper -->
    <div class="wrapper">
		<!--sidebar-wrapper-->
		<div class="sidebar-wrapper" data-simplebar="true">
			<div class="sidebar-header">
				<div class="">
					<a href="{{ route('dashboard') }}"><img src="{{ asset('../assets/images/tripa-logo.png') }}" class="logo-icon-2" alt="" /></a>
				</div>
				<div>
					<h4 class="logo-text"><a href="{{ route('dashboard') }}" style="color: blue;">Inventory Logistik</a></h4>
				</div>
				<a href="javascript:;" class="toggle-btn ml-auto"> <i class="bx bx-menu"></i>
				</a>
			</div>
			<!--navigation-->
			<ul class="metismenu" id="menu">
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon icon-color-1"><i class="bx bx-home-alt"></i>
						</div>
						<div class="menu-title">Dashboard</div>
					</a>
					<ul>
						<li> <a href="{{ route('dashboard') }}"><i class="bx bx-right-arrow-alt"></i>Home</a>
						</li>
						<!-- <li> <a href="index2.html"><i class="bx bx-right-arrow-alt"></i>Sales</a>
						</li> -->
					</ul>
				</li>
				<li class="menu-label">Audit Mutu Internal</li>
				<li>
					@if(Auth::user()->role === 'Admin')
					<a class="has-arrow" href="javascript:;">
						<div class="parent-icon icon-color-1"> <i class="bx bx-comment-edit"></i>
						</div>
						<div class="menu-title">Transaksi</div>
					</a>
					@endif
					<ul>
						@if(Auth::user()->role === 'Admin')
							<li> <a href="{{ route('barang-masuk') }}"><i class="bx bx-right-arrow-alt"></i>Barang Masuk</a>
							</li>
							<li> <a href="{{ route('barang-keluar') }}"><i class="bx bx-right-arrow-alt"></i>Barang Keluar</a>
							</li>
						@endif
					</ul>
				</li>
			</ul>
			<!--end navigation-->
		</div>
    </div>