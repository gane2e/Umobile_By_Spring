
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="/resources/css/styles.css" rel="stylesheet" />
<link href="/resources/csss/registerProduct.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="#">관리자 페이지</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="/admin/logout">Logout</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="/admin/Adminmain">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 관리자 메인 페이지
						</a>
						<div class="sb-sidenav-menu-heading">Interface</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 상품
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/admin/registerProduct">상품 등록</a> <a
									class="nav-link" href="/admin/ProductRegistration">상품 관리</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> 계정
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/admin/memberList">일반 유저</a> <a
									class="nav-link" href="/admin/adminList">관리자 계정</a>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">Addons</div>
						<a class="nav-link" href="/admin/PhoneApplicationdetails">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 고객 핸드폰 신청내역
						</a> <a class="nav-link" href="/admin/notice">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 공지사항
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					관리자 페이지
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">상품 등록</h1>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> 상품 등록
						</div>
						<div class="card-body">
							<!-- <header>
								<h1>상품 등록</h1>
							</header> -->

							<div class="product-form-container">
								<form action="product/register" method="post"
									enctype="multipart/form-data">

									<div class="form-group">
										<label for="phone_Name">상품명</label> <input type="text"
											id="phone_Name" name="phone_Name" required
											placeholder="상품명을 입력하세요.">
									</div>

									<div class="form-group">
										<label for="serial">시리얼번호</label> <input type="text"
											id="serial" name="serial" required
											placeholder="시리얼번호를 입력하세요.">
									</div>

									<div class="form-group">
										<label for="giga">용량</label> <input type="text" id="giga"
											name="giga" required placeholder="휴대폰 용량을 입력하세요. (예:256GB)">
									</div>

									<div class="form-group">
										<label for="price">가격</label> <input type="text" id="price"
											name="price" required placeholder="1,000,000 형태로 입력하세요.">
									</div>

									<div class="form-group">
										<label for="phone_Size">사이즈</label> <input type="text"
											id="phone_Size" name="phone_Size" required
											placeholder="휴대폰 사이즈를 입력하세요. (예:165.1 x 71.9 x 6.9 mm)">
									</div>

									<div class="form-group">
										<label for="phone_Weight">무게</label> <input type="text"
											id="phone_Weight" name="phone_Weight" required
											placeholder="휴대폰 무게를 입력하세요.">
									</div>

									<div class="form-group">
										<label for="camera">카메라</label> <input type="text" id="camera"
											name="camera" required placeholder="카메라 성능을 입력하세요.">
									</div>

									<div class="form-group">
										<label for="battery">배터리</label> <input type="text"
											id="battery" name="battery" required
											placeholder="배터리 성능을 입력하세요.">
									</div>

									<div class="form-group">
										<label for="memory">메모리</label> <input type="text" id="memory"
											name="memory" required placeholder="메모리 성능을 입력하세요.">
									</div>

									<div class="form-group">
										<label for="display">디스플레이</label> <input type="text"
											id="display" name="display" required
											placeholder="디스플레이 성능을 입력하세요.">
									</div>

									<div class="form-group">
										<label for="status">상태</label> <input type="text" id="status"
											name="status" required
											placeholder="휴대폰 상태를 입력하세요. (예:새폰/리퍼폰/중고)">
									</div>

									<div class="form-group">
										<label for="manufacturer">제조사</label> <input type="text"
											id="manufacturer" name="manufacturer" required
											placeholder="제조사를 입력하세요.">
									</div>

									<div class="form-group">
										<label for="color">색상</label> <input type="text" id="color"
											name="color" required
											placeholder="색상 종류를 입력하세요. (예: 블랙/화이트/그린)">
									</div>

									<div class="form-group">
										<label for="cpu">CPU</label> <input type="text" id="cpu"
											name="cpu" required placeholder="cpu 성능을 입력하세요.">
									</div>

									<div class="form-group">
										<label for="options">기타(옵션)</label> <input type="text"
											id="options" name="options" required
											placeholder="기타(옵션)을 입력하세요.">
									</div>

									<div class="form-group">
										<label for="release_Date">출시일</label> <input type="date"
											id="release_Date" name="release_Date" required>
									</div>

									<div class="form-group">
										<label for="os">운영체제</label> <input type="text" id="os"
											name="os" required placeholder="운영체제를 입력하세요.">
									</div>

									<div class="form-group">
										<label for="image_Path">상품 이미지 (썸네일 1장 첨부)</label> <input
											type="file" id="image_Path" name="image_Path"
											class="form-control">
									</div>

									<div class="form-group">
										<label for="description1">상품설명1</label> <input type="text"
											id="description1" name="description1" required
											placeholder="설명1을 입력하세요.">
									</div>

									<div class="form-group">
										<label for="description2">상품설명2</label> <input type="text"
											id="description2" name="description2" required
											placeholder="설명2를 입력하세요.">
									</div>

									<div class="form-group">
										<label for="security">보안정보</label> <input type="text"
											id="security" name="security" required
											placeholder="보안정보를 입력하세요.">
									</div>

									<div class="form-group">
										<label for="waterproof">방수여부</label> <input type="text"
											id="waterproof" name="waterproof" required
											placeholder="방수여부를 입력하세요.">
									</div>

									<button type="submit" class="btn"
										style="background-color: #212529; color: #ffffff;">등록하기</button>
								</form>
							</div>


						</div>
					</div>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2023</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/js/scripts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/js/datatables-simple-demo.js"></script>
</body>
</html>