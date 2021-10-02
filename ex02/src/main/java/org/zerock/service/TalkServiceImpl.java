package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.TalkMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class TalkServiceImpl implements TalkService{
	
private TalkMapper mapper;
	
	@Override
	public void talk_register(BoardVO board) {
		
		log.info("register...." + board);
		
		mapper.talk_insertSelectKey(board);
		
	}

	@Override
	public BoardVO talk_get(Long article_no) {
		log.info("get......" + article_no);
		
		return mapper.talk_read(article_no);
	}

	@Override
	public boolean talk_modify(BoardVO board) {
		log.info("modify......" + board);
		
		return mapper.talk_update(board) == 1;
	}

	@Override
	public boolean talk_remove(Long article_no) {
		log.info("remove......" + article_no);
		
		return mapper.talk_delete(article_no) == 1;
	}

	@Override
	public List<BoardVO> talk_getList(Criteria cri) {
		log.info("get List with criteria......" + cri);
		
		return mapper.talk_getListWithPaging(cri);
	}

	@Override
	public int talk_getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.talk_getTotalCount(cri);
	}
	

}
