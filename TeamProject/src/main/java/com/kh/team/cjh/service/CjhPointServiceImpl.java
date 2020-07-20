package com.kh.team.cjh.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.cjh.dao.CjhPointDao;
import com.kh.team.cjh.dao.CjhUserDao;

@Service
public class CjhPointServiceImpl implements CjhPointService {
	
	@Inject
	private CjhPointDao pointDao;

	//	유저의 포인트 차감
	@Override
	public void usePoint(String u_id, int totalPrice) throws Exception {
		pointDao.usePoint(u_id, totalPrice);
	}

	//	유저의 포인트 적립
	@Override
	public void getPoint(String u_id, int totalPrice) throws Exception {
		pointDao.getPoint(u_id, totalPrice);
	}
	
	//	결제시 포인트 차감
	@Override
	public void minusPoint(String u_id, int totalPrice) throws Exception {
		pointDao.minusPoint(u_id, totalPrice);
	}
	
	//	결제시 포인트 적립
	@Override
	public void plusPoint(String u_id, int totalPrice) throws Exception {
		pointDao.plusPoint(u_id, totalPrice);
	}


}
