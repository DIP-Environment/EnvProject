package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.CommentVO;
import org.zerock.domain.Criteria;

public interface CommentMapper {
	
	public int tip_insert(CommentVO vo);
	
	public CommentVO tip_read(Long Comment_no);
	
	public int tip_delete(Long Comment_no);
	
	public int tip_update(CommentVO comment_content);
	
	public List<CommentVO> tip_getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("article_no") Long article_no);

}
