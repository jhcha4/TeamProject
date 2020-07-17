package com.kh.team.cjh.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.cjh.dao.CjhPointDao;

@Service
public class CjhPointServiceImpl implements CjhPointService {
	
	@Inject
	private CjhPointDao pointDao;

	@Override
	public void usePoint(String u_id, int totalPrice) throws Exception {
		pointDao.usePoint(u_id, totalPrice);
	}
}
