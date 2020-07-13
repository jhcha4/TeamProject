package com.kh.team.jm;

public interface JmMemberService {

	
		//로그인
		public JmMemberVo selectMemberUserIdPw(JmMemberVo vo);
		
		
		//회원 가입
		public void insertMember(JmMemberVo vo);
}
