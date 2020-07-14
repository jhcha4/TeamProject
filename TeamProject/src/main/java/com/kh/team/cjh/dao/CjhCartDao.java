package com.kh.team.cjh.dao;

import java.util.List;

import com.kh.team.domain.CjhCartVo;

public interface CjhCartDao {

	//	장바구니 불러오기
	public List<CjhCartVo> getCart(String u_id) throws Exception;
}
