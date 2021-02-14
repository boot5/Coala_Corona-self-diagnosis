<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>회원 정보</title>
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
							<h2>회원정보</h2>
							<p></p>
						</header>
						<section class="wrapper style5" align="center">
							<div class="inner">
								
								<div class="container">
									<%
										String msg = request.getParameter("msg");
										if(msg != null) {
											if(msg.equals("0")) {
												out.println("<h2 class='alert alert-danger'> 회원 정보가 수정 되었습니다. </h2>");
											}
											else if(msg.equals("1")) {
												out.println("<h2 class='alert alert-danger'> 회원 가입을 축하드립니다. 로그인해 주세요. </h2>");
											}
											else if(msg.equals("2")) {
												String loginId = (String)session.getAttribute("sessionId");
												out.println("<h2 class='alert alert-danger'> "+loginId+"님 환영합니다. </h2>");
											}
											else if(msg.equals("3")) {
												out.println("<h2 class='alert alert-danger'> 로그아웃 하셨습니다. </h2>");
											}
										}
										else {
											out.println("<h2 class='alert alert-danger'> 회원 정보가 삭제되었습니다. </h2>");
										}
									%>
								
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