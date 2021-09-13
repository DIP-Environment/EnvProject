
create table say_article_notice(
article_no number not null primary key,
article_title varchar2(60) not null,
article_content CLOB not null,
article_regdate date not null,
article_moddate date not null,
article_img_path varchar2(255) null,
article_link varchar(255) not null,
member_id varchar2(20) not null references member(member_id)
);

select * from member;
select * from say_article_notice;
select * from tip_article_notice;

drop table member;
drop table say_article_notice;
drop table tip_article_notice;



drop table tip_article_notice;

create table member(
	member_id varchar2(20) not null primary key,
	member_name varchar2(30) not null,
	member_email varchar2(30) null,
	pwd varchar2(255) not null,
	regdate date not null,
	pwd_moddate date null,
	pwd_error_num number default 0
);

insert into member values('id','name','email',1234,sysdate,sysdate,0);


create sequence seq_tip;

create table tip_article_notice(
	article_no number,
	article_title varchar2(60) not null,
	article_content CLOB not null,
	article_regdate date default sysdate,
	article_moddate date default sysdate,
	article_img_path varchar2(255) null,
	member_id varchar2(20) not null references member(member_id)
);

alter table tip_article_notice add constraint pk_tip primary key(article_no);


insert into tip_article_notice(article_no, article_title,  article_content, member_id)
values (seq_tip.nextval, '테스트 제목', '테스트 내용', 'id');

select * from member;
select * from  tip_article_notice;