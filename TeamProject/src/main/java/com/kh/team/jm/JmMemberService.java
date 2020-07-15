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
		
		//관리자 페이지- 일반회원 개인별 조회
		public JmMemberVo selectByid(String u_id)throws Exception;
		
		
		//관리자 페이지- 일반회원 수정
		public void updateUser(JmMemberVo jmMemberVo)throws Exception;
		

		//관리자 페이지- 일반회원 삭제
		public void deleteUser(String u_id)throws Exception;
		
		//비밀번호찾기(이메일)
		public String selectPw(String u_id)throws Exception;
		
		
		
}
