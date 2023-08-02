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
<title>가계부 출력</title>
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/favicon.png" />
<link href="${pageContext.request.contextPath}/assets/libs/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/extra-libs/calendar/calendar.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/font.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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
	.week-sunday {
        color: red;
    }
    .week-saturday {
        color: blue;
    }
    
    @font-face{
		font-family: 'NanumSquareNeo1';	
		src: url("${pageContext.request.contextPath}/css/font/NanumSquareNeo-aLt.ttf");
	}
	@font-face{
		font-family: 'NanumSquareNeo2';	
		src: url("${pageContext.request.contextPath}/css/font/NanumSquareNeo-bRg.ttf");
	}
	@font-face{
		font-family: 'NanumSquareNeo3';	
		src: url("${pageContext.request.contextPath}/css/font/NanumSquareNeo-cBd.ttf");
	}
	@font-face{
		font-family: 'NanumSquareNeo4';	
		src: url("${pageContext.request.contextPath}/css/font/NanumSquareNeo-dEb.ttf");
	}
	@font-face{
		font-family: 'NanumSquareNeo5';	
		src: url("${pageContext.request.contextPath}/css/font/NanumSquareNeo-eHv.ttf");
	}
	.font1{
		font-family: 'NanumSquareNeo1', sans-serif;
	}
	.font2{
		font-family: 'NanumSquareNeo2', sans-serif;
	}
	.font3{
		font-family: 'NanumSquareNeo3', sans-serif;
	}
	.font4{
		font-family: 'NanumSquareNeo4', sans-serif;
	}
	.font5{
		font-family: 'NanumSquareNeo5', sans-serif;
	}
	.circle_red {
		background-color:#e71c30;
		width:10px;
		height:10px;
		border-radius: 50%;
	}
	.text-info {
		color:#0eb7e2!important;
	}
	.text-success {
		color:#86c88b!important;
	}
</style>
</head>

<body class="font1">
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
					<a style="color:#FFFFFF; font-size: 80%;" href="${pageContext.request.contextPath}/on/logout">로그아웃</a>
				</div>
			</nav>
		</header>
		<!-- 상단바 출력 종료 -->
		<!-- 좌측바 출력 -->
		<aside class="left-sidebar" data-sidebarbg="skin5" style="width:12%;">
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
						<h5 class="page-title font4">Cashbook Calendar</h5>
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
								<div class="col-lg-2 border-right pe-0">
									<div class="card-body border-bottom">
										<h5 class="card-title mt-2 font2">Hash Tag</h5>
									</div>
									<div class="card-body">
										<div class="row">
											<div class="col-md-12">
												<!-- 해시태그 목록 출력 -->
												<div id="calendar-events" class="">
													<div class="calendar-events mb-3" data-class="bg-info">
														<i class="fa fa-circle text-info me-2"></i>
															<a style="color: black;" href="#" class="hashtag-toggle">${targetYear}년 해시태그</a>
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
															<a style="color: black;" href="#" class="hashtag-toggle">${targetMonth+1}월 해시태그</a>
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
										<h2 class="font4" style="text-align: center;">
											<a href="${pageContext.request.contextPath}/on/calendar?targetYear=${targetYear}&targetMonth=${targetMonth-1}">
												<img style="height:25px;" src="${pageContext.request.contextPath}/css/img/click_reverse.png">
												&nbsp;&nbsp;&nbsp;&nbsp;
											</a>
											${targetYear}년${targetMonth+1}월
											&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="${pageContext.request.contextPath}/on/calendar?targetYear=${targetYear}&targetMonth=${targetMonth+1}">
												<img style="height:25px;" src="${pageContext.request.contextPath}/css/img/click.png">
											</a>
										</h2>
									</div>
									<div class="card-body b-l calender-sidebar">
										<div id="calendar">
											<table class="table">
												<tr class="font2">
													<th style="font-weight: bold;" class="week-sunday">일</th>
													<th style="font-weight: bold;">월</th>
													<th style="font-weight: bold;">화</th>
													<th style="font-weight: bold;">수</th>
													<th style="font-weight: bold;">목</th>
													<th style="font-weight: bold;">금</th>
													<th style="font-weight: bold;"class="week-saturday">토</th>
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
														<c:set var="dayOfWeek" value="${((d-1+beginBlank) % 7)}" /> <!-- 0: 일요일, 1: 월요일, ..., 6: 토요일 -->
													    <!-- 토요일과 일요일을 식별하는 클래스 추가 -->
													    <c:set var="weekendClass" value="" />
													    <c:if test="${dayOfWeek == 0}">
													        <c:set var="weekendClass" value="week-sunday" />
													    </c:if>
													    <c:if test="${dayOfWeek == 6}">
													    	<c:set var="weekendClass" value="week-saturday" />
													    </c:if>
														<td style="height: 100px; width: 100px;">
															<div>
																<a class="${weekendClass} font2"
																	href="${pageContext.request.contextPath}/on/dateOne?targetDate=${d}&targetMonth=${targetMonth}&targetYear=${targetYear}">${d}</a>
															</div> 
															<c:set var="count" value="0"/>
															<c:forEach var="c" items="${list}">
																<!-- 날짜별 수입지출을 알기위해 년도를 날짜만 나타나게 자른다 -->
																<c:if test="${d == fn:substring(c.cashbookDate,8,10)}">
																	<c:if test="${count < 2}">
																		<div style="font-size: 9pt;">
																			<c:if test="${c.category == '수입' }">
																				<span style="color: #0061af;">+${c.price}</span>
																			</c:if>
																			<c:if test="${c.category == '지출' }">
																				<span style="color: #e71c30;">-${c.price}</span>
																			</c:if>
																		</div>
																		<c:set var="count" value="${count+1}"/>
																	</c:if>
																</c:if>
															</c:forEach>
															<c:if test="${count==2}">
																<div>
																	<span>...</span>
																</div>
															</c:if>
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
