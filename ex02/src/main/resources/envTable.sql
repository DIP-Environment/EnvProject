
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
select * from tbl_article;

create table tip_comment (
	comment_no number(10, 0),
	article_no number(10, 0) not null,
	comment_content varchar2(500) not null,
	comment_member_id varchar2(50) not null,
	comment_regdate date default sysdate,
	comment_moddate date default sysdate
);

create sequence seq_tip_comment;

alter table tip_comment add constraint pk_tip_comment primary key (comment_no);

alter table  tip_comment add constraint fk_comment_board foreign key (article_no);
references tip_article_notice (article_no);

select * from tip_article_notice where rownum < 10 order by article_no desc;

select * from tip_comment order by comment_no desc;

/* 세개의 게시판을 하나의 테이블로 변경 */


/* 회원정보 */
DROP TABLE tbl_member 
	CASCADE CONSTRAINTS;


/* 게시판 */
DROP TABLE tbl_article 
	CASCADE CONSTRAINTS;

/* 게시판첨부파일 */
DROP TABLE tbl_attfile 
	CASCADE CONSTRAINTS;

/* 게시판댓글 */
DROP TABLE tbl_comment 
	CASCADE CONSTRAINTS;

/* 회원정보 */
CREATE TABLE tbl_member (
	member_id VARCHAR2(20) NOT NULL, /* 사용자ID */
	member_name VARCHAR2(30) NOT NULL, /* 사용자이름 */
	member_email VARCHAR2(100), /* 사용자이메일 */
	pwd VARCHAR2(200) NOT NULL, /* 비밀번호 */
	regdate date default sysdate NOT NULL, /* 가입일자 */
	moddate date default sysdate NOT NULL, /* 수정일자 */
	pwd_moddate date default sysdate, /* 비밀번호수정일자 */
	pwd_error_num NUMBER(1) DEFAULT 0 NOT NULL, /* 비밀번호에러횟수 */
	admin_yn VARCHAR2(1) DEFAULT 'N' NOT NULL /* 관리자여부 */
);

select * from tbl_member;
insert into tbl_member(member_id, member_name,  member_email, pwd)
values ('admin', '관리자', 'admin@gmail.com', '1234');

update tbl_member set admin_yn = 'Y' where member_id='admin'

delete from tbl_member where member_name='kimkim'

COMMENT ON TABLE tbl_member IS '회원정보';

COMMENT ON COLUMN tbl_member.member_id IS '사용자ID';

COMMENT ON COLUMN tbl_member.member_name IS '사용자이름';

COMMENT ON COLUMN tbl_member.member_email IS '사용자이메일';

COMMENT ON COLUMN tbl_member.pwd IS '비밀번호';

COMMENT ON COLUMN tbl_member.regdate IS '가입일자';

COMMENT ON COLUMN tbl_member.moddate IS '수정일자';

COMMENT ON COLUMN tbl_member.pwd_moddate IS '비밀번호수정일자';

COMMENT ON COLUMN tbl_member.pwd_error_num IS '비밀번호에러횟수';

COMMENT ON COLUMN tbl_member.admin_yn IS '관리자여부';

CREATE UNIQUE INDEX PK_tbl_member
	ON tbl_member (
		member_id ASC
	);

ALTER TABLE tbl_member
	ADD
		CONSTRAINT PK_tbl_member
		PRIMARY KEY (
			member_id
		);

/* 게시판 */
CREATE TABLE tbl_article (
	article_no NUMBER(10) NOT NULL, /* 글번호 */
	bbs_type VARCHAR2(10), /* 게시판구분 */
	member_id VARCHAR2(20), /* 사용자ID */
	article_title VARCHAR2(100), /* 글제목 */
	article_content CLOB, /* 글내용 */
	article_link VARCHAR2(500), /* 글링크 */
	article_regdate date default sysdate , /* 글등록일자 */
	article_moddate date default sysdate /* 글수정일자 */
);

select * from tbl_article where bbs_type = 'say' and (article_no > 0)
insert into tbl_article(article_no, bbs_type,  member_id, article_title, article_content)
values (seq_tip.nextval, 'tip', 'admin', '환경오염', '환경오염의 심각성');

delete from tbl_article where article_no = '245' 253, 252, 255, 251, 147, 145, 146,
	select * from tbl_article		 
select article_no, article_title, article_content, article_link, article_regdate, article_moddate, member_id 
from (select rownum rn, article_no, article_title, article_content, article_link, article_regdate, article_moddate, member_id 
from tbl_article 
where bbs_type = 'tip' and ( article_title like '%' ||'test'||'%' ) AND rownum <= 1 * 6 order by article_no desc ) 
where rn > (1 -1) 

UPDATE tbl_article
SET member_id = '관리자'
where article_no = '227' 
			 

			 
			 
COMMENT ON TABLE tbl_article IS '게시판';

COMMENT ON COLUMN tbl_article.article_no IS '글번호';

COMMENT ON COLUMN tbl_article.bbs_type IS '게시판구분';

COMMENT ON COLUMN tbl_article.member_id IS '사용자ID';

COMMENT ON COLUMN tbl_article.article_title IS '글제목';

COMMENT ON COLUMN tbl_article.article_content IS '글내용';

COMMENT ON COLUMN tbl_article.article_link IS '글링크';

COMMENT ON COLUMN tbl_article.article_regdate IS '글등록일자';

COMMENT ON COLUMN tbl_article.article_moddate IS '글수정일자';

CREATE UNIQUE INDEX PK_tbl_article
	ON tbl_article (
		article_no ASC
	);

ALTER TABLE tbl_article
	ADD
		CONSTRAINT PK_tbl_article
		PRIMARY KEY (
			article_no
		);

/* 게시판첨부파일 */
CREATE TABLE tbl_attfile (
	attfile_no NUMBER(10) NOT NULL, /* 첨부파일번호 */
	article_no NUMBER(10) NOT NULL, /* 글번호 */
	attfile_path VARCHAR2(300), /* 첨부파일경로 */
	attfile_regdate date default sysdate, /* 첨부파일등록일자 */
	attfile_moddate date default sysdate /* 첨부파일수정일자 */
);



COMMENT ON TABLE tbl_attfile IS '게시판첨부파일';

COMMENT ON COLUMN tbl_attfile.attfile_no IS '첨부파일번호';

COMMENT ON COLUMN tbl_attfile.article_no IS '글번호';

COMMENT ON COLUMN tbl_attfile.attfile_path IS '첨부파일경로';

COMMENT ON COLUMN tbl_attfile.attfile_regdate IS '첨부파일등록일자';

COMMENT ON COLUMN tbl_attfile.attfile_moddate IS '첨부파일수정일자';

CREATE UNIQUE INDEX PK_tbl_attfile
	ON tbl_attfile (
		attfile_no ASC,
		article_no ASC
	);

ALTER TABLE tbl_attfile
	ADD
		CONSTRAINT PK_tbl_attfile
		PRIMARY KEY (
			attfile_no,
			article_no
		);

/* 게시판댓글 */
CREATE TABLE tbl_comment (
	comment_no NUMBER(10) NOT NULL, /* 댓글번호 */
	article_no NUMBER(10) NOT NULL, /* 글번호 */
	comment_member_id VARCHAR2(20) NOT NULL, /* 댓글작성자ID */
	comment_content VARCHAR2(500), /* 댓글내용 */
	comment_regdate date default sysdate NOT NULL, /* 댓글작성일자 */
	comment_moddate date default sysdate NOT NULL /* 댓글수정일자 */
);


select * from tbl_comment;
insert into tbl_comment(comment_no, article_no,  comment_member_id, comment_content)
values (seq_tip_comment.nextval, '164', 'admin', '환경오염 심각');
delete from tbl_comment;

COMMENT ON TABLE tbl_comment IS '게시판댓글';

COMMENT ON COLUMN tbl_comment.comment_no IS '댓글번호';

COMMENT ON COLUMN tbl_comment.article_no IS '글번호';

COMMENT ON COLUMN tbl_comment.comment_member_id IS '댓글작성자ID';

COMMENT ON COLUMN tbl_comment.comment_content IS '댓글내용';

COMMENT ON COLUMN tbl_comment.comment_regdate IS '댓글작성일자';

COMMENT ON COLUMN tbl_comment.comment_moddate IS '댓글수정일자';

CREATE UNIQUE INDEX PK_tbl_comment
				 ON tbl_comment (comment_no ASC, article_no ASC);

ALTER TABLE tbl_comment
		ADD
 CONSTRAINT PK_tbl_comment
PRIMARY KEY (comment_no,article_no);
	
	 select  rownum rn, article_no, article_title, article_content, member_id, article_regdate, article_moddate,article_link
	   from TBL_article
   order by article_no asc;

