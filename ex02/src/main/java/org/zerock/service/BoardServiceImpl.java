package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
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
	public void register(BoardVO board) {
		
		log.info("register...." + board);
		
		mapper.insertSelectKey(board);
		
	}

	@Override
	public BoardVO get(Long article_no) {
		log.info("get......" + article_no);
		
		return mapper.read(article_no);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("modify......" + board);
		
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long article_no) {
		log.info("remove......" + article_no);
		
		return mapper.delete(article_no) == 1;
	}

	@Override
	public List<BoardVO> getList() {
		log.info("getList......");
		
		return mapper.getList();
	}


	
	

}
