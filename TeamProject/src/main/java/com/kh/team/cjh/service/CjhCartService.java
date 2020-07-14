package com.kh.team.cjh.service;

import java.util.List;

import com.kh.team.domain.CjhCartVo;

public interface CjhCartService {

	//	장바구니 불러오기
	public List<CjhCartVo> getCart(String u_id) throws Exception;
}
