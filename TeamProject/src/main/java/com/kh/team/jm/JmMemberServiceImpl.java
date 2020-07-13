package com.kh.team.jm;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class JmMemberServiceImpl implements JmMemberService {

	@Inject
	private JmMemberDao jmMemberDao;
	
	
	@Override
	public JmMemberVo selectMemberUserIdPw(JmMemberVo vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertMember(JmMemberVo vo) {
		jmMemberDao.insertMember(vo);

	}

}
