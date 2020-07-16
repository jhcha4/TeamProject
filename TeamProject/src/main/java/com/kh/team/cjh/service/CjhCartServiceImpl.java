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

	@Override
	public void updateCart(String u_id, int p_count, int c_num) throws Exception {
		cartDao.updateCart(u_id, p_count, c_num);
	}

	@Override
	public void orderCartUpdate(String u_id) throws Exception {
		cartDao.orderCartUpdate(u_id);
	}

	@Override
	public List<CjhCartVo> getOrder(String u_id) throws Exception {
		return cartDao.getOrder(u_id);
	}
}
