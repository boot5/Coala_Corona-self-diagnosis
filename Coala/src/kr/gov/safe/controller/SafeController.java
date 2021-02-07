package kr.gov.safe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gov.safe.command.SCListCommand;
import kr.gov.safe.command.SSCommand;


/*@WebServlet("/SelectionController")*/
public class SafeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SafeController() {
    	
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo");
		
		String uri = request.getRequestURI();
		System.out.println("URI : " + uri);
		
		String contextPath = request.getContextPath();
		System.out.println("contextPath : " + contextPath);
		
		String command = uri.substring(contextPath.length());
		System.out.println("command : " + command);
		
		response.setContentType("text/html; charse=utf-8");
		request.setCharacterEncoding("UTF-8");
		
		SSCommand com = null;
		String viewPage = null;
		
		if(command.equals("/safeListAction.do")) {
			System.out.println("--------------------------------");
			System.out.println("/safeListAction.do 페이지 호출");
			System.out.println("--------------------------------");
			
			com = new SCListCommand();
			com.execute(request, response);
			viewPage = "./safe/safeHospital.jsp";
		}
		
		//위의 분기문에서 설정된 view(.jsp)파일로 페이지 이동
				RequestDispatcher rDispatcher = request.getRequestDispatcher(viewPage);
				rDispatcher.forward(request, response);
		
	}

}
