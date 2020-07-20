package com.kh.team.cjh.dao;

import java.util.List;

import com.kh.team.domain.CjhPointVo;

public interface CjhPointDao {
	
	//	유저의 포인트 차감
	public void usePoint(String u_id, int totalPrice) throws Exception;	
	
	//	유저의 포인트 적립
	public void getPoint(String u_id, int totalPrice) throws Exception;
	
	//	결제시 포인트 차감
	public void minusPoint(String u_id, int totalPrice) throws Exception;
	
	//	결제시 포인트 적립
	public void plusPoint(String u_id, int totalPrice) throws Exception;
	
	//	총 적립 포인트
	public List<CjhPointVo> getTotalPoint(String u_id) throws Exception;
	
	//	총 사용 포인트
	public List<CjhPointVo> getUsePoint(String u_id) throws Exception;
	
	//	포인트 정보 불러오기
	public List<CjhPointVo> listPoint(String u_id, int pointType) throws Exception;
	
	//	유저의 포인트값 불러오기
	public int getUserPoint(String u_id) throws Exception;
}
