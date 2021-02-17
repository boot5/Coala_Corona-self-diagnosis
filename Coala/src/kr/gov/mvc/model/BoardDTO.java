package kr.gov.mvc.model;

/*
 	num                     int not null auto_increment,  -- 게시글 순번
	id		                varchar(10) not null,		  -- 회원 아이디
	name 				    varchar(20) not null,		  -- 회원 이름
	subject				    varchar(100) not null,        -- 게시글 제목
	content					text         not null,		  -- 게시글 내용 
	registDay				varchar(30),				  -- 게시글 등록 일자
	hit						int,						  -- 게시글 조회수
	ip						varchar(20),				  -- 게시글 등록 시 IP
*/

public class BoardDTO {
	private int num;
	private String id;
	private String name;
	private String subject;	
	private String content;
	private String registDay;
	private int hit;
	private String ip;
	
	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}
	
	//getter, setter
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegistDay() {
		return registDay;
	}
	public void setRegistDay(String registDay) {
		this.registDay = registDay;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
}
