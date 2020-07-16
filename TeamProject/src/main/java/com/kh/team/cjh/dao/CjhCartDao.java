package com.kh.team.cjh.dao;

import java.util.List;

import com.kh.team.domain.CjhCartVo;

public interface CjhCartDao {

	//	장바구니 불러오기
	public List<CjhCartVo> getCart(String u_id) throws Exception;
	
	//	장바구니 삭제
	public void deleteCart(String u_id, int p_num) throws Exception;
	
	//	장바구니 갯수 불러오기
	public int getCountCart(String u_id) throws Exception;
	
	//	장바구니 갱신
	public void updateCart(String u_id, int p_num, int p_count) throws Exception;
	
	//	장바구니 주문후 삭제
	public void orderCartDelete(String u_id) throws Exception;
	
	//	장바구니 주문후 주문목록에 추가
	public void addOrder()
}
