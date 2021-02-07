package kr.gov.selection.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gov.selection.model.SelectionDAO;
import kr.gov.selection.model.SelectionDTO;

public class CListCommand implements SCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		SelectionDAO sDao = SelectionDAO.getInstance();
		ArrayList<SelectionDTO> selectionlist = new ArrayList<>();
		
		int pageNum = 1;
		int limit = 5;			//한페이지에 나타낼 게시글 수
		
		if(request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum")); //페이지 값이 null이 아니라면 해당 페이지를 숫자로 변환하여 저장함.
		}
		
		String items = request.getParameter("items");					//제목,본문, 글쓴이
		String text = request.getParameter("text");						//검색어
		
		int totalRecord = sDao.getListCount(items, text);				//DB저장되어 있는 게시글 총 갯수
		selectionlist = sDao.getSelectionList(pageNum, limit, items, text);	 	//DB에 저장되어  있는 실제 게시글 가져옴
		
		//홈페이지 수 구하기
		int totalPage = 0;
		
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
		request.setAttribute("selectionlist", selectionlist);
		
	}

}
