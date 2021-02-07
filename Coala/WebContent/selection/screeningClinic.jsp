<%@page import="kr.gov.selection.model.SelectionDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	String sessionId = (String)session.getAttribute("sessionId");
	ArrayList<SelectionDTO> selectinoList = (ArrayList<SelectionDTO>)request.getAttribute("selectionlist");
	int totalRecord = ((Integer)request.getAttribute("totalRecord")).intValue();
	int totalPage = ((Integer)request.getAttribute("totalPage")).intValue();
	int pageNum = ((Integer)request.getAttribute("pageNum")).intValue();
%>
    
    
<!DOCTYPE HTML>
<html>
	<head>
		<title>선별 진료소</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<jsp:include page="../menu.jsp"/>

				<!-- Main -->
					<article id="main">
						<header>
							<h2>주변 선별진료소 알아보기</h2>
							<p>검사결과 코로나19 증상이 의심됩니다.</p>
						</header>
						<section class="wrapper style5" align="center">
							<div class="inner">
								
								<div class="row gtr-uniform">
									<div class="col-9 col-12-xsmall">
										<input type="text" name="serch"  placeholder="검색창"> 
									</div>
										<div class="col-3 col-12-xsmall">
										<input type="button" value="검색">
									</div>
								</div>
								시도 및 시군구, 선별진료소, 전화번호를 통합하여 검색합니다.<br/>
								검색어 예시 : '서울' 또는 '중구' 또는 '보건소' 또는 '051'(전화번호 일부) 	
								<table border="1">
									<tr>
										<td>연번</td>
										<td>시도</td>
										<td>시군구</td>
										<td>선별진료소</td>
										<td>전화번호</td>
										<!-- <td>지도</td> -->
									</tr>
									<div>
										<form action="" method="post">
											<div class="text-right">
												<h2><span class="badge badge-danger">전체 건수 : <%=totalPage %></span></h2>
											</div>
										</form>
									</div>
									<%
									for (int i = 0; i<selectinoList.size(); i++){
									%>
									
									<tr>
										<td> <%=selectinoList.get(i).getNum()%> </td>
										<td> <%=selectinoList.get(i).getSido()%> </td>
										<td> <%=selectinoList.get(i).getSigungu()%> </td>
										<td> <%=selectinoList.get(i).getOname()%> </td>
										<td> <%=selectinoList.get(i).getRphone()%> </td>
										<!-- <td>지도</td> -->
									</tr>
									
									<%
									}
									%>

									
								</table>
								
							</div>
						</section>
					</article>

				<!-- Footer -->
					<jsp:include page="../footer.jsp"/>

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