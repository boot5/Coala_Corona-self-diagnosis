<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>코로나19 증상이 의심되지 않습니다.</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link rel = "stylesheet" href = "./assets/circlebar/css/circle.css">
	</head>
	<%
	double ptotal = (double)session.getAttribute("ptotal");
	%>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
				<jsp:include page="./menu/menu.jsp"/>
				
				<!-- Main -->
					<article id="main">
						<header>
							<h2>코로나19 증상이 의심되지 않습니다.</h2>
							<p>Corona 19 symptoms are not suspected.</p>
						</header>
						<section class="wrapper style5">
							<div class="inner">								
								<FORM METHOD="POST" ACTION="${pageContext.request.contextPath}/safeListAction.do?pageNum=1">
									<section align="center">
										<h4>코로나 19증상이 의심되지 않습니다.<br/>
											가까운 병원을 찾아 의사와 상담하세요.
										</h4>
									</section>
									<br/>
									<section>
										<div class="row">
											<div class="col-6 col-12-medium">
												<div class = "c100 p<%=(int)ptotal %> big green">
											  <span align="center"> <%=(int)ptotal %>% </span>
											  <div class = "slice">
											    <div class = "bar"> </div>
											    <div class = "fill"> </div>
											  </div>
											</div>
											</div>
										</div>
									</section>
									<br/>
									<section>
										<div class="row gtr-50 gtr-uniform">
											<div class="col-12"><span class="image fit"><img src="images/d1.png" alt="" /></span></div>
										</div>						
									</section>
		
									<% System.out.println("값 : "+ptotal); %>
									<br/>
									<section align="center">
										<input type = "submit" value="안심병원 알아보기" />	
									</section>
				
								</FORM>							
							</div>
						</section>
						
					</article>
				<!-- Footer -->
					<jsp:include page="./menu/footer.jsp"/>

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