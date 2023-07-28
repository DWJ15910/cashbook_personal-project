<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>Matrix Admin Lite Free Versions Template by WrapPixel</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/assets/images/favicon.png" />
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/style.min.css" rel="stylesheet" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="main-wrapper">
		<div style="height:700px;"
			class="
          auth-wrapper
          d-flex
          no-block
          justify-content-center
          align-items-center
          bg-dark
        ">
			<div class="auth-box bg-dark border-top border-secondary">
				<div>
					<!-- 회원 가입문구 출력 -->
					<div class="text-center pt-3 pb-3">
						<strong style="color:white;"class="db">회원 가입</strong>>
					</div>
					<!-- Form -->
					<form class="form-horizontal mt-3" action="${pageContext.request.contextPath}/off/addMember" method="post">
						<div class="row pb-4">
							<div class="col-12">
								<!-- ID 입력 -->
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text bg-success text-white h-100"id="basic-addon1">
											<i class="mdi mdi-account fs-4"></i>
										</span>
									</div>
									<input type="text" id="addId" name="memberId" class="form-control form-control-lg" placeholder="ID" aria-label="Username" aria-describedby="basic-addon1" required />
								</div>
								<!-- 비밀번호 입력 -->
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text bg-warning text-white h-100"id="basic-addon2">
											<i class="mdi mdi-lock fs-4"></i>
										</span>
									</div>
									<input type="text" id="addPw" name="memberPw" class="form-control form-control-lg"placeholder="Password" aria-label="Password"aria-describedby="basic-addon1" required />
								</div>
								<!-- ID, PW 입력 완료 -->
							</div>
						</div>
						<!-- 전송 버튼 -->
						<div class="row border-top border-secondary">
							<div class="col-12">
								<div class="form-group">
									<div class="pt-3 d-grid">
										<button class="btn btn-block btn-lg btn-info" type="submit">Sign Up</button>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		$(".preloader").fadeOut();
	</script>
</body>
</html>
