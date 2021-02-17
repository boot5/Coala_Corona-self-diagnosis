package kr.gov.mvc.command;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gov.mvc.model.BoardDAO;
import kr.gov.mvc.model.BoardDTO;

public class BUpdateCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO boardDTO = new BoardDTO();
		
		boardDTO.setNum(num);
		boardDTO.setSubject(request.getParameter("subject"));
		boardDTO.setContent(request.getParameter("content"));
		
		SimpleDateFormat sFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String registDay = sFormat.format(new Date());
		
		boardDTO.setRegistDay(registDay);
		boardDTO.setIp(request.getRemoteAddr());
		
		bDao.updateBoard(boardDTO);
		
	}
	
}
