package org.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.zerock.domain.CommentVO;
import org.zerock.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CommentMapperTests {
	
	private Long[] article_noArr = { 164L, 179L, 190L, 211L};
	
	@Setter(onMethod_ = @Autowired)
	private CommentMapper mapper;
	
	@Test
	public void testList() {
		Criteria cri = new Criteria();
		List<CommentVO> replies = mapper.tip_getListWithPaging(cri, article_noArr[0]);
		
		replies.forEach(reply -> log.info(reply));
	}
	
/*	@Test
	public void testUpdate() {
		Long targetComment_no = 10L;
		
		CommentVO vo = mapper.tip_read(targetComment_no);
		
		vo.setComment_content("Update Comment ");
		
		int count = mapper.tip_update(vo);
		
		log.info("UPDATE COUNT: " + count);
	}*/
	
	/*	@Test public void testDelete() {
		Long targetComment_no = 1L;
		
		mapper.tip_delete(targetComment_no);
	}
	
		@Test
	public void testRead() {
		Long targetComment_no = 5L;
		
		CommentVO vo = mapper.tip_read(targetComment_no);
		log.info(vo);
	}
	
	@Test
	public void testCreate() {
		IntStream.rangeClosed(1, 10).forEach(i -> {
			CommentVO vo = new CommentVO();
			
			vo.setArticle_no(article_noArr[i%5]);
			vo.setComment_content("댓글 테스트 " + i);
			vo.setComment_member_id("Comment_member_id" + i);
			
			mapper.tip_insert(vo);
		});
	}
	
	@Test
	public void testMapper() {
		log.info(mapper);
	}*/

}
