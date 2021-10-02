package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	
	private MemberMapper memberMapper;
	
	//회원 로그인
	@Override
	public MemberVO login(MemberVO m) {
		return memberMapper.login(m);
	}

	//회원가입
	@Override
	public int insertMember(MemberVO m) {
		System.out.println("insertMember.." + m.getMemberId().toString());
		return memberMapper.insertMember(m);
	}
	
	//중복아이디체크
	@Override
	public MemberVO checkDuplicateId(String memberId) {
		System.out.println("checkDuplicateId..");
		return memberMapper.checkDuplicateId(memberId);
	}
	//(미구현)
	@Override
	public int updateMember(MemberVO m) {
		System.out.println("updateMember..");
		return memberMapper.updateMember(m);
	}
	//(미구현)
	@Override
	public int deleteMember(String memberId) {
		System.out.println("deleteMember..");
		return memberMapper.deleteMember(memberId);
	}
	//(미구현)
	@Override
	public int updatePassword(String memberId, String newPw) {
		System.out.println("updatePassword..");
		return memberMapper.updatePassword(memberId, newPw);
	}
	
	//로그인 틀린 횟수 변경
	@Override
	public int updatePasswordErrorNum(int passwordErrorNum, String memberId) {
		System.out.println("updatePasswordErrorNum..");
		return memberMapper.updatePasswordErrorNum(passwordErrorNum, memberId);
	}

	//로그인 틀린 횟수 증가
	@Override
	public MemberVO selectPasswordErrorNum(String memberId) {
		System.out.println("selectPasswordErrorNum..");
		return memberMapper.selectPasswordErrorNum(memberId);
	}

	@Override
	public String checkAdminService(String memberName) {
		System.out.println("checkAdminService");
		return memberMapper.checkAdmin(memberName);
	}
}
