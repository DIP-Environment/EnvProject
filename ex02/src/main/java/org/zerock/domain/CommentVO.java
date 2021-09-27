package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommentVO {
	private Long comment_no;
	private Long article_no;
	
	private String comment_content;
	private String comment_member_id;
	private Date comment_regdate;
	private Date comment_moddate;

}
