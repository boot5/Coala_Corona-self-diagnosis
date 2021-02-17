package kr.gov.mvc.command;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gov.mvc.model.BoardDAO;
import kr.gov.mvc.model.BoardDTO;

public class BWriteCommand implements BCommand{			//게시글을 작성하고 그 게시글을 DB에 저장해주는 커맨드 객체

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("BWriteCommand클래스 들어옴");
		
		BoardDAO bDAO = BoardDAO.getInstance();
		BoardDTO boardDTO = new BoardDTO();
		
		boardDTO.setId(request.getParameter("id"));
		boardDTO.setName(request.getParameter("name"));
		boardDTO.setSubject(request.getParameter("subject"));
		boardDTO.setContent(request.getParameter("content"));
		
		/*
			registDay				varchar(30),				  -- 게시글 등록 일자
			hit						int,						  -- 게시글 조회수
			ip						varchar(20),				  -- 게시글 등록 시 IP
		*/
		SimpleDateFormat sFormat = new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss");
		String registDay = sFormat.format(new Date());
		boardDTO.setRegistDay(registDay);
		
		boardDTO.setHit(0);
		boardDTO.setIp(request.getRemoteAddr());
		
		bDAO.insertBoard(boardDTO);				//DB에 저장하는 메서드 호출
		
		System.out.println("BWriteCommand클래스 실행후 나감");
	}

}
