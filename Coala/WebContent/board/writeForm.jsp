<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String name = (String)request.getAttribute("name");
	
	System.out.println("writeForm.jsp진입");
%>    
<!DOCTYPE HTML>
<html>
	<head>
		<title>공지사항 등록</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="./assets/css/main.css" />
		<noscript><link rel="stylesheet" href="./assets/css/noscript.css" /></noscript>
		<link rel = "stylesheet" href = "./assets/circlebar/css/circle.css">
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
				<jsp:include page="../menu/menu.jsp"/>
				
				<!-- Main -->
					<article id="main">
						<header>
							<h2>공지사항</h2>
							<p>notice</p>
						</header>
						<section class="wrapper style5" >
							<div class="inner">								
								<form action="./boardWriteAction.do" name="newWrite" class="form-horizontal" method="get" 
										onsubmit="return checkForm()" >
										<input name="id" type="hidden" class="form-control" value="${sessionId }">
										
										<div class="form-group row">
											<label class="col-sm-2 control-label">이름</label>		<!-- 게시글 작성자 이름 표시  -->
											<div class="col-sm-3">
												<input name="name" type="text" class="form-control" value="${name }" readonly>
											</div>
										</div>
										
										<div class="form-group row">								<!-- 게시글의 제목 표시 -->
											<label class="col-sm-2 control-label">제목</label>
											<div class="col-sm-5">
												<input name="subject" type="text" class="form-control" placeholder="제목을 입력하세요.">
											</div>	
										</div>
										
										<div class="form-group row">								<!-- 게시글의 내용 표시 -->
											<label class="col-sm-2 control-label">내용</label>
											<div class="col-sm-8">
												<textarea rows="5" cols="50" name="content" class="form-control"
															placeholder="내용을 입력하세요."></textarea>
											</div> 
										</div>
										
										<div class="form-group row">
											<div class="col-sm-offset-2 col-sm-10">
												<input type="submit" class="button" value="등록" >
												<input type="reset" class="button" value="취소">
											</div>
										</div>
										
								</form>							
							</div>
						</section>
													
					</article>
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