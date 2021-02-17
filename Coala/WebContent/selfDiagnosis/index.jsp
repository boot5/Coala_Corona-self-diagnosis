<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>코로나 자가진단</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>
	</head>
	<body class="landing is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!--main_Header -->
					<jsp:include page="../menu/index_menu.jsp" />
 
				<!-- Banner -->
					<section id="banner">
						<div class="inner">
							<h1 id="size">Covid-19<br/>
							코로나<br/>자가진단
							</h1>
						 	<p>코로나 자가진단 서비스 입니다.<br/>
							진단을 시작하려면 하단의 진단시작 아이콘을 선택해 주세요.<br />
							<ul class="actions special">
								<li><a href="diagnosisTest.jsp" class="button primary">자가진단</a></li>
							</ul>
						</div>
						<a href="#one" class="more scrolly">Learn More</a>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style1 special">
						<div class="inner">
							<header class="major">
								<h2>코로나 자가진단 서비스 입니다.<br/>
								
							</header>
							<ul class="icons major">
								<li><span class="icon fa-gem major style1"><span class="label">Lorem</span></span></li>
								<li><span class="icon fa-heart major style2"><span class="label">Ipsum</span></span></li>
								<li><span class="icon solid fa-code major style3"><span class="label">Dolor</span></span></li>
							</ul>
						</div>
					</section>
			

				<!-- CTA -->
					<section id="cta" class="wrapper style4">
						<div class="inner">
							<header>
								<h2>회원가입 자신의 상태를 진단하세요.</h2>
								<p>좌측의 회원가입 버튼을 눌러주세요</p>
							</header>
							<ul class="actions stacked">
								<li><a href="./member/addMember.jsp" class="button fit primary">회원가입</a></li>
								<li><a href="#" class="button fit">Learn More</a></li>
							</ul>
						</div>
					</section>

				<!-- Footer -->
					<jsp:include page="../menu/footer.jsp"/>

			</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>

	</body>
</html>