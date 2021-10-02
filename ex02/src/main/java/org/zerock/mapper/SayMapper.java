package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface SayMapper {

	public List<BoardVO> say_getList();
	
	public List<BoardVO> say_getListWithPaging(Criteria cri);
	
	public void say_insertSelectKey(BoardVO board);
	
	public BoardVO say_read(Long article_no);
	
	public int say_delete(Long bno);
	
	public int say_update(BoardVO board);
	
	public int say_getTotalCount(Criteria cri);
}
