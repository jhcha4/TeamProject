package com.kh.team.cjh.dao;

import java.util.List;

import com.kh.team.domain.CjhPointVo;
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
	
	//	포인트 정보 불러오기
	public CjhPointVo getPoint(String u_id) throws Exception;
	
	//	유저의 포인트값 불러오기
	public int getUserPoint(String u_id) throws Exception;
	
}
