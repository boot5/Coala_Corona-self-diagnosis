<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>로그인</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
	

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<jsp:include page="../menu/menu.jsp"/>

				<!-- Main -->
					<article id="main">
						<header>
							<h2>로그인</h2>
							<p>방문해 주셔서 감사합니다.</p>
							<%! int cnt = 0;  %>
						</header>
						<section class="wrapper style5" align="center">
							<div class="inner">
								<!--  -->
								<div class="container" align="center">
									<div class="col-md-4 col-md-offset-4">
										<h3 class="form-signin-heading">Please sing in</h3>
										<%
											String error = request.getParameter("error");	/* 로그인 실패했을때 */
											if(error != null) {								/* 에러발생 */ 
												
												if(cnt == 3) {
													out.println("<div class='alert alert-danger'>");
													out.println("3회 로그인 실패했습니다. 1분 후에 확인해 주세요!");
													out.println("</div>");
												}
												else {
													out.println("<div class='alert alert-danger'>");
													out.println("로그인 실패했습니다. 아이디와 비밀번호를 확인해 주세요!");
													out.println("</div>");
												}
											}
											cnt++;
										%>
										
										<form action="processLoginMember.jsp" method="post" class="form-signin">
											<div class="form-group">
												<label for="inputUserName" class="sr-only">User Name</label>
												<input type="text" class="form-control" placeholder="아이디" name="id" required autofocus>
											</div>
											<div class="form-group">
												<label for="inputUserName" class="sr-only">Password</label>
												<input type="password" class="form-control" placeholder="비밀번호" name="password" required>
											</div>
										
											<button class="btn btn-lg btn-success btn-block" type="submit">로그인</button>
										</form>
									</div>
								</div>
								
							</div>
						</section>
					</article>

				<!-- Footer -->
					<jsp:include page="../menu/footer.jsp"/>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>