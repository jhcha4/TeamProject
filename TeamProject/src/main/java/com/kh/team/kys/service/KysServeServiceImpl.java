package com.kh.team.kys.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.domain.Kys_ServeVo;
import com.kh.team.kys.dao.KysServeDao;

@Service
public class KysServeServiceImpl implements KysServeService {
	
	@Inject
	private KysServeDao serveDao;

	@Override
	public List<Kys_ServeVo> serveList() throws Exception {
		 List<Kys_ServeVo> list = serveDao.serveList();
		return list;

	}

	@Override
	public Kys_ServeVo OenServeList(String serve_code) throws Exception {
		 return null;

	}

}
