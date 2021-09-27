package org.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*
 * 페이지 번호와 몇 개의 데이터가 필요한지 알려주는 데이터
 */
@Getter
@Setter
@ToString
public class Criteria {
	
	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	/* 1페이지, 10개 */
	public Criteria() {
		this(1, 6);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
		return type == null? new String[] {}: type.split("");
	}

}
