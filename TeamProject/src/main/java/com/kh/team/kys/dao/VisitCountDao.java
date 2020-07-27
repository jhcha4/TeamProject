package com.kh.team.kys.dao;

import com.kh.team.domain.KysVisitCountVo;

public interface VisitCountDao {
	//홈페이지 방문자
	public void insertVisitor(KysVisitCountVo vo) throws Exception;
	//오늘 방문자
	public int visitNow() throws Exception;
	//총 방문자
	public int visitAll() throws Exception;
}
