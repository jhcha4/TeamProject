package com.kh.team.cjh.dao;

import com.kh.team.domain.CjhUserVo;

public interface CjhUserDao {

	//	내정보 불러오기
	public CjhUserVo selectUser(String u_id) throws Exception;
	
	//	로그인 
	public CjhUserVo selectMemberByIdAndPw(String u_id, String u_pw);
	
	//	로그인 아이디 확인
	public CjhUserVo selectMemberById(String u_id);
	
	//	내정보 수정
	public void updateUser(CjhUserVo userVo) throws Exception;
	
	//	장바구니 불러오기
	public void getPNum(String u_id) throws Exception;
}
