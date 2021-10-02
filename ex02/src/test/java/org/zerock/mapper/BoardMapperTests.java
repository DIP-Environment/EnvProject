package org.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
/*	@Test
	public void testPaging() {
		Criteria cri = new Criteria();
		cri.setPageNum(3);
		cri.setAmount(10);
		List<BoardVO> list = mapper.getListWithPaging(cri);
		list.forEach(board -> log.info(board.getArticle_no()));
	}*/
	
/*	@Test
	public void testSearch() {
		Criteria cri = new Criteria();
		cri.setKeyword("새로");
		cri.setType("TC");
		
		List<BoardVO> list = mapper.tip_getListWithPaging(cri);
		list.forEach(board -> log.info(board));
	}*/
	@Test
	public void testGetList() {
		mapper.tip_getList().forEach(board ->log.info(board));
		
	}
	
/*	@Test
	public void testInsert() {
		BoardVO board = new BoardVO();
		board.setArticle_title("새로 작성하는 글");
		board.setArticle_content("새로 작성하는 내용");
		board.setMember_id("id");
		
		mapper.insert(board);
		log.info(board);
	}*/
	
/*	@Test
	public void testInsertSelectKey() {
		BoardVO board = new BoardVO();
		board.setArticle_title("새로 작성하는 글 select key");
		board.setArticle_content("새로 작성하는 내용 select key");
		board.setMember_id("id");
		
		mapper.insertSelectKey(board);
		log.info(board);
	}*/
	
/*	@Test
	public void testRead() {
		BoardVO board = mapper.read(5L);
		
		log.info(board);
	}*/
	
/*	@Test
	public void testDelete() {
		log.info("DELETE COUNT: " + mapper.delete(1L));
	}*/
	
/*	@Test
	public void testUpdate() {
		BoardVO board = new BoardVO();
		board.setArticle_no(5L);
		board.setArticle_title("수정된 제목");
		board.setArticle_content("수정된 내용");
		board.setMember_id("id");
		int count = mapper.update(board);
		log.info("UPDATE COUNT: " + count);
		
	}*/
}
