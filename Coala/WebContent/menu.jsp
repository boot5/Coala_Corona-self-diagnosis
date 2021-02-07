<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%
	request.setCharacterEncoding("UTF-8");
	String sessionId = (String)session.getAttribute("sessionId");	//로그인 여부 판단
%>
<!-- Header -->
<!-- header고정하려고 class변경함 기본값 alt -->
<header id="header" class="alt2">
  <a href="${pageContext.request.contextPath}/index.jsp" class="nav-item">
                               Coala
                               <!-- <img src="img/logo.png" alt="Logo"> -->
                           </a>
	<h1><a href="index.html"></a></h1>
	<nav id="nav">
	       <!-- <a href="#" class="nav-item">코로나?</a> -->
	       		
                          <a href="${pageContext.request.contextPath}/safeHospital.jsp" class="nav-item">안심병원</a>
                          <a href="${pageContext.request.contextPath}/selectionListAction.do?pageNum=1">선별진료소</a>
                          <a href="${pageContext.request.contextPath}/diagnosisTest.jsp" class="nav-item">자가진단</a>
                          <a href="#" class="nav-item">뉴스정보</a>
                          <a href="#" class="nav-item">공지사항</a>
           <c:choose>
           		<c:when test="${empty sessionId }"> 
        			<a href='<c:url value="/member/loginMember.jsp" />' class="nav-item">로그인</a>
                    <a href='<c:url value="/member/addMember.jsp" />' class="nav-item">회원가입</a>
              	</c:when>
              	<c:otherwise> 
              		<a style="padding-top:7px; color:white;">[<%=sessionId %> 님]></a>
              		<a href='<c:url value="/member/logoutMember.jsp" />' class="nav-item">로그아웃</a>
                    <a href='<c:url value="/member/UpdateMember.jsp" />' class="nav-item">회원수정</a>
              	</c:otherwise>   
           </c:choose>
	</nav>
</header>