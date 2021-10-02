package org.zerock.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.MemberVO;


public interface MemberMapper {
	
	//로그인시 디비 사용.
	//public MemberVO login(String memberId, String pwd);
	public MemberVO login(MemberVO m);
	public MemberVO login1(String name);
	
	//멤버 등록
	public int insertMember(MemberVO m);
	
	//아이디 중복 체크
	public MemberVO checkDuplicateId(String memberId);
	
	//회원 정보 업데이트 (미구현)
	public int updateMember(MemberVO m);
	
	//회원 탈퇴 (미구현)
	public int deleteMember(String memberId);
	
	//패스워드 변경 (미구현)
	public int updatePassword(String memberId, String newPwd);
	
	//패스워드 틀렸을 때 1씩 증가
	public int updatePasswordErrorNum(@Param("passwordErrorNum")int passwordErrorNum, @Param("memberId")String memberId);
	
	//패스워드 틀린 횟수 들고 오기
	public MemberVO selectPasswordErrorNum(@RequestParam("memberId")String memberId);
	
	public String checkAdmin(String memberName);
}
