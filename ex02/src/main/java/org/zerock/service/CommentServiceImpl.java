package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.CommentVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.CommentMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CommentServiceImpl implements CommentService{
	
	@Setter(onMethod_ = @Autowired)
	private CommentMapper mapper;
	
	@Override
	public int tip_register(CommentVO vo) {
		log.info("register...." + vo);
		
		return mapper.tip_insert(vo);
	}

	@Override
	public CommentVO tip_get(Long comment_no) {
		log.info("get....." + comment_no);
		
		return mapper.tip_read(comment_no);
	}

	@Override
	public int tip_modify(CommentVO vo) {
		log.info("modify....." + vo);
		
		return mapper.tip_update(vo);
	}

	@Override
	public int tip_remove(Long comment_no) {
		log.info("remove...." + comment_no);
		
		return mapper.tip_delete(comment_no);
	}

	@Override
	public List<CommentVO> tip_getList(Criteria cri, Long article_no) {
		log.info("get Comment List of a Board " + article_no);
		return mapper.tip_getListWithPaging(cri, article_no);
	}

}
