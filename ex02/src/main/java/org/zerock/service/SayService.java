package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface SayService {
	
	public void say_register(BoardVO board);
	
	public BoardVO say_get(Long article_no);
	
	public boolean say_modify(BoardVO board);
	
	public boolean say_remove(Long article_no);
	
	public List<BoardVO> say_getList(Criteria cri);
	
	public int say_getTotal(Criteria cri);

}
