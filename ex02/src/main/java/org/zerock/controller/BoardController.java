package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	/* 팁 목록 출력 */
	@GetMapping("/tipList")
	public void list(Model model) {
		log.info("tipList");
		model.addAttribute("list", service.getList()); //tipList에 보낼 데이터
		//System.out.println(service.getList());
		
	}
	
	/* tipList에서 등록버튼을 눌러 이동 시 등록 화면만 표시*/
	@GetMapping("/register")
	public void register() {
		
	}
	
	/* 등록화면에서 데이터 입력 후 submit버튼을 누를 경우 사용*/
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("register: " + board);
		
		service.register(board);
		
		rttr.addFlashAttribute("result", board.getArticle_no()); //modal창에서 사용
		
		return "redirect:/board/tipList";
	}
	
	/* get은 조회 페이지이며, 모든 데이터가 읽기 전용 */
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("article_no") Long article_no, Model model) {
		
		log.info("/get of modify");
		model.addAttribute("board", service.get(article_no));
	}
	
	
	@PostMapping("/modify")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		log.info("modify: " + board);
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/tipList";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("article_no") Long article_no, RedirectAttributes rttr) {
		log.info("remove..." + article_no);
		if(service.remove(article_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/tipList";
	}
}


