package org.zerock.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.CommentVO;
import org.zerock.domain.Criteria;
import org.zerock.service.CommentService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/comm/")
@RestController
@Log4j
@AllArgsConstructor
public class CommentController {
	
	private CommentService service;
	
	@PostMapping(value = "/new",
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody CommentVO vo) {
		
		log.info("CommentVO: " + vo);
		
		int insertCount = service.tip_register(vo);
		
		log.info("Comment INSERT COUNT: " + insertCount);
		
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/pages/{article_no}/{page}",
			produces = {
					MediaType.APPLICATION_XML_VALUE,
					MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<CommentVO>> tip_getList(
			@PathVariable("page") int page,
			@PathVariable("article_no") Long article_no) {
		log.info("getList............");
		Criteria cri = new Criteria(page, 5);
		log.info(cri);
		
		return new ResponseEntity<>(service.tip_getList(cri, article_no), HttpStatus.OK);
	}
	
	@GetMapping(value = "/{comment_no}",
			produces = { MediaType.APPLICATION_ATOM_XML_VALUE,
						 MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<CommentVO> get(@PathVariable("comment_no") Long comment_no) {
		log.info("get: " + comment_no);
		
		return new ResponseEntity<>(service.tip_get(comment_no), HttpStatus.OK);
	}
	
	@DeleteMapping(value = "/{comment_no}", produces={MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("comment_no") Long comment_no) {
		log.info("remove : " + comment_no);
		
		return service.tip_remove(comment_no) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH },
			value="/{comment_no}",
			consumes = "application/json",
			produces = { MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(
			@RequestBody CommentVO vo,
			@PathVariable("comment_no") Long comment_no) {
		vo.setComment_no(comment_no);
		log.info("comment_no : " + comment_no);
		log.info("modify: " + vo);
		
		return service.tip_modify(vo) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
}
