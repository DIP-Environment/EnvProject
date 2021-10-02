package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	//회원 정보
		private String memberId; //아이디
		private String memberName; //이름
		private String memberEmail; //이메일
		private String password; //패스워드
		private Date regDate; //가입날짜
		private Date passwordModDate; //비밀번호 변경 일자
		private int passwordErrorNum; //비밀번호 에러 횟수
		private String admin_yn;	//관리자 여부
}
