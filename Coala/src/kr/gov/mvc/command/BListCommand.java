package kr.gov.mvc.command;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kr.gov.mvc.model.BoardDAO;
import kr.gov.mvc.model.BoardDTO;

public class BListCommand implements BCommand {		
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {		// 게시판 리스트를 직접적으로 가져오는 커맨드 객체
		BoardDAO bDao =  BoardDAO.getInstance();
		ArrayList<BoardDTO> boardlist = new ArrayList<>();
		
		int pageNum = 1;
		int limit = 5;			//한페이지에 나타낼 게시글 수
		
		if(request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum")); //페이지 값이 null이 아니라면 해당 페이지를 숫자로 변환하여 저장함.
		}
		
		String items = request.getParameter("items");					//제목,본문, 글쓴이
		String text = request.getParameter("text");						//검색어
		
		int totalRecord = bDao.getListCount(items, text);				//DB저장되어 있는 게시글 총 갯수
		boardlist = bDao.getBoardList(pageNum, limit, items, text);	 	//DB에 저장되어  있는 실제 게시글 가져옴
		
		//홈페이지 수 구하기
		int totalPage = 1;
		
		if(totalPage % limit == 0) {
			totalPage = totalRecord / limit;
			Math.floor(totalPage);
		}else {
			totalPage = totalRecord / limit;
			Math.floor(totalPage);
			totalPage += 1;
		}
		
		//request객체에 각각 해당하는 값 저장 
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("totalRecord", totalRecord);
		request.setAttribute("boardList", boardlist);
	}

}
