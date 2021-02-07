<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- jstl을 사용하기 위해서 taglib라는 지시자 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	String year = request.getParameter("birthyy");
	String month = request.getParameter("birthmm");
	String day = request.getParameter("birthdd");
	String birth = year +"/"+ month +"/"+ day;			/* 생년월일을 3개로 나눠서 받고 다시 문자열로 합침 */
	
	String mail1 = request.getParameter("mail1");
	String mail2 = request.getParameter("mail2");
	String mail = mail1 +"@"+ mail2;					/* 메일도 2개로 나눠서 받고 다시 문자열로 합침 */
	
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	SimpleDateFormat sDFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String registDay = sDFormat.format(new Date()); 	/* 가입버튼 누를때 그 시점으로 저장함 */
%>

<!-- jstl 태그라이브러리의 sql태그를 이용하여 DB에 접속 -->
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/coaladb?serverTimezone=UTC"
	driver="com.mysql.cj.jdbc.Driver"
	user="root"
	password="7496"/>
	
<!-- jstl태그라이브러리 sql태그를 이용하여 DB에 데이터를 입력
	update는 수정, 입력, 삭제까지 처리함 -->	
<sql:update dataSource="${dataSource }" var="resultSet">
	insert into member values(?, ?, ?, ?, ?, ?, ?, ?, ?);
	
	<sql:param value="<%=id %>"/>
	<sql:param value="<%=password %>"/>
	<sql:param value="<%=name %>"/>
	<sql:param value="<%=gender %>"/>
	<sql:param value="<%=birth %>"/>
	<sql:param value="<%=mail %>"/>
	<sql:param value="<%=phone %>"/>
	<sql:param value="<%=address %>"/>
	<sql:param value="<%=registDay %>"/>
</sql:update>	
	
<c:if test="${resultSet >= 1}">
	<c:redirect url="resultMember.jsp?msg=1"/>
</c:if>






