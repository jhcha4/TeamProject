package com.kh.team.cjh.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.cjh.dao.CjhUserDao;
import com.kh.team.domain.CjhUserVo;

@Service
public class CjhUserServiceImpl implements CjhUserService {
	
	@Inject
	private CjhUserDao userDao;
	
	//	로그인
	@Override
	public boolean login(String u_id, String u_pw) throws Exception {
		CjhUserVo vo = userDao.selectMemberByIdAndPw(u_id, u_pw);
		if (vo != null) {
			return true;
		}
		return false;
	}

	@Override
	public CjhUserVo selectUser(String u_id) throws Exception {
		CjhUserVo userVo = userDao.selectUser(u_id);
		System.out.println("userVo : " + userVo);
		return userVo;
	}


	@Override
	public CjhUserVo selectMemberById(String u_id) {
		return userDao.selectMemberById(u_id);
	}

	@Override
	public void updateUser(CjhUserVo userVo) throws Exception {
		userDao.updateUser(userVo);
	}


}
