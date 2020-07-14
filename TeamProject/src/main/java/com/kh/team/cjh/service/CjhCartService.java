package com.kh.team.cjh.service;

import java.util.List;

import com.kh.team.domain.CjhUserVo;

public interface CjhCartService {

	//	장바구니 불러오기
	public List<CjhUserVo> getCart(String u_id) throws Exception;
}
