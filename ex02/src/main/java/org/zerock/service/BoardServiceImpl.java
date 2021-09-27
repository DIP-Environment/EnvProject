package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{
	
	//@Setter(onMethod_ = @Autowired)
	//AllArgsConstructor가 모든 파라미터를 이용하는 생성자를 만든다  mapper 자동 주입
	private BoardMapper mapper;
	
	@Override
	public void tip_register(BoardVO board) {
		
		log.info("register...." + board);
		
		mapper.tip_insertSelectKey(board);
		
	}

	@Override
	public BoardVO tip_get(Long article_no) {
		log.info("get......" + article_no);
		
		return mapper.tip_read(article_no);
	}

	@Override
	public boolean tip_modify(BoardVO board) {
		log.info("modify......" + board);
		
		return mapper.tip_update(board) == 1;
	}

	@Override
	public boolean tip_remove(Long article_no) {
		log.info("remove......" + article_no);
		
		return mapper.tip_delete(article_no) == 1;
	}

	@Override
	public List<BoardVO> tip_getList(Criteria cri) {
		log.info("get List with criteria......" + cri);
		
		return mapper.tip_getListWithPaging(cri);
	}

	@Override
	public int tip_getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.tip_getTotalCount(cri);
	}


	
	

}
