package org.zerock.mapper;

import java.sql.Blob;
import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	
	public List<BoardVO> tip_getList();
	
	public List<BoardVO> tip_getListWithPaging(Criteria cri);
	
	public void tip_insertSelectKey(BoardVO board);
	
	public BoardVO tip_read(Long article_no);
	
	public int tip_delete(Long bno);
	
	public int tip_update(BoardVO board);
	
	public int tip_getTotalCount(Criteria cri);

}
