package com.kh.team.jm;

import java.util.List;

import com.kh.team.domain.JmMemberVo;

public interface JmMemberService {

	
		//로그인
		public boolean selectMemberUserIdPw(String u_id ,String u_pw) throws Exception;
		
		
		//회원 가입
		public void insertMember(JmMemberVo vo) throws Exception;
		
		//관리자 페이지- 일반회원 리스트 조회
		public List<JmMemberVo> selectList() throws Exception;
		
}
