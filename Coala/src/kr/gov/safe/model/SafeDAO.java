package kr.gov.safe.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import kr.gov.selection.database.DBConnection;

public class SafeDAO {
	private Connection conn = null;		//DB접속시 필요한 객체
	private PreparedStatement pstmt= null;
	private ResultSet rs = null;
	private ArrayList<SafeDTO> dtos = null;
	
	private static SafeDAO instance;
	
	public SafeDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static SafeDAO getInstance() { 			//싱글톤 패턴으로 BoardDAO객체 하나만 만들어서 리턴.
		if(instance == null) {
			instance = new SafeDAO();
		}
		return instance;
	}
	
	//selection_csv 테이블에 레코드 가져오는 메서드
	//page : 게시물 페이지 숫자, limit : 페이지당 게시물 수, items : 제목, 본문, 글쓴이, text : 검색어
	public ArrayList<SafeDTO> getSafeList(int page, int limit, String items, String text) {
		
		int totalRecord = getListCount(items, text); 	//selection_csv 테이블의 전체 레코드 개수
		int start = (page - 1) * limit;					//선택 page이전까지의 레코드 개수
		int index = start + 1; 							//선택 page 시작 레코드(게시물)
		
		String sql = "";
		dtos = new ArrayList<SafeDTO>();
		
		if(items == null && text == null) {				//파라미터로 넘어오는 검색기능이 두군데 모두 아무값이 없는 경우
			sql = "select * from safe_csv order by num desc";
		}
		else { 
			sql = "select * from safe_csv where " +items+ "like '%"+text+"%' order by num desc";  //매개변수가 파라미터로 넘어오는 값으로 검색
		} 
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = pstmt.executeQuery();
			
			while(rs.absolute(index)) {		//가령 6페이지를 보고있다가 1페이지를 클릭하게되면 -> 마이너스값이 되면안됨. 
				SafeDTO selection = new SafeDTO();
				
				selection.setNum(rs.getInt("num"));
				selection.setSsido(rs.getString("ssido"));
				selection.setSsigungu(rs.getString("ssigungu"));
				selection.setSoname(rs.getNString("soname"));
				selection.setSaddress(rs.getString("saddress"));
				selection.setSdiagnosis(rs.getString("sdiagnosis"));
				selection.setSrphone(rs.getString("srphone"));
			
				
				dtos.add(selection);
				
				//인덱스가 가져올 데이터건수 보다 작다면 
				if(index < (start + limit) && index <= totalRecord) {
					index ++;
				}
				else {
					break;
				}
				
			}
			
		}catch (Exception e){
			System.out.println("getSafeList() 예외" + e.getMessage());
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				System.out.println("getSafeList()의 close() 호출 예외" + e2.getMessage());
				e2.printStackTrace();
			}
		}
		
		return dtos;
	}
	
	//selection_csv 테이블에 레코드 개수를 가져오는 메서드
	public int getListCount(String items, String text) {
		
		int count = 0;
		String sql = "";
		
		//파라미터로 넘어오는 검색기능 두군데 모두 아무값도 없는 경우
		if(items == null && text == null) {
			sql = "select count(*) from safe_csv";
		}
		else {
			sql = "select count(*) from safe_csv where " +items+ "like '%"+text+"%' "; //파라미터로 넘어오는 값으로 검색
		}
		
	
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
			
			
		} catch (Exception e) {
			System.out.println("getListCount() 예외" + e.getMessage());
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				System.out.println("getListCount()의 close() 호출 예외" + e2.getMessage());
				e2.printStackTrace();
			}
		}
			
		return count;
	}
	
}
