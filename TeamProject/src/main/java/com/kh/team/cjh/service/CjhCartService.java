package com.kh.team.cjh.service;

import java.util.List;

import com.kh.team.domain.CjhCartVo;
import com.kh.team.domain.LshBoardVo;

public interface CjhCartService {
	
	//	장바구니에 추가
	public void insertCart(String u_id, int p_count, LshBoardVo boardVo) throws Exception;

	//	장바구니 불러오기
	public List<CjhCartVo> getCart(String u_id) throws Exception;
	
	//	장바구니 목록 삭제
	public void deleteCart(String u_id, int c_num) throws Exception;
	
	//	장바구니 갯수 불러오기
	public int getCountCart(String u_id) throws Exception;
	
	//	장바구니 갱신
	public void updateCart(String u_id, int p_count, int c_num) throws Exception;
	
	//	주문후 장바구니 상태변경
	public void orderCartUpdate(String u_id) throws Exception;
	
	//	주문목록 불러오기
	public List<CjhCartVo> getOrder(String u_id) throws Exception;
}
