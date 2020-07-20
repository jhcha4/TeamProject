package com.kh.team.cjh.dao;

public interface CjhPointDao {
	
	//	유저의 포인트 차감
	public void usePoint(String u_id, int totalPrice) throws Exception;	
	
	//	유저의 포인트 적립
	public void getPoint(String u_id, int totalPrice) throws Exception;
	
	//	결제시 포인트 차감
	public void minusPoint(String u_id, int totalPrice) throws Exception;
	
	//	결제시 포인트 적립
	public void plusPoint(String u_id, int totalPrice) throws Exception;
	
}
