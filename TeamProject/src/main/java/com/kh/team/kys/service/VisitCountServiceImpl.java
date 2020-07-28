package com.kh.team.kys.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.domain.KysVisitCountVo;
import com.kh.team.kys.dao.VisitCountDao;

@Service
public class VisitCountServiceImpl implements VisitCountService {
	
	@Inject
	private VisitCountDao dao;
	
	@Override
	public void insertVisitor(KysVisitCountVo vo) throws Exception {
		dao.insertVisitor(vo);
		

	}
	@Override
	public int visitNow() throws Exception {
		return dao.visitNow();
		
	}
	@Override
	public int visitAll() throws Exception {
		return dao.visitAll();
		
	}

}
