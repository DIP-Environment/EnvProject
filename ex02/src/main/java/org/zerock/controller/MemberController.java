package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.Criteria;
import org.zerock.domain.MemberVO;
import org.zerock.service.BoardService;
import org.zerock.service.MemberService;
import org.zerock.service.SayService;
import org.zerock.service.TalkService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	
	private MemberService memberService;
	private BoardService service;
	private SayService sayservice;
	private TalkService talkservice;
	
	public static Long checkTime = 0L;//5분후 시간.
	public static long nowTime = System.currentTimeMillis(); //현재 시간.
	
	//처음에 실행했을 때!
	@GetMapping("/join")
	public void join() {
		
	}
	
	//텍스트 입력 후 확인 버튼을 눌렀을 때
	@PostMapping("/join")
	public String join(MemberVO member, HttpServletRequest request) {
		member.setPassword(request.getParameter("password")); //암호화후 저장하기.
		int a = memberService.insertMember(member);
		System.out.println("a => " + a);
		return "redirect:/member/login";
	}
	
	//처음에 실행했을 때!
	@GetMapping("/login")
	public void login() {
		
	}
	//로그인
	@PostMapping("/login")
	public String login(MemberVO member, HttpServletRequest request, Criteria cri, Model model){
		String memberId = request.getParameter("memberId");
		
		member.setMemberId(memberId); //id
		member.setPassword(request.getParameter("password")); //비밀번호
		model.addAttribute("list", service.tip_getList(cri));
		model.addAttribute("sayList", sayservice.say_getList(cri));
		model.addAttribute("talkList", talkservice.talk_getList(cri));
		
		MemberVO pwd_err_num = memberService.selectPasswordErrorNum(memberId);//비번 틀린 횟수 가지고오기.
		//비번 틀렸을 때 passwordError의 값을 증가시켜서 디비에 저장하기.
		int passwordError = pwd_err_num.getPasswordErrorNum();
		MemberVO m = memberService.login(member);
		System.out.println("Login 정보 => " + m);
		
		//3. DB에서 반환받은 결과를 가지고 응답할 페이지를 선정
		// m변수가 null이면 로그인실패, m값이 null이 아니면 로그인 성공
		if(m!=null && passwordError < 3) {
			//비번 에러 값 초기화 == 0
			passwordError = 0;
			int result=memberService.updatePasswordErrorNum(passwordError, memberId); //update하기.
			String strNum=result>0?"비번에러 0으로 초기화 성공":"비번에러 0으로 초기화 실패";
			System.out.println("비번 에러=>" + strNum);
			
			//로그인 성공
			HttpSession session=request.getSession();
			session.setAttribute("loginMember", m.getMemberName()); //세션 저장
			session.setAttribute("adminCheck", m.getAdmin_yn());
			session.setAttribute("IdCheck", m.getMemberId());
			
			System.out.println("loginMember : " + m.getMemberName());
			System.out.println("IdCheck : " + m.getMemberId());
			//session객체에 대한 설정 및 정보를 가져오는 매소드가 있음
			//getCreateTime() -> 세션생성시간 
			//getLastAccessedTime() -> 마지막 요청시간
			//getMaxInactiveInterval() -> 최대허용시간
			
			System.out.println("최대유지시간 : "+session.getMaxInactiveInterval());
			System.out.println("최대유지시간 : "+session.getMaxInactiveInterval());

			System.out.println("로그인 성공");
			return "/board/envMain";
		}else {
			System.out.println("로그인 실패");
			passwordError++; //비번 1회 틀림.
			int result=memberService.updatePasswordErrorNum(passwordError, memberId);  //update하기.
			String strNum=result>0?"비번에러 1회 증가":"비번에러 증가 실패";
			System.out.println("비번 에러=>" + strNum);
			
			//로그인 실패
			if(passwordError == 3){
				checkTime = nowTime + (120 * 1000); //+2분
				System.out.println("checkTime=>" + checkTime);
			}
			if(passwordError >= 3){
				request.setAttribute("msg","비밀번호를 3회이상 틀렸습니다. 5분뒤에 다시 로그인 해주세요.");
				nowTime = System.currentTimeMillis();
				System.out.println("nowTime=>" + nowTime);
				
				if(checkTime < nowTime){
					System.out.println("5분이 지났습니다.");
					passwordError = 0;
					int result1=memberService.updatePasswordErrorNum(passwordError, memberId); //update하기.//5분후 다시 초기화.
				}
			}else{
				request.setAttribute("msg","로그인실패, 아이디/패스워드를 확인하세요");
				return "/board/envMain";
			}
		}
		return null;
	}
	
	//로그아웃 구현
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, Criteria cri, Model model) {
		HttpSession session=request.getSession(false);
		model.addAttribute("list", service.tip_getList(cri));
		model.addAttribute("sayList", sayservice.say_getList(cri));
		model.addAttribute("talkList", talkservice.talk_getList(cri));
		//2. session이 있으면 삭제, 없으면 통과
		if(session!=null) {
			//세션삭하기 -> session.invalidate();
			session.invalidate();
		}
		return "/board/envMain";
	}
	
	//아이디 중복 확인
	@GetMapping("/checkDuplicateId")
	public void checkDuplicateId() {
	}
	@PostMapping("/checkDuplicateId")
	public String checkDuplicateId(HttpServletRequest request) {
		System.out.println("checkDuplicateId호출");
		//MemberVO m = memberService.login(member);
		//1.클라이언트가 전송한 값 가져오기
		String memberId=request.getParameter("memberId");
		System.out.println("memberId=> " + memberId);
		
		//DB에서 확인한 로직
		MemberVO m = memberService.checkDuplicateId(memberId);
		request.setAttribute("result", m);
		return "/member/checkDuplicateId";
	}
	
}
