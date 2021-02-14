<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
							
<%
	int jumsu = 0;
	int total = 0;
	String level = "";
%>

<%
	for(int i=1; i<7; i++){
		String mind = request.getParameter("mind"+i);
		if(mind.equals("sel1")){jumsu=5;}
		else if(mind.equals("sel2")){jumsu=4;}
		else if(mind.equals("sel3")){jumsu=3;}
		else if(mind.equals("sel4")){jumsu=2;}
		else {jumsu=1;}
		total += jumsu;
		
		double retotal = total - 5;
		System.out.println("retotal : "+retotal);
		double ptotal = (retotal / 25) * 100 ;
		System.out.println("ptotal : "+ptotal);
		
		System.out.println(ptotal);
		session.setAttribute("ptotal", ptotal);
		
	}
	if (total <13){
		level = " ";
		response.sendRedirect("notCorona.jsp");
		session.setAttribute("total", total);
	}
	else if (total <19){
		level = " ";
		response.sendRedirect("coronaSuspicion.jsp");
		session.setAttribute("total", total);
	}
	else {
		level = " ";
		response.sendRedirect("coronaSuspicion.jsp");
		session.setAttribute("total", total);
	}
%>


		