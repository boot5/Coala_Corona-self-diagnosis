package kr.gov.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gov.mvc.model.BoardDAO;

// 게시판의 게시글 작성위해서 사용자명을 가져오는 커맨드 객체
public class BWriteFormCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("BWriteFormCommand 클래스 들어옴");
		
		BoardDAO bDao = BoardDAO.getInstance();
		String id = request.getParameter("id");
		
		String name = bDao.getLoginName(id);
		request.setAttribute("name", name);
		
		System.out.println("BWriteFormCommand 클래스 실행후 나감");
	}

}