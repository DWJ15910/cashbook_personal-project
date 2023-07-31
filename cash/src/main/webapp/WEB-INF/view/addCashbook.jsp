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
<script>
	$(document).ready(function(){
		// 추가하기 클릭시 실행
		$('#addCashbookBtn').click(function(){
			if($('#categoryId').val().length == 0) {
				$('#categoryIdMsg').text('카테고리를 입력해주세요');
				return;
			} else {
				$('#categoryIdMsg').text('');
			}
			
			if($('#priceId').val().length == 0 || isNaN($('#priceId').val()) == true){
				$('#priceIdMsg').text('금액을(숫자로) 작성해야합니다.');
				return;
			} else {
				$('#priceIdMsg').text('');
			}
			
			if($('#memoId').val().length == 0) {
				$('#memoIdMsg').text('해시태그를 입력해주세요');
				return;
			} else {
				$('#memoIdMsg').text('');
			}
			
	        // 입력값을 공백으로 구분하여 각 단어를 분리한 후, #을 추가하여 다시 조합
	        var words = $('#memoId').val().split(" ");
	        // 반복문을 통하여 words배열에 각인덱스값마다 앞에#이 없다면 #을 추가하여 저장
	        for (var i = 0; i < words.length; i++) {
	            if (!words[i].startsWith("#")) {
	                words[i] = "#" + words[i];
	            }
	        }
	        // words배열을 공백을 기준으로 memoId에 다시 문자열로 나열하여 넣음
	        $('#memoId').val(words.join(' '));
			
			$('#addCashbookForm').submit();
		});
	});
</script>
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
						<h4 class="page-title">가계부 추가하기</h4>
					</div>
				</div>
			</div>
			<!-- 테이블 내용 출력 -->
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title mb-0">날짜${targetYear}년${targetMonth+1}월${targetDate}일</h5>
							</div>
							<form id="addCashbookForm" action="${pageContext.request.contextPath}/on/addCashbook" method="post">
								<input type="hidden" name="date" value="${targetYear}-${targetMonth+1}-${targetDate}">
								<table class="table">
									<tr>
										<td>카테고리</td>
										<td>
											<select class="form-select" id="categoryId" name="category">
												<option value="수입">수입</option>
												<option value="지출">지출</option>
											</select>
											<span id="categoryIdMsg"></span>
										</td>			
									</tr>
									<tr>
										<td>금액</td>
										<td>
											<input class="form-control" id="priceId" type="text" name="price" placeholder="숫자로 입력해주세요">
											<span id="priceIdMsg"></span>
										</td>
									</tr>
									<tr>
										<td>해시태그</td>
										<td>
											<input class="form-control" id="memoId" type="text" name="memo" placeholder="각단어를 띄어쓰기로 구분해주세요">
											<span id="memoIdMsg"></span>
										</td>
									</tr>
								</table>
								<button style="float : right;" class="btn btn-dark" id="addCashbookBtn" type="button">추가하기</button>
							</form>
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
