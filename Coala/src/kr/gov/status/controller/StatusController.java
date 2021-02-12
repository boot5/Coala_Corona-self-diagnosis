package kr.gov.status.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gov.selection.command.CListCommand;
import kr.gov.status.command.STVoewCommand;


public class StatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public StatusController() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
		System.out.println("doGet");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
		System.out.println("doPost");
	}
	

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		System.out.println("accionDo");
		
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String contextPath = request.getContextPath();
		System.out.println("contextPath : " + contextPath);
		
		String command = uri.substring(contextPath.length());
		System.out.println("command : " + command);
		
		response.setContentType("text/html; charse=utf-8");
		request.setCharacterEncoding("UTF-8");
		
		STVoewCommand com = null;
		
		
		if(command.equals("stateViewAction.do")) {	//자신의 상태 불러오기
			System.out.println("--------------------------------");
			System.out.println("/stateViewAction.do 페이지 호출");
			System.out.println("--------------------------------");
			
			
		}
		
	}

}
