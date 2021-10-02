package org.zerock.service;

import org.zerock.domain.MemberVO;

public interface MemberService {
	//로그인
	public MemberVO login(MemberVO m);
	
	//멤버 등록
	public int insertMember(MemberVO m);
	
	//아이디 중복 확인
	public MemberVO checkDuplicateId(String memberId);
	
	//회원 정보 업데이트 (미구현)
	public int updateMember(MemberVO m);
	
	//회원 탈퇴 (미구현)
	public int deleteMember(String memberId);
	
	//회원 패스워드 변경 (미구현)
	public int updatePassword(String memberId, String newPw);
	
	//비밀번호 틀린 횟수 변경
	public int updatePasswordErrorNum(int passwordErrorNum, String memberId);
	
	//비밀번호 틀린 횟수 들고옴
	public MemberVO selectPasswordErrorNum(String memberId);
	
	public String checkAdminService(String memberName);
	
}
