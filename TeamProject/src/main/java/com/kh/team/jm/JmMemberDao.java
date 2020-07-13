package com.kh.team.jm;

import com.kh.team.domain.JmMemberVo;

public interface JmMemberDao {

	
	//로그인
	public JmMemberVo selectMemberUserIdPw(String u_id , String u_pw) throws Exception;
	
	
	//회원 가입
	public void insertMember(JmMemberVo vo) throws Exception;
	
	
	
	
	
}
