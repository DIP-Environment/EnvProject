package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface TalkService {
	
	public void talk_register(BoardVO board);
	
	public BoardVO talk_get(Long article_no);
	
	public boolean talk_modify(BoardVO board);
	
	public boolean talk_remove(Long article_no);
	
	public List<BoardVO> talk_getList(Criteria cri);
	
	public int talk_getTotal(Criteria cri);

}
