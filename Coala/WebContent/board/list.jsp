<%@page import="kr.gov.mvc.model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	String sessionId = (String)session.getAttribute("sessionId");
	ArrayList<BoardDTO> boardList = (ArrayList<BoardDTO>)request.getAttribute("boardList");	
	int totalRecord = ((Integer)request.getAttribute("totalRecord")).intValue();
	int totalPage = ((Integer)request.getAttribute("totalPage")).intValue();
	int pageNum = ((Integer)request.getAttribute("pageNum")).intValue();
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
								<form action='<c:url value="./boardListAction.do" />' method="post">
									<div>
										<div class="text-right">
											<h2><span class="badge badge-danger">전체 건수 : <%=totalRecord %></span></h2>
										</div>		
									</div>
									
									<div style="padding-top:50px">			<!-- 게시글 표시 -->
										<table class="table table-hover">
											<tr>
												<th>번호</th>
												<th>제목</th>
												<th>작성일</th>
												<th>조회</th>
												<th>글쓴이</th>
											</tr>
											<%
												for(int i=0; i<boardList.size(); i++) {
													BoardDTO notice = boardList.get(i);
											%>
											<tr>
												<td><%=notice.getNum() %></td>		
												<!-- 게시글 제목클릭하면 해당 게시글이 보일수 있도록 a태그 이용 -->
												<td>
													<%
														if(sessionId == null) {
													%>	
														<a href="#" onclick="loginForm()"><%=notice.getSubject() %></a></td>
														
													<%
														}
														else {
													%>
															<a href="./boardViewAction.do?num=<%=notice.getNum() %>&pageNum=<%=pageNum %>">
																								<%=notice.getSubject() %>
															</a></td>	
													<%
														}
													%>
													
												
												<td><%=notice.getRegistDay() %></td>
												<td><%=notice.getHit() %></td>
												<td><%=notice.getName() %></td>
											</tr>			
											<%	
												}
											%>
											
										</table>
									</div>
									
									<div align="center"> 		<!-- 페이지 수 표시 --> 
										<c:set var="pageNum" value="<%=pageNum %>" /> <!-- 페이지수를 jstl로 표시 -->
										<c:forEach var="i" begin="1" end="<%=totalPage %>" >
											<a href=' <c:url value="./boardListAction.do?pageNum=${i }" />'>
												<c:choose>
													<c:when test="${pageNum==i }">
														<font color="4C5317"><b>[${i }]</b></font>
													</c:when>
													<c:otherwise>
														<font color="4C5317">[${i }]</font>
													</c:otherwise>
												</c:choose>
											</a>
										</c:forEach>	
									</div>
									
									<div align="left">		<!-- 검색 -->
										<table>
											<tr>
												<td width="100%" align="left">&nbsp;&nbsp;
													<select name="items" class="col-9 col-12-xsmall">
														<option value="subject">제목</option>
														<option value="content">본문</option>	
														<option value="name">글쓴이</option>		
													</select>
													<input name="text" type="text" />
													<input type="submit" id="btnAdd" class="col-9 col-12-xsmall" value="검색">
												</td>
												<td width="100%" align="right">
													<!-- 로그인 된 회원들만 글쓰기 가능하도록 하기위해서 checkForm()함수추가 -->
													<h3><a href="#" onclick="checkForm()" class="button">글쓰기</a></h3>
												
												</td>
											</tr>
										</table>
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
			<script type="text/javascript">
				function checkForm() {
					if(${sessionId == null}) {				/* 로그인여부 판단 */
						alert("로그인해야 작성할수 있습니다");
						return false;
					}
					
					//로그인되었다면
					location.href = "./boardWriteForm.do?id=<%=sessionId %>"	
				} 
				
				function loginForm() {
					if(${sessionId == null}) {				/* 로그인여부 판단 */
						alert("로그인해야 게시글을 볼수 있습니다");
						return false;
					}
				}
			</script>
	</body>
</html>