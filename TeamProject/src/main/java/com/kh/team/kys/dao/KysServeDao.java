package com.kh.team.kys.dao;

import java.util.List;

import com.kh.team.domain.Kys_ServeVo;

public interface KysServeDao {
	//게시판 소주제 리스트
	public List<Kys_ServeVo> serveList() throws Exception;
	
	//소주제 항목 1개 가져오기
	public Kys_ServeVo OenServeList(String serve_code) throws Exception;
}
