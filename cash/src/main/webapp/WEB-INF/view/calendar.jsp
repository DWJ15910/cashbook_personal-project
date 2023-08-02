<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><!-- jstl에서 substring호출 -->
<!-- JSP컴파일시 자바코드로 변환되는 c:... (제어문)사용코드 커스텀태그 사용가능 -->

<!DOCTYPE html>
<html dir="ltr" lang="en">
<meta charset="utf-8" />
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Matrix lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Matrix admin lite design, Matrix admin lite dashboard bootstrap 5 dashboard template" />
<meta name="description"
	content="Matrix Admin Lite Free Version is powerful and clean admin dashboard template, inpired from Bootstrap Framework" />
<meta name="robots" content="noindex,nofollow" />
<title>Matrix Admin Lite Free Versions Template by WrapPixel</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="../assets/images/favicon.png" />
<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/assets/libs/fullcalendar/dist/fullcalendar.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/assets/extra-libs/calendar/calendar.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style.min.css"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
	$(document).ready(function() {
		$('.hashtag-toggle').click(function(e) {
			e.preventDefault();
			$(this).siblings('.hashtag-list').slideToggle();
		});
	});
</script>
<style>
	.hashtag-list {
		display: none;
	}
	
	.hashtag-list.active {
		display: block;
	}
	a {
		text-decoration:none;
		color: #000000;
	}
</style>
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
		<!-- 메인페이지 출력 -->
		<div class="page-wrapper">
			<!-- 페이지 소단원 출력 -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-12 d-flex no-block align-items-center">
						<h4 class="page-title">Cashbook Calendar</h4>
						<div class="ms-auto text-end">
							<nav aria-label="breadcrumb"></nav>
						</div>
					</div>
				</div>
			</div>
			<!-- Calendar 출력 -->
			<br>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="">
							<div class="row">
								<div class="col-lg-3 border-right pe-0">
									<div class="card-body border-bottom">
										<h4 class="card-title mt-2">Hash Tag</h4>
									</div>
									<div class="card-body">
										<div class="row">
											<div class="col-md-12">
												<!-- 해시태그 목록 출력 -->
												<div id="calendar-events" class="">
													<div class="calendar-events mb-3" data-class="bg-info">
														<i class="fa fa-circle text-info me-2"></i>
															<a style="color: black;" href="#" class="hashtag-toggle">전체해시태그</a>
															<ul class="hashtag-list">
																<c:forEach var="map" items="${htList}">
																	<span> <a style="color: #3f729b;"
																		href="${pageContext.request.contextPath}/on/cashbookListByTag?hashtag=${map.word}">${map.word}(${map.cnt})</a>
																	</span>
																</c:forEach>
															</ul>
													</div>
													<div class="calendar-events mb-3" data-class="bg-success">
														<i class="fa fa-circle text-success me-2"></i>
															<a style="color: black;" href="#" class="hashtag-toggle">월별해시태그</a>
															<ul class="hashtag-list">
																<c:forEach var="map" items="${htList}">
																	<span> <a style="color: #3f729b;"
																		href="${pageContext.request.contextPath}/on/hashtag?targetYear=${targetYear}&targetMonth=${targetMonth}&hashtag=${map.word}">${map.word}(${map.cnt})</a>
																	</span>
																</c:forEach>
															</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-9">
									<br>
									<div>
										<h2 style="text-align: center;">${targetYear}년${targetMonth+1}월</h2>
										<a style="float: right; margin-right:10px;" href="${pageContext.request.contextPath}/on/calendar?targetYear=${targetYear}&targetMonth=${targetMonth+1}">다음 달</a>
										<a style="float: right; margin-right:10px;" href="${pageContext.request.contextPath}/on/calendar?targetYear=${targetYear}&targetMonth=${targetMonth-1}">이전 달</a>
									</div>
									<div class="card-body b-l calender-sidebar">
										<div id="calendar">
											<table class="table">
												<tr style="font-weight: bold;">
													<th>일</th>
													<th>월</th>
													<th>화</th>
													<th>수</th>
													<th>목</th>
													<th>금</th>
													<th>토</th>
												</tr>
												<tr>
													<!-- 0부터 totalCell-1 까지 반복 -->
													<c:forEach var="i" begin="0" end="${totalCell-1}" step="1">
														<!-- 날짜 출력변수 월의 시작공백 빼주고 출력 -->
														<c:set var="d" value="${i-beginBlank+1}"></c:set>
														<!-- 전체날짜에서 7 로 나누어 떨어지면 행변경-->
														<c:if test="${i != 0 && i%7==0}">
												</tr>
												<tr>
													</c:if>

													<!-- 날짜출력  i-beginBlank+1 = 현재달의 날짜 1~30 or 1 ~31 -->
													<c:if test="${d > 0 && d <= lastDate}">
														<td style="height: 100px; width: 100px;">
															<div>
																<a style="color: black;"
																	href="${pageContext.request.contextPath}/on/dateOne?targetDate=${d}&targetMonth=${targetMonth}&targetYear=${targetYear}">${d}</a>
															</div> 
															<c:set var="count" value="0"/>
															<c:forEach var="c" items="${list}">
																<!-- 날짜별 수입지출을 알기위해 년도를 날짜만 나타나게 자른다 -->
																<c:if test="${d == fn:substring(c.cashbookDate,8,10)}">
																	<c:if test="${count < 2}">
																		<div>
																			<c:if test="${c.category == '수입' }">
																				<span style="color: blue;">+${c.price}</span>
																			</c:if>
																			<c:if test="${c.category == '지출' }">
																				<span style="color: red;">-${c.price}</span>
																			</c:if>
																		</div>
																		<c:set var="count" value="${count+1}"/>
																	</c:if>
																</c:if>
															</c:forEach>
														</td>
													</c:if>

													<!-- 공백출력 -->
													<c:if test="${!(d > 0 && d <= lastDate)}">
														<td></td>
													</c:if>
													</c:forEach>
												</tr>
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
	</div>
	<script
		src="${pageContext.request.contextPath}/assets/libs/jquery/dist/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch-improved.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/extra-libs/sparkline/sparkline.js"></script>
	<!--Wave Effects -->
	<script src="${pageContext.request.contextPath}/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="${pageContext.request.contextPath}/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="${pageContext.request.contextPath}/js/custom.min.js"></script>
	<!-- this page js -->
	<script
		src="${pageContext.request.contextPath}/assets/libs/moment/min/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/libs/fullcalendar/dist/fullcalendar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/dist/js/pages/calendar/cal-init.js"></script>
</body>
</html>
