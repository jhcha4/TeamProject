package com.kh.team.kys.dao;

import java.util.List;

import com.kh.team.domain.Kys_MainVo;

public interface KysMainDao {
	//게시판 소주제 리스트
	public List<Kys_MainVo> mainList() throws Exception;
	
	//소주제 항목 1개 가져오기
	public Kys_MainVo OenMain(String main_code) throws Exception;
}
