package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface TalkMapper {
	
	public List<BoardVO> talk_getList();
	
	public List<BoardVO> talk_getListWithPaging(Criteria cri);
	
	public void talk_insertSelectKey(BoardVO board);
	
	public BoardVO talk_read(Long article_no);
	
	public int talk_delete(Long bno);
	
	public int talk_update(BoardVO board);
	
	public int talk_getTotalCount(Criteria cri);

}
