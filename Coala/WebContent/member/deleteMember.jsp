<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%
	String sessionId = (String)session.getAttribute("sessionId");
%>

<!-- DB접속 -->
<!-- jstl 태그라이브러리의 sql태그를 이용하여 DB에 접속 -->
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/coaladb?serverTimezone=UTC"
	driver="com.mysql.cj.jdbc.Driver"
	user="root"
	password="7496"/>
	

<!-- 쿼리 실행 -->
<sql:update dataSource="${dataSource}" var="resultSet">
	delete from member where id = ?
	<sql:param value="<%=sessionId %>" />
</sql:update>

<!-- 페이지 이동 -->
<c:if test="${resultSet >= 1 }">
	<c:import url="logoutMember.jsp" />
	<c:redirect url="resultMember.jsp" />
</c:if>

