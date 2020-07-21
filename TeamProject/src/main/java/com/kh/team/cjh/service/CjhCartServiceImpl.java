package com.kh.team.cjh.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.cjh.dao.CjhCartDao;
import com.kh.team.domain.CjhCartVo;
import com.kh.team.domain.CjhUserVo;
import com.kh.team.domain.LshBoardVo;

@Service
public class CjhCartServiceImpl implements CjhCartService {
	
	@Inject
	private CjhCartDao cartDao;
	
	@Override
	public void insertCart(String u_id, int p_count, LshBoardVo boardVo) throws Exception {
		cartDao.insertCart(u_id, p_count, boardVo);
	}

	//	장바구니 불러오기
	@Override
	public List<CjhCartVo> getCart(String u_id) throws Exception {
		List<CjhCartVo> list = cartDao.getCart(u_id);
		return list;
	}

	//	장바구니 삭제
	@Override
	public void deleteCart(String u_id, int c_num) throws Exception {
		cartDao.deleteCart(u_id, c_num);
	}
	
	//	선택된 장바구니 삭제
	@Override
	public void deleteCheckedCart(String u_id, String c_num) throws Exception {
		String[] c_nums = c_num.toString().split(",");
		for (int i=0; i<c_nums.length; i++) {
//			System.out.println("c_nums[i] : " + c_nums[i]);
		    cartDao.deleteCart(u_id, Integer.parseInt(c_nums[i]));
		}
	}

	//	장바구니 갱신
	@Override
	public void updateCart(String u_id, int p_count, int c_num) throws Exception {
		cartDao.updateCart(u_id, p_count, c_num);
	}

	//	주문시 주문목록으로 변경
	@Override
	public void orderCartUpdate(String u_id) throws Exception {
		cartDao.orderCartUpdate(u_id);
	}

	//	주문목록 불러오기
	@Override
	public List<CjhCartVo> getOrder(String u_id) throws Exception {
		return cartDao.getOrder(u_id);
	}

	//	장바구니 갯수 불러오기
	@Override
	public int getCountCart(String u_id) throws Exception {
		return cartDao.getCountCart(u_id);
	}



}
