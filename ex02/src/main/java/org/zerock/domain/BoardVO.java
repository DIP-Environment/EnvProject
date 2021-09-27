package org.zerock.domain;

import java.util.Date;

import lombok.Data;

/* tip_article_notice 테이블의 칼럼 구조 반영한 VO*/
@Data
public class BoardVO {
	/*private Long bno;
	private String title;
	private String content;
	private String writer;*/
	
	
	private Long article_no;			//글의 번호
	private String article_title;		//제목
	private String article_content;		//내용
	private String article_link;		//링크 경로
	private Date article_regdate;		//등록 날짜
	private Date article_moddate;		//수정 날짜
	private String member_id;			//아이디
	

}
