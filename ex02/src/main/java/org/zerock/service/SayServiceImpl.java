package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.SayMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class SayServiceImpl implements SayService {
	
	private SayMapper mapper;
	
	@Override
	public void say_register(BoardVO board) {
		
		log.info("register...." + board);
		
		mapper.say_insertSelectKey(board);
		
	}

	@Override
	public BoardVO say_get(Long article_no) {
		log.info("get......" + article_no);
		
		return mapper.say_read(article_no);
	}

	@Override
	public boolean say_modify(BoardVO board) {
		log.info("modify......" + board);
		
		return mapper.say_update(board) == 1;
	}

	@Override
	public boolean say_remove(Long article_no) {
		log.info("remove......" + article_no);
		
		return mapper.say_delete(article_no) == 1;
	}

	@Override
	public List<BoardVO> say_getList(Criteria cri) {
		log.info("get List with criteria......" + cri);
		
		return mapper.say_getListWithPaging(cri);
	}

	@Override
	public int say_getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.say_getTotalCount(cri);
	}

}
