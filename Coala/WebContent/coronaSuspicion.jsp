<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>코로나19 증상이 의심됩니다.</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link rel = "stylesheet" href = ".//css//circle.css">
	</head>
	<%
	double ptotal = (double)session.getAttribute("ptotal");
	
	
	%>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
				<jsp:include page="menu.jsp"/>
				
				<!-- Main -->
					<article id="main">
						<header>
							<h2>코로나19 증상이 의심됩니다.</h2>
							<p>Corona 19 symptoms are suspected.</p>
						</header>
						<section class="wrapper style5">
							<div class="inner">								
								<FORM METHOD="POST" ACTION="${pageContext.request.contextPath}/selectionListAction.do?pageNum=1">
									<section align="center">
										<h4 style="color: red;">코로나19 증상이 의심됩니다.<br/><br/>											
											먼저 관할 보건소 또는 1339 콜센터 등의 상담을 받으신 후 
											선별진료소를 방문하시기 바랍니다.<br/>
											<br/>
											※ 토요일, 일요일/공휴일에 선별진료소 방문시 해당기관의 운영시간 유선 확인 필요
										</h4>
									</section>
									<br/>											
									<section>
											<div class="row">
												<div>
													<div class = "c100 p<%=(int)ptotal %> big orange" >
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
										<input type = "submit" value="선별진료소 알아보기" />	
									</section>
						
								</FORM>							
							</div>
						</section>
													
					</article>
				<!-- Footer -->
					<jsp:include page="footer.jsp"/>

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