package com.kh.team.jm;

import java.util.List;

import com.kh.team.domain.JmMemberVo;
import com.kh.team.domain.JmPagingDto;
import com.kh.team.domain.JmPwEmailDto;
import com.kh.team.domain.JmReviewVo;

public interface JmMemberDao {

	
	//로그인
	public JmMemberVo selectMemberUserIdPw(String u_id , String u_pw) throws Exception;
	
	
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
	public JmPwEmailDto selectPw(String u_id)throws Exception;
	
	//아이디중복체크
	public String selectId(String u_id)throws Exception;
	
	
	
	
}
