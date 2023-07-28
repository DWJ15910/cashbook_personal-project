<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html dir="ltr">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Matrix lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Matrix admin lite design, Matrix admin lite dashboard bootstrap 5 dashboard template" />
<meta name="description"
	content="Matrix Admin Lite Free Version is powerful and clean admin dashboard template, inpired from Bootstrap Framework" />
<meta name="robots" content="noindex,nofollow" />
<title>LOGIN</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/favicon.png" />
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/style.min.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/assets/libs/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<div style="height: 700px;"
		class="main-wrapper
    			auth-wrapper
		        d-flex
		        no-block
		        justify-content-center
		        align-items-center
		        bg-dark">
		<div class="auth-box bg-dark border-top border-secondary">
			<div id="loginform">
				<div class="text-center pt-3 pb-3">
					<strong style="font-size: 18pt; color: white;">CashBook</strong>
				</div>
				<!-- Form -->
				<form class="form-horizontal mt-3" id="loginform" action="${pageContext.request.contextPath}/off/login" method="post">
					<div class="row pb-4">
						<div class="col-12">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text bg-success text-white h-100" id="basic-addon1">
										<i class="mdi mdi-account fs-4"></i>
									</span>
								</div>
								<!-- ID 입력 -->
								<input type="text" id="loginId" name="memberId" value="${cookieId}" class="form-control form-control-lg" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" required="" />
								<span id="loginPwMsg" class="msg"></span>
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text bg-warning text-white h-100"
										id="basic-addon2"> <i class="mdi mdi-lock fs-4"></i>
									</span>
								</div>
								<!-- 비밀번호 입력 -->
								<input type="text" name="memberPw" class="form-control form-control-lg" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1" required="">
								<span id="loginPwMsg" class="msg"></span>
							</div>
						</div>
					</div>
					<div class="row border-top border-secondary">
						<div class="col-12">
							<div class="form-group">
								<!-- 비밀번호 버튼 -->
								<div class="pt-3">
									<input class="form-check-input" type="checkbox" name="idSave" value="y"><strong style="color:white;"> ID저장</strong>
									<button class="btn btn-success float-end text-white" type="submit">로그인</button>
								</div>
							</div>
						</div>
					</div>
				</form>
				<br>
				<div class="d-grid">
					<a class = "btn btn-secondary" style="text-decoration: none; color:#FFFFFF; "href="${pageContext.request.contextPath}/off/addMember">회원가입</a>
				</div>
			</div>
		</div>
	</div>
<script>
	$(document).ready(function(){
		<c:if test="${msg != null}">
			alert('${msg}')
		</c:if>
	});
</script>
</body>
</html>
