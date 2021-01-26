<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Spectral by HTML5 U   P
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Generic - Spectral by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
				<jsp:include page="menu.jsp"/>
				
				<!-- Main -->
					<article id="main">
						<header>
							<h2>Generic Page</h2>
							<p>Aliquam ut ex ut interdum donec amet imperdiet eleifend</p>
						</header>
						<section class="wrapper style5">
							<div class="inner">

								<form action="./processAddProduct.jsp" name="newProduct" class="form-horizontal">
									<div class="form-group row">
								
										<!-- col-2(기본화면) col-2-small(작은화면) -->
										<label class="col-2 col-2-small"><b>상품 코드</b></label>
										<div class="col-3 col-3-small">
											<input type="text" name="productId" class="form-control" placeholder="상품코드를 입력하세요.">
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-2 col-2-small"><b>상품명</b></label>
										<div class="col-3 col-3-small">
											<input type="text" name="pname" class="form-control" placeholder="상품명를 입력하세요.">
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-2 col-2-small"><b>가격</b></label>
										<div class="col-3 col-3-small">
											<input type="text" name="unitprice" class="form-control" placeholder="가격을 입력하세요.">
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-2 col-2-small"><b>상세 정보</b></label>
										<div class="col-5 col-5-small">
											<textarea rows="2" cols="50" name="description" class="form-control"></textarea>
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-2 col-2-small"><b>제조사</b></label>
										<div class="col-5 col-5-small">
											<input type="text" name="menufecturer" class="form-control" placeholder="제조사를 입력하세요.">
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-2 col-2-small"><b>분류</b></label>
										<div class="col-5 col-5-small">
											<input type="text" name="category" class="form-control" placeholder="분류를 입력하세요.">
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-2 col-2-small"><b>제고 수</b></label>
										<div class="col-5 col-5-small">
											<input type="text" name="numberOfstock" class="form-control" placeholder="제고 수를 입력하세요.">
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-2 col-2-small"><b>상태</b></label>
										<div class="col-7 col-5-small">
											<input type="radio" id="demo-priority-normal" name="condition" value="New">
											<label for="demo-priority-normal">신규 제품</label>
											<input type="radio" id="demo-priority-normal" name="condition" value="Old">
											<label for="demo-priority-normal">중고 제품</label>
											<input type="radio" id="demo-priority-normal" name="condition" value="Refurbished">
											<label for="demo-priority-normal">재생 제품</label>
										</div>
									</div>
									
									<div class="form-group row">
										<!-- offset지점은 col의 2만큼 띄움 -->
										<div class="col-sm-offset-2 col-10-small">
											<input type="submit" class="btn btn-primary" value="등록">
										</div>
									</div>
									
								</form>
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
