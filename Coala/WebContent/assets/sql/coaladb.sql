create database coaladb;
use coaladb;
create table member(
	id				varchar(10) not null, -- ���̵� 
	password		varchar(10) not null, -- ��й�ȣ
	name			varchar(10) not null, -- �̸�
	gender			varchar(4),			  -- ����
	birth			varchar(10), 		  -- ����
	mail			varchar(30),		  -- �̸���
	phone			varchar(20), 		  -- ��ȭ��ȣ
	address    		varchar(90), 		  -- �ּ�	
	registDay		varchar(50), 		  -- ������
	primary key(id)
);

select * from member

insert into member values('gumi','0217','�̹��','��','2000/01/01',
'lee@ggmail.com', '010', '����', '2021/02/03');

insert into member values('admin','admin0217','������', '', '', '', '', '', '');


select * from selection_csv;
desc selection_csv;

alter table selection_csv add num int auto_increment primary key; 

select * from selection_csv order by num desc;
