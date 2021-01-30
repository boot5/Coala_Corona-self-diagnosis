<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>코로나 자가진단 검사</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<%

		String arr[] = { "1.37.5도 이상 발열이 있었나요? ", "2. 잦은 기침 증상이나 인후통, 일반적인 감기(콧물, 기침, 발열) 증상이 있었나요?",
				"3. 최근 14일 이내에 확진자, 접촉자와 만난 적이 있었나요?", "최근 14일 이내에 해외여행을 다녀오셨거나, 해외에서 오신 가족이나 주변인을 만난 적이 있었나요?",
				"5.가족 등 함께 생활하는 분 중 최근 고열 또는 감기증상은 있었나요?", "6. 최근 보건당국에서 코로나19 관련연락이 있었나요?" };
		String ans[] = { "매우 그렇다", "그렇다", "보통이다.", "아니다.", "매우아니다." };
		int i = 1;
		int j = 1;
		int arrlen = arr.length;
		String groupname = "";
		String selname = "";
	%>


	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
				<jsp:include page="menu.jsp"/>
				
				<!-- Main -->
					<article id="main">
						<header>
							<h2>자가진단 검사</h2>
							<p>Corona self-diagnosis Test</p>
						</header>
						<section class="wrapper style5">
							<div class="inner">								
								<FORM METHOD="POST" ACTION="processDiagnosisTest.jsp">
									<table>							
										<%							
											for (String data : arr) {							
												groupname = "mind" + i;	
										%>							
										<tr>						
											<td colspan=5>진단: <%=data%>						
											</td>							
										</tr>							
										<tr>							
										<%						
												for (String str : ans) {							
														selname = "sel" + j;							
										%>																					
											<td><input type="radio" id=<%=arrlen%> name=<%=groupname%> value = <%=selname%>><label for=<%=arrlen%>><%=str%></label></td>							
										<%							
												j += 1;
												arrlen -= 1;	
												}							
										%>							
										</tr>							
										<%							
												j = 1;							
												i += 1;							
											}							
										%>							
									</table>	
										<input type = "submit" value="검사결과 확인" />	
										<input type = "reset" value="선택취소"  />						
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