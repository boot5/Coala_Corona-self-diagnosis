create database coaladb;
use coaladb;
create table member(
	id				varchar(10) not null, -- 아이디 
	password		varchar(10) not null, -- 비밀번호
	name			varchar(10) not null, -- 이름
	gender			varchar(4),			  -- 성별
	birth			varchar(10), 		  -- 생일
	mail			varchar(30),		  -- 이메일
	phone			varchar(20), 		  -- 전화번호
	address    		varchar(90), 		  -- 주소	
	registDay		varchar(50), 		  -- 가입일
	primary key(id)
);

select * from member

insert into member values('gumi','0217','이방원','남','2000/01/01',
'lee@ggmail.com', '010', '구미', '2021/02/03');

insert into member values('admin','admin0217','관리자', '', '', '', '', '', '');


select * from selection_csv;
desc selection_csv;

alter table selection_csv add num int auto_increment primary key; 

select * from selection_csv order by num desc;
