package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	@GetMapping("/envMain")
	public void main() {}
	
	/* 팁 목록 출력 (페이징 처리) */
	@GetMapping("/tipList")
	public void tip_list(Criteria cri, Model model) {
		log.info("tipList: " + cri);
		model.addAttribute("list", service.tip_getList(cri)); 		//목록
		
		int total = service.tip_getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total)); //페이지 정보
		//System.out.println(service.getList());
		
	}
	
	/* tipList에서 등록버튼을 눌러 이동 시 등록 화면만 표시*/
	@GetMapping("/register")
	public void tip_register() {
		
	}
	
	/* 등록화면에서 데이터 입력 후 submit버튼을 누를 경우 사용*/
	@PostMapping("/register")
	public String tip_register(BoardVO board, RedirectAttributes rttr) {
		log.info("register: " + board);
		board.setMember_id("id");
		service.tip_register(board);
		
		rttr.addFlashAttribute("result", board.getArticle_no()); //modal창에서 사용
		
		return "redirect:/board/tipList";
	}
	
	/* get은 조회 페이지이며, 모든 데이터가 읽기 전용 */
	@GetMapping({"/get", "/modify"})
	public void tip_get(@RequestParam("article_no") Long article_no, @ModelAttribute("cri")Criteria cri, Model model) {
		
		log.info("/get of modify");
		model.addAttribute("board", service.tip_get(article_no));
	}
	
	
	@PostMapping("/modify")
	public String tip_modify(BoardVO board, @ModelAttribute("cri")Criteria cri, RedirectAttributes rttr) {
		log.info("modify: " + board);
		
		if(service.tip_modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/tipList";
	}
	
	@PostMapping("/remove")
	public String tip_remove(@RequestParam("article_no") Long article_no, @ModelAttribute("cri")Criteria cri, RedirectAttributes rttr) {
		log.info("remove..." + article_no);
		if(service.tip_remove(article_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/tipList";
	}
}


