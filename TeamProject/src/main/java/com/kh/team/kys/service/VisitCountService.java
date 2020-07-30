package com.kh.team.kys.service;

import java.util.List;

import org.json.simple.JSONObject;

import com.kh.team.domain.KysVisitCountVo;

public interface VisitCountService {
	public void insertVisitor(KysVisitCountVo vo) throws Exception;
	//오늘 방문자
	public int visitNow() throws Exception;
	//총 방문자
	public int visitAll() throws Exception;
	//일별 데이터 가져오기
	public JSONObject rodChart() throws Exception;
}
