package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AttachVO {

	private int attfile_no;
	private int article_no;
	private String attfile_path;
	private Date attfile_regdate;
	private Date attfile_moddate;
}
