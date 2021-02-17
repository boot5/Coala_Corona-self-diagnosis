<%@page import="kr.gov.mvc.model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	BoardDTO notice = (BoardDTO)request.getAttribute("boardDTO");
	int num = (Integer)request.getAttribute("num");
	int nowPage = (Integer)request.getAttribute("pageNum");
	
/* 	System.out.println(notice.getName());
	System.out.println(num);
	System.out.println(nowPage); */
	
	String sessionId = (String)session.getAttribute("sessionId");
	String userId = notice.getId();
	
/* 	System.out.println(sessionId);
	System.out.println(userId); */
%>    
    
<!DOCTYPE HTML>
<html>
	<head>
		<title>공지사항</title>
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
							<p></p>
						</header>
						<section class="wrapper style5" >
							<div class="inner">								
								<form action="boardUpdateAction.do?num=<%=notice.getNum() %>&pageNum=<%=nowPage %>" name="newUpdate" class="form-horizontal" method="post">
									<div class="form-group row">
										<label class="col-sm-2 control-label">이름</label>
										<div class="col-sm-3">
											<input name="name" class="form-control" value="<%=notice.getName() %>" readonly> <!-- DB에 저장되어 있는 이름값 출력  -->
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-sm-2 control-label">제목</label>
										<div class="col-sm-3">
										
										<%
											if(sessionId.equals(userId)) {		/* 게시글 작성자가 맞다면 => 수정이 가능하도록 함 */
										%>
											<input name="subject" class="form-control" value="<%=notice.getSubject() %>"> <!-- DB에 저장되어 있는 제목 출력  -->
										<%
											}
											else {
										%>
											<input name="subject" class="form-control" value="<%=notice.getSubject() %>" readonly> <!-- DB에 저장되어 있는 제목 출력  -->
										<%
											}
										%>
										
											
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-sm-2 control-label">내용</label>
										<div class="col-sm-8" style="word-break:break-all">
										<%
											if(sessionId.equals(userId)) {
										%>
											<textarea rows="5" cols="50" name="content" class="form-control"><%=notice.getContent() %></textarea>
										<%				
											}
											else {
										%>
											<textarea rows="5" cols="50" name="content" class="form-control" readonly><%=notice.getContent() %></textarea>
										<%
											}
										%>
										
											
										</div>
									</div>
									
									<div class="form-group row">			<!-- 게시글 작성자가 맞다면, 수정과 삭제 가능 -->
										<div class="col-sm-offset-2 col-sm-10">
											<c:set var="userId" value="<%= notice.getId() %>" />
											<c:if test="${sessionId == userId || sessionId == 'admin'}">
												<p><a href="./boardDeleteAction.do?num=<%=notice.getNum() %>&pageNum=<%=nowPage %>"
															class="button">삭제</a>
												<input type="submit" class="button" value="수정">			
											</c:if>
											<a href="./boardListAction.do?pageNum=<%=nowPage %>" class="button">목록</a>
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