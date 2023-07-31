<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Matrix lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Matrix admin lite design, Matrix admin lite dashboard bootstrap 5 dashboard template" />
<meta name="description"
	content="Matrix Admin Lite Free Version is powerful and clean admin dashboard template, inpired from Bootstrap Framework" />
<meta name="robots" content="noindex,nofollow" />
<title>Matrix Admin Lite Free Versions Template by WrapPixel</title>
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/assets/images/favicon.png" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/extra-libs/multicheck/multicheck.css" />
<link
	href="${pageContext.request.contextPath}/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</head>
<body>
	<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5"
		data-sidebartype="full" data-sidebar-position="absolute"
		data-header-position="absolute" data-boxed-layout="full">
		<!-- 상단바 출력 -->
		<header class="topbar" data-navbarbg="skin5">
			<nav class="navbar top-navbar navbar-expand-md navbar-dark">
				<div class="navbar-header" data-logobg="skin5">
					<a class="navbar-brand" href="${pageContext.request.contextPath}/on/calendar">
						<b class="logo-icon ps-2">Cashbook</b>
					</a>
				</div>
				<div style="color:#FFFFFF;">
					<a style="color:#FFFFFF;" href="${pageContext.request.contextPath}/on/logout">로그아웃</a>
				</div>
			</nav>
		</header>
		<!-- 상단바 출력 종료 -->
		<!-- 좌측바 출력 -->
		<aside class="left-sidebar" data-sidebarbg="skin5">
			<div class="scroll-sidebar">
				<nav class="sidebar-nav">
					<ul id="sidebarnav" class="pt-4">
						<!-- 홈으로 -->
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link"href="${pageContext.request.contextPath}/on/cashbook" aria-expanded="false">
								<i class="mdi mdi-receipt"></i>
								<span class="hide-menu">홈으로</span>
							</a>
						</li>
						<!-- 가계부 -->
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link"href="${pageContext.request.contextPath}/on/calendar" aria-expanded="false">
								<i class="mdi mdi-blur-linear"></i>
								<span class="hide-menu">가계부</span>
							</a>
						</li>
						<!-- 회원정보 이동 -->
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link"href="${pageContext.request.contextPath}/on/memberOne" aria-expanded="false">
								<i class="mdi mdi-face"></i>
								<span class="hide-menu">회원정보</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
		</aside>
		<!-- 좌측 사이드바 출력 종료 -->
		<!-- 메인페이지출력 -->
		<div class="page-wrapper">
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-12 d-flex no-block align-items-center">
						<h4 class="page-title">해시 태그 리스트 출력</h4>
					</div>
				</div>
			</div>
			<!-- 테이블 내용 출력 -->
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title mb-0">월별 해시태그 리스트 출력</h5>
							</div>
							<div class="table-responsive">
								<table id="zero_config"class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>번호</th>
											<th>카테고리</th>
											<th>금액</th>
											<th>해시태그</th>
											<th>수정일</th>
											<th>생성일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="map" items="${list}" >
											<tr>
												<td>
													<a href="${pageContext.request.contextPath}/on/dateOne?cashbookDate=${map.cashbookDate}&targetYear=${targetYear}&targetMonth=${targetMonth}">
														${map.cashbookNo}
													</a>
												</td>
												<td>${map.category}</td>
												<td>${map.price}</td>
												<td><span style="color: #3f729b;">${map.memo}</span></td>
												<td>${map.updatedate}</td>
												<td>${map.createdate}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div><!-- 테이블 출력종료 -->
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script	src="${pageContext.request.contextPath}/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/extra-libs/sparkline/sparkline.js"></script>
	<script src="${pageContext.request.contextPath}/js/waves.js"></script>
	<script src="${pageContext.request.contextPath}/js/sidebarmenu.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom.min.js"></script>
	<script	src="${pageContext.request.contextPath}/assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
	<script src="${pageContext.request.contextPath}/assets/extra-libs/multicheck/jquery.multicheck.js"></script>
	<script src="${pageContext.request.contextPath}/assets/extra-libs/DataTables/datatables.min.js"></script>
	<script>
		$("#zero_config").DataTable();
	</script>
</body>
</html>
