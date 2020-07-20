package com.kh.team.cjh.service;

import java.util.List;

import com.kh.team.domain.CjhPointVo;
import com.kh.team.domain.CjhUserVo;

public interface CjhUserService {
	//	로그인
	public boolean login(String u_id, String u_pw) throws Exception;
	
	//	로그인 아이디 확인
	public CjhUserVo selectMemberById(String u_id);
	
	//	내정보 불러오기
	public CjhUserVo selectUser(String u_id) throws Exception;	

	//	내정보 수정
	public void updateUser(CjhUserVo userVo) throws Exception;
	
	//	포인트 정보 불러오기
	public List<CjhPointVo> getPoint(String u_id) throws Exception;
	
	//	유저 포인트 정보 불러오기
	public int getUserPoint(String u_id) throws Exception;
	

}
