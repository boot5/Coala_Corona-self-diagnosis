<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	<!-- jstl를 사용하기위해서 taglib지시자 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
%>
								<!-- jstl태그라이브러리의 sql태그 이용하여 DB 접속하는 코드 -->
<sql:setDataSource var="dataSource"
					url="jdbc:mysql://localhost:3306/coaladb?serverTimezone=UTC"
					driver="com.mysql.cj.jdbc.Driver"
					user="root"
					password="7496"/>
								<!-- sql쿼리문 실행하는 코드, executeQuery()기능과 유사 -->	
<sql:query dataSource="${dataSource}" var="resultSet"> 
	select * from member where id = ? and password = ?
	<sql:param value="<%=id %>" />
	<sql:param value="<%=password %>" />
</sql:query>					

<c:forEach var="row" items="${resultSet.rows}">
	<%
		session.setAttribute("sessionId", id);			/* 로그인이 되면 사용자 아이디를 세션에 설정함(저장) */
	%>
	<c:redirect url="resultMember.jsp?msg=2"/>			<!-- 로그인 의미로 사용할 것이다. -->
</c:forEach>

<c:redirect url="loginMember.jsp?error=1"/>



