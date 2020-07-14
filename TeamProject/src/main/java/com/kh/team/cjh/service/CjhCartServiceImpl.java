package com.kh.team.cjh.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.cjh.dao.CjhCartDao;
import com.kh.team.domain.CjhCartVo;
import com.kh.team.domain.CjhUserVo;

@Service
public class CjhCartServiceImpl implements CjhCartService {
	
	@Inject
	private CjhCartDao cartDao;

	//	장바구니 불러오기
	@Override
	public List<CjhCartVo> getCart(String u_id) throws Exception {
		List<CjhCartVo> list = cartDao.getCart(u_id);
		return list;
	}

	@Override
	public void deleteCart(String u_id, int p_num) throws Exception {
		cartDao.deleteCart(u_id, p_num);
	}

}
