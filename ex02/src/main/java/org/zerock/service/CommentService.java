package org.zerock.service;

import java.util.List;

import org.zerock.domain.CommentVO;
import org.zerock.domain.Criteria;

public interface CommentService {
	
	public int tip_register(CommentVO vo);
	
	public CommentVO tip_get(Long comment_no);
	
	public int tip_modify(CommentVO vo);
	
	public int tip_remove(Long comment_no);
	
	public List<CommentVO> tip_getList(Criteria cri, Long article_no);

}
