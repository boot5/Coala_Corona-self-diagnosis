<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Coala - Login page</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="landing is-preload">

		<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!--main_Header -->
	<jsp:include page="index_menu.jsp"/>

		<!-- Banner -->
	<section id="banner">
						 
	<div class="container" align="center">
	<div class="col-md-4 col-md-offset-4">
	<h1 class="form-signin-heading">나의 증상 관리</h1>
			
			
			
	<div class="outer">
    <br>
        
        
    <table>
		<tr align="center" bgcolor="yellow" >
			<td width="7%"><b>이름</b></td>
			<td width="7%">
			<!--  -->0
			</td>
		</tr>	
		
		<tr align="center" bgcolor="purple">	
			<td width="7%"><b>학교</b></td>
			<td width="7%">
			<!--  -->	0
			</td>
		</tr>
		
		<tr align="center" bgcolor="red">	
			<td width="7%"><b>성별</b></td>
			<td width="7%">
			<!--  -->	0
			</td>
		</tr>
		
		<tr align="center" bgcolor="orange">	
			<td width="7%"><b>생년월일</b></td>
			<td width="7%">
			 <!--  -->0
			</td>
		</tr>
	</table>
	
	<br/>
	
	<table>	
	<tr align="center" bgcolor="pink">	
			<td width="7%"><b>증상여부</b></td>
			<td width="7%">
			<!-- 여부에 따라 O,X 표시 -->0
			</td>
		</tr>
	</table>
	
	<div class="btns" align="center">
       <button type="submit" id="retestBtn">재진단 하기</button>
    </div>
	
	</div>
		</div>
			</div>
				</div>
		
		</section>


				<!-- Footer -->
					<jsp:include page="footer.jsp"/>

	
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