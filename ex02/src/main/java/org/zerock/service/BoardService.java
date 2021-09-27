package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardService {
	
	public void tip_register(BoardVO board);
	
	public BoardVO tip_get(Long article_no);
	
	public boolean tip_modify(BoardVO board);
	
	public boolean tip_remove(Long article_no);
	
	public List<BoardVO> tip_getList(Criteria cri);
	
	public int tip_getTotal(Criteria cri);

}
